#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name] | Course: Open Source Software
# Purpose: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="Your Name Here"
SOFTWARE_CHOICE="Git"

# --- Gather system info using command substitution ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date '+%d %B %Y %H:%M')
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# --- Display the report ---
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "Kernel Version  : $KERNEL"
echo "Distribution    : $DISTRO"
echo "Logged in as    : $USER_NAME"
echo "Home Directory  : $HOME"
echo "System Uptime   : $UPTIME"
echo "Date & Time     : $DATE"
echo "================================"
echo "This system runs Linux, covered under GPL v2 license."
echo "GPL v2 ensures the OS remains free and open for everyone."
echo "============================="
