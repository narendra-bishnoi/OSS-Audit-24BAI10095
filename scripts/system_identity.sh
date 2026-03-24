#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Narendra Bishnoi"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f2)

echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Kernel Version  : $KERNEL"
echo "User Name       : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Date & Time     : $DATE_TIME"
echo "Linux Distro    : $DISTRO"
echo "License Info    : Linux kernel is licensed under GPL v2"
echo "========================================"
