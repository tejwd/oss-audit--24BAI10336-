#!/bin/bash
# Script 4: Log File Analyzer
# Author: [Your Name] | Course: Open Source Software
# Purpose: Reads a log file and counts occurrences of a keyword

# --- Accept log file and keyword as arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# --- Check if a file argument was provided ---
if [ -z "$LOGFILE" ]; then
    echo "Usage: ./script4.sh <logfile> [keyword]"
    echo "Example: ./script4.sh test.log error"
    exit 1
fi

# --- Check if the file actually exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File '$LOGFILE' is empty."
    exit 1
fi

# --- While loop: read file line by line ---
while IFS= read -r LINE; do
    # If line contains the keyword increment counter
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print summary ---
echo "==============================="
echo "  Log File Analysis Report"
echo "==============================="
echo "File    : $LOGFILE"
echo "Keyword : '$KEYWORD'"
echo "Matches : $COUNT lines"
echo "==============================="

# --- Show last 5 matching lines ---
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5