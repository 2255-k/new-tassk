#!/bin/bash
################
#author:kishan
#date:08-05-2026
#version:v1
#######################
#this script is to monitor display services, CPU usage, memory usage, disk storage of ec2 instance
#######################################
#this code displays all running services
echo "======================================="
echo "      SYSTEM MONITORING REPORT"
echo "======================================="

echo ""
echo "🖥️ Running Services"
echo "---------------------------------------"
systemctl list-units --type=service --state=running | head -10

echo ""
echo "⚡ CPU Usage"
echo "---------------------------------------"
top -bn1 | grep "Cpu"

echo ""
echo "🧠 Memory Usage"
echo "---------------------------------------"
free -h

echo ""
echo "💾 Disk Usage"
echo "---------------------------------------"
df -h

echo ""
echo "⏰ System Uptime"
echo "---------------------------------------"
uptime

echo ""
echo "======================================="
echo "       REPORT COMPLETED"
echo "======================================="
