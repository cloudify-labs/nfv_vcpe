#!/bin/sh

sudo iptables -t filter -D FORWARD -m string --string bush -j REJECT --algo bm