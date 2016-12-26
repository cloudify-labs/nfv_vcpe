#!/bin/sh

REMOTEKEY=$(ctx download-resource "config/oib_cloudify.rsa")
SERVICE_DEF=$(ctx download-resource "config/porttun.service")

sudo cp $REMOTEKEY /root/remote.rsa
sudo chmod 600 /root/remote.rsa

sudo cp  $SERVICE_DEF /usr/lib/systemd/system/porttun.service

sudo systemctl enable porttun
sudo systemctl start porttun