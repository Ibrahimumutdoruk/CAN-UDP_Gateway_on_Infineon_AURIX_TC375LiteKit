#include "udp_bridge.h"
#include "lwip/udp.h"
#include "lwip/ip_addr.h"
#include "lwip/inet.h"
#include <string.h>
#include <stdio.h>   // <- EKLE

static struct udp_pcb *g_udp_pcb = NULL;
static ip_addr_t g_dest_addr;
static void (*g_rx_callback)(const CanUdpFrame *frame) = NULL;

// UDP receive callback
static void udp_rx_handler(void *arg, struct udp_pcb *pcb, struct pbuf *p,
                          const ip_addr_t *addr, u16_t port)
{
    (void)arg;
    (void)pcb;
    (void)addr;
    (void)port;

    if(!p) return;

    if(p->len >= sizeof(CanUdpFrame) && g_rx_callback) {
        CanUdpFrame frame;
        memcpy(&frame, p->payload, sizeof(CanUdpFrame));
        g_rx_callback(&frame);
    }

    pbuf_free(p);
}

bool udp_bridge_init_sender(const char *dest_ip, uint16_t dest_port)
{
    g_udp_pcb = udp_new();
    if(!g_udp_pcb) return false;

    // Parse destination IP
    uint8_t ip[4];
    sscanf(dest_ip, "%hhu.%hhu.%hhu.%hhu", &ip[0], &ip[1], &ip[2], &ip[3]);
    IP_ADDR4(&g_dest_addr, ip[0], ip[1], ip[2], ip[3]);

    udp_connect(g_udp_pcb, &g_dest_addr, dest_port);

    return true;
}

bool udp_bridge_init_receiver(uint16_t local_port)
{
    g_udp_pcb = udp_new();
    if(!g_udp_pcb) return false;

    err_t err = udp_bind(g_udp_pcb, IP_ADDR_ANY, local_port);
    if(err != ERR_OK) return false;

    udp_recv(g_udp_pcb, udp_rx_handler, NULL);

    return true;
}

void udp_bridge_send(const CanUdpFrame *frame)
{
    if(!g_udp_pcb) return;

    struct pbuf *p = pbuf_alloc(PBUF_TRANSPORT, sizeof(CanUdpFrame), PBUF_RAM);
    if(!p) return;

    memcpy(p->payload, frame, sizeof(CanUdpFrame));
    udp_send(g_udp_pcb, p);
    pbuf_free(p);
}

void udp_bridge_set_rx_callback(void (*callback)(const CanUdpFrame *frame))
{
    g_rx_callback = callback;
}
