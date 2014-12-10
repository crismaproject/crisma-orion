#!/bin/bash
#
# Run all needed for contextBroker

# be sure that there is the logfile needed for tail (last cmd)
touch /var/log/contextBroker/contextBroker.log
chown orion:orion /var/log/contextBroker/contextBroker.log

service rsyslog start
service crond start
service mongod start
service contextBroker start

tail -f /var/log/contextBroker/contextBroker.log
