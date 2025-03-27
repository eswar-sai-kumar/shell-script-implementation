#!/bin/bash
echo "===== System Health Monitor ====="
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 "%"}')
RAM_USAGE=$(free -h | awk '/Mem:/ {print "RAM Usage: " $3 "/" $2}')
DISK_USAGE=$(df -h / | awk 'NR==2 {print "Disk Usage: " $3 "/" $2 " (" $5 " used)"}')
echo "$CPU_USAGE"
echo "$RAM_USAGE"
echo "$DISK_USAGE"
