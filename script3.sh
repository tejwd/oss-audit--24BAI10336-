#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: [Your Name] | Course: Open Source Software
# Purpose: Loops through key directories and reports size and permissions

# --- List of directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "==============================="
echo "  Directory Audit Report"
echo "==============================="

# --- For loop: go through each directory one by one ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get directory size, suppress errors for restricted dirs
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "--- Git Config Directory Check ---"
# Check if git config file exists in home directory
GIT_CONFIG="$HOME/.gitconfig"
if [ -f "$GIT_CONFIG" ]; then
    echo "Git config found at: $GIT_CONFIG"
    ls -la "$GIT_CONFIG"
else
    echo "No .gitconfig found. Git has not been configured yet."
    echo "Run: git config --global user.name 'Your Name'"
fi