#!/bin/bash
echo "Use yaml config file for alertmanager..."

monitor_config=~/workspace/monitoring_config

mv $monitor_config/alertmanager.conf $monitor_config/alertmanager.conf.backup
curl -o $monitor_config/alertmanager.conf https://raw.githubusercontent.com/JakimLi/docker-workshop-m5-pathc/master/alertmanager.conf.yml

mv $monitor_config/workshop_alerting.rules $monitor_config/workshop_alerting.rules.backup
curl -o $monitor_config/workshop_alerting.rules https://raw.githubusercontent.com/JakimLi/docker-workshop-m5-pathc/master/workshop_alerting.rules
