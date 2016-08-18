#!/bin/bash
###############################################################################
#
# startup.sh - Passt issue an
#
# Copyright (c) 2016 Osiris 2.2.1 (Contact: info@bi-s.it)
#
# Development:
#  Jochen Platzgummer
#
# Version 1.0
#
# Changelog
#       13.05.2016: Initial version
###############################################################################

HOME=/opt/bi-s/software/scripts/startup

echo "$(cat $HOME/issue)" > /etc/issue
IP=$(ifconfig |grep "inet addr" |grep -v "127.0.0.1" | awk '{ print $2 }' | awk -F: '{ print $2 }')
echo "# Host IP address: $IP" >> /etc/issue
echo "#" >> /etc/issue
echo "#########################################" >> /etc/issue
echo "" >> /etc/issue
