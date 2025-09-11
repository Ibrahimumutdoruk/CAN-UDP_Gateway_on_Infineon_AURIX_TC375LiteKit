#ifndef UDP_BRIDGE_H
#define UDP_BRIDGE_H

#include <stdbool.h>
#include "bridge_common.h"

bool udp_bridge_init_sender(const char *dest_ip, uint16_t dest_port);
bool udp_bridge_init_receiver(uint16_t local_port);
void udp_bridge_send(const CanUdpFrame *frame);
void udp_bridge_set_rx_callback(void (*callback)(const CanUdpFrame *frame));

#endif
