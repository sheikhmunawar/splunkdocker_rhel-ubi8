#!/bin/bash

useradd -d /opt/splunk splunk
chown -R splunk:splunk /opt/splunk
cd /opt
tar xzf splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz -C /opt
/opt/splunk/bin/splunk start --accept-license --answer-yes --no-prompt --seed-passwd Pakistan
/opt/splunk/bin/splunk stop
rm -rf /opt/splunk/etc/instance.cfg
sed -i "s/^serverName.*/serverName = $(hostname)/" /opt/splunk/etc/system/local/server.conf
/opt/splunk/bin/splunk enable boot-start
