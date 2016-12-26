#!/bin/bash

OPENVPNCONFIG=$(ctx download-resource "config/server.conf")

sudo cp $OPENVPNCONFIG /etc/openvpn/server.conf

sudo semanage port -a -t openvpn_port_t -p tcp 1111

sudo systemctl enable openvpn@server.service

sudo systemctl start openvpn@server.service