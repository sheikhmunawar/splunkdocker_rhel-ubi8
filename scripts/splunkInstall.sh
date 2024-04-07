#!/bin/bash



/opt/splunkforwarder/bin/splunk start --accept-license --answer-yes --no-prompt --seed-passwd Pakistan

delete
rm -rf /opt/splunk/etc/instance.cfg
sed -i "s/^serverName.*/serverName = $(hostname)/" /opt/splunk/etc/system/local/server.conf
