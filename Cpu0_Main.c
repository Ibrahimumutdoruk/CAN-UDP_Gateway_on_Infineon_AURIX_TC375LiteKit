#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include "IfxStm.h"
#include "IfxGeth_Eth.h"
#include "Ifx_Lwip.h"
#include "lwip/netif.h"
#include "lwip/ip_addr.h"
#include "lwip/inet.h"
#include "lwip/def.h"
#include "bridge_common.h"
#include "can_hal.h"
#include "udp_bridge.h"
#include "Configuration.h"
#include "ConfigurationIsr.h"
#include <string.h>

// IFX_INTERRUPT makrosu için gerekli include
#include "Ifx_Types.h"
#include "IfxCpu_Irq.h"

IfxCpu_syncEvent g_cpuSyncEvent = 0;

// Set static IP
static void set_static_ip(void)
{
    struct netif *netif = Ifx_Lwip_getNetIf();
    ip_addr_t ip, mask, gw;

    IP_ADDR4(&ip, 192, 168, 10, 10);    // Kart A IP
    IP_ADDR4(&mask, 255, 255, 255, 0);
    IP_ADDR4(&gw, 192, 168, 10, 1);

    netif_set_addr(netif, &ip, &mask, &gw);
    netif_set_up(netif);
}

// ISR for lwIP timer (1ms)
IFX_INTERRUPT(updateLwIPStackISR, 0, ISR_PRIORITY_OS_TICK)
{
    IfxStm_increaseCompare(&MODULE_STM0, IfxStm_Comparator_0, IFX_CFG_STM_TICKS_PER_MS);
    g_TickCount_1ms++;
    Ifx_Lwip_onTimerTick();
}

void core0_main(void)
{
    IfxCpu_enableInterrupts();

    // Disable watchdogs
    IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
    IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());

    // CPU sync
    IfxCpu_emitEvent(&g_cpuSyncEvent);
    IfxCpu_waitEvent(&g_cpuSyncEvent, 1);

    // STM timer for lwIP (1ms tick)
    IfxStm_CompareConfig stmConfig;
    IfxStm_initCompareConfig(&stmConfig);
    stmConfig.triggerPriority = ISR_PRIORITY_OS_TICK;
    stmConfig.comparatorInterrupt = IfxStm_ComparatorInterrupt_ir0;
    stmConfig.ticks = IFX_CFG_STM_TICKS_PER_MS * 10;
    stmConfig.typeOfService = IfxSrc_Tos_cpu0;
    IfxStm_initCompare(&MODULE_STM0, &stmConfig);

    // Enable GETH module
    IfxGeth_enableModule(&MODULE_GETH);

    // Init lwIP with MAC address
    eth_addr_t ethAddr;
    MAC_ADDR(&ethAddr, 0x02, 0xA1, 0x37, 0x5A, 0x00, 0x10);  // Kart A MAC
    Ifx_Lwip_init(ethAddr);

    // Set static IP
    set_static_ip();

    // Init CAN
    can_hal_init(500000);  // 500 kbit/s

    // Init UDP sender
    udp_bridge_init_sender(KART_B_IP_ADDR, BRIDGE_UDP_PORT);

    // Main loop: CAN RX -> UDP TX
    while(1) {
        // Poll lwIP
        Ifx_Lwip_pollTimerFlags();
        Ifx_Lwip_pollReceiveFlags();

        // Check for CAN messages
        CanFrame can_frame;
        if(can_hal_receive(&can_frame, 10)) {  // 10ms timeout
            // Convert to UDP frame
            CanUdpFrame udp_frame;
            udp_frame.id_be = lwip_htonl(can_frame.id);
            udp_frame.ide = can_frame.ide;
            udp_frame.rtr = can_frame.rtr;
            udp_frame.dlc = can_frame.dlc;
            udp_frame.reserved = 0;
            memcpy(udp_frame.data, can_frame.data, 8);

            // Send over UDP
            udp_bridge_send(&udp_frame);
        }
    }
}

