#include "can_hal.h"
#include "IfxCan_Can.h"
#include "IfxPort.h"
#include "Bsp.h"

static IfxCan_Can       g_can_module;
static IfxCan_Can_Node  g_can_node;
static IfxCan_Message   g_rx_msg;
static IfxCan_Message   g_tx_msg;

bool can_hal_init(uint32_t bitrate)
{
    // CAN module init
    IfxCan_Can_Config canConfig;
    IfxCan_Can_initModuleConfig(&canConfig, &MODULE_CAN0);
    IfxCan_Can_initModule(&g_can_module, &canConfig);

    // TLE9251V transceiver STB pin -> LOW (Normal mode)
    // SENIN KARTINA GORE DEGISTIR
    IfxPort_setPinModeOutput(&MODULE_P20, 6, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinLow(&MODULE_P20, 6);

    // Node configuration
    IfxCan_Can_NodeConfig nodeConfig;
    IfxCan_Can_initNodeConfig(&nodeConfig, &g_can_module);

    nodeConfig.nodeId = IfxCan_NodeId_0;
    nodeConfig.frame.type = IfxCan_FrameType_transmitAndReceive;
    nodeConfig.frame.mode = IfxCan_FrameMode_standard;  // Classic CAN

    // Bit timing
    nodeConfig.calculateBitTimingValues = TRUE;
    nodeConfig.baudRate.baudrate = bitrate;        // 500000
    nodeConfig.baudRate.samplePoint = 8000;        // 80%
    nodeConfig.baudRate.syncJumpWidth = 3;

    // TX config: 1 dedicated buffer
    nodeConfig.txConfig.txMode = IfxCan_TxMode_dedicatedBuffers;
    nodeConfig.txConfig.dedicatedTxBuffersNumber = 1;
    nodeConfig.txConfig.txBufferDataFieldSize = IfxCan_DataFieldSize_8;
    nodeConfig.txConfig.txEventFifoSize = 0;

    // RX config: FIFO0, accept all
    nodeConfig.rxConfig.rxMode = IfxCan_RxMode_fifo0;
    nodeConfig.rxConfig.rxFifo0Size = 16;
    nodeConfig.rxConfig.rxFifo0DataFieldSize = IfxCan_DataFieldSize_8;
    nodeConfig.rxConfig.rxFifo0OperatingMode = IfxCan_RxFifoMode_blocking;

    // Filter: Accept all
    nodeConfig.filterConfig.messageIdLength = IfxCan_MessageIdLength_both;
    nodeConfig.filterConfig.standardListSize = 0;
    nodeConfig.filterConfig.extendedListSize = 0;
    nodeConfig.filterConfig.standardFilterForNonMatchingFrames = IfxCan_NonMatchingFrame_acceptToRxFifo0;
    nodeConfig.filterConfig.extendedFilterForNonMatchingFrames = IfxCan_NonMatchingFrame_acceptToRxFifo0;

    // CAN pins - SENIN KARTINA GORE DEGISTIR
    static const IfxCan_Can_Pins pins = {
        .txPin     = &IfxCan_TXD00_P20_8_OUT,
        .txPinMode = IfxPort_OutputMode_pushPull,
        .rxPin     = &IfxCan_RXD00B_P20_7_IN,
        .rxPinMode = IfxPort_InputMode_pullUp,
        .padDriver = IfxPort_PadDriver_cmosAutomotiveSpeed2
    };
    nodeConfig.pins = &pins;

    IfxCan_Can_initNode(&g_can_node, &nodeConfig);

    // Init message structures
    IfxCan_Can_initMessage(&g_rx_msg);
    g_rx_msg.readFromRxFifo0 = TRUE;
    g_rx_msg.dataLengthCode = IfxCan_DataLengthCode_8;

    IfxCan_Can_initMessage(&g_tx_msg);
    g_tx_msg.dataLengthCode = IfxCan_DataLengthCode_8;

    return true;
}

bool can_hal_receive(CanFrame *frame, uint32_t timeout_ms)
{
    uint32_t elapsed_ms = 0;

    while (elapsed_ms < timeout_ms) {
        if (IfxCan_Node_getRxFifo0FillLevel(g_can_node.node) > 0) {
            uint32_t rxData[2];

            // DÖNÜŞ DEĞERİNİ ATAMA YAPMADAN ÇAĞIR
            IfxCan_Can_readMessage(&g_can_node, &g_rx_msg, rxData);

            // Mesaj alanlarını doldur
            frame->id  = g_rx_msg.messageId;
            // IDE/RTR’ı ID’den türetmek yerine mesaj modundan al
            frame->ide = (g_rx_msg.messageIdLength == IfxCan_MessageIdLength_extended) ? 1 : 0;
            frame->rtr = g_rx_msg.remoteTransmitRequest ? 1 : 0;


            // DLC: klasik CAN ise 0..8; istersen uzunluğa çevir
            // frame->dlc = IfxCan_Dlc_toLength(g_rx_msg.dataLengthCode);  // fonksiyon varsa
            frame->dlc = g_rx_msg.dataLengthCode; // çoğu örnekte 8 ile eşleşir

            // Veri kopyası
            frame->data[0] = (rxData[0] >> 0)  & 0xFF;
            frame->data[1] = (rxData[0] >> 8)  & 0xFF;
            frame->data[2] = (rxData[0] >> 16) & 0xFF;
            frame->data[3] = (rxData[0] >> 24) & 0xFF;
            frame->data[4] = (rxData[1] >> 0)  & 0xFF;
            frame->data[5] = (rxData[1] >> 8)  & 0xFF;
            frame->data[6] = (rxData[1] >> 16) & 0xFF;
            frame->data[7] = (rxData[1] >> 24) & 0xFF;

            return true;
        }

        wait(1);      // 1 ms
        elapsed_ms++; // timeout takibi
    }

    return false; // Timeout
}


bool can_hal_transmit(const CanFrame *frame, uint32_t timeout_ms)
{
    g_tx_msg.messageId = frame->id;
    g_tx_msg.dataLengthCode = frame->dlc;

    uint32_t txData[2];
    txData[0] = (frame->data[3] << 24) | (frame->data[2] << 16) |
                (frame->data[1] << 8)  | frame->data[0];
    txData[1] = (frame->data[7] << 24) | (frame->data[6] << 16) |
                (frame->data[5] << 8)  | frame->data[4];

    uint32_t elapsed_ms = 0;

    while(elapsed_ms < timeout_ms) {
        IfxCan_Status status = IfxCan_Can_sendMessage(&g_can_node, &g_tx_msg, txData);

        if(status == IfxCan_Status_ok) {
            return true;
        }

        wait(1); // 1ms wait
        elapsed_ms++;
    }

    return false;
}
