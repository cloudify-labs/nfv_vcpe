#!/bin/sh

sudo iptables -t filter -I FORWARD -m string --string bush -j REJECT --algo bm