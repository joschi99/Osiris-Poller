#!/bin/bash
###############################################################################
#
# startup.sh - Passt issue an
#
# Copyright (c) 2016 i-Vertix NMS (info@pgum.eu)
#
# Development:
#  Jochen Platzgummer
#
# Version 1.1
#
# Changelog
#	20.08.2016: Update PGUM GmbH
#	13.05.2016: Initial version
###############################################################################

HOME=/opt/bi-s/software/scripts/startup

echo "$(cat $HOME/issue)" > /etc/issue
IP=$(ifconfig |grep "inet addr" |grep -v "127.0.0.1" | awk '{ print $2 }' | awk -F: '{ print $2 }')
echo "# Host IP address: $IP" >> /etc/issue
echo "#" >> /etc/issue
echo "#########################################" >> /etc/issue
echo "" >> /etc/issue
