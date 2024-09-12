#!/bin/bash

echo 0 > /sys/class/rfkill/rfkill0/state

sleep 1

echo 1 > /sys/class/rfkill/rfkill0/state

sleep 1

modprobe hci_uart

rtk_hciattach -n -s 115200 /dev/ttyS1 rtk_h5 &