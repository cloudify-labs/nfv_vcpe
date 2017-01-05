#!/bin/sh

sudo iptables -t filter -D FORWARD -m string --string "${filter_keyword}" -j REJECT --algo bm