#!/bin/bash

# Get uptime in format: Xd Xh Xm
boot_time=$(sysctl -n kern.boottime | awk '{print $4}' | sed 's/,//g')
current_time=$(date +%s)
uptime_seconds=$((current_time - boot_time))

days=$((uptime_seconds / 86400))
hours=$(((uptime_seconds % 86400) / 3600))
minutes=$(((uptime_seconds % 3600) / 60))

if [ $days -gt 0 ]; then
    echo "${days}d ${hours}h ${minutes}m"
else
    echo "${hours}h ${minutes}m"
fi
