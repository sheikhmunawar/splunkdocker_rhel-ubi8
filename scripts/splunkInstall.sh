#!/bin/bash

delete
rm -rf /opt/splunk/etc/instance.cfg
sed -i "s/^serverName.*/serverName = $(hostname)/" /opt/splunk/etc/system/local/server.conf
