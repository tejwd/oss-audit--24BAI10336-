#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: [Your Name] | Course: Open Source Software
# Purpose: Checks if git is installed and describes its philosophy

# --- Define the package to inspect ---
PACKAGE="git"

# --- Check if git is installed using which command ---
if which $PACKAGE &>/dev/null; then
    echo "✓ $PACKAGE is installed on this system."
    echo ""
    # Display version information
    echo "Version Info:"
    git --version
    echo ""
    # Display installation path
    echo "Installed at: $(which $PACKAGE)"
else
    echo "✗ $PACKAGE is NOT installed."
    echo "Install it with: sudo apt install git"
fi

# --- Case statement: print philosophy note based on package name ---
echo ""
echo "--- Open Source Philosophy Note ---"
case $PACKAGE in
    git)
        echo "Git: Born from frustration with proprietary tools."
        echo "Linus Torvalds built it in 10 days when BitKeeper revoked its free license."
        echo "Today it powers virtually all software development on Earth."
        ;;
    apache2)
        echo "Apache: The web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: Open source at the heart of millions of applications."
        ;;
    vlc)
        echo "VLC: Built by students in Paris, plays anything, shares everything."
        ;;
    *)
        echo "$PACKAGE: Another piece of software keeping the open source world running."
        ;;
esac