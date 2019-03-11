#!/bin/bash

activechannels=$(/usr/sbin/asterisk -rvx 'core show channels' | grep 'active channels' | awk '{print $1}')

echo "Active channels: ${activechannels}"
