#!/bin/sh

sudo snap connect script-exporter:hardware-observe
sudo snap connect script-exporter:mount-observe
sudo snap connect script-exporter:network-bind
sudo snap connect script-exporter:network-observe
sudo snap connect script-exporter:config-file
sudo snap connect script-exporter:telemetry
sudo snap connect script-exporter:system-observe
sudo snap connect script-exporter:time-control