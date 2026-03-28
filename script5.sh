#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: [Your Name] | Course: Open Source Software
# Purpose: Asks 3 questions and generates a personal open source philosophy statement

echo "==============================="
echo "  Open Source Manifesto Generator"
echo "==============================="
echo "Answer three questions to generate your manifesto."
echo ""

# --- Read user input interactively ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date and username ---
DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)
OUTPUT="manifesto_${AUTHOR}.txt"

# --- Write manifesto to file using > and >> ---
echo "===============================" > "$OUTPUT"
echo "  My Open Source Manifesto" >> "$OUTPUT"
echo "  By: $AUTHOR | Date: $DATE" >> "$OUTPUT"
echo "===============================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day, I rely on $TOOL — a tool built not for profit, but for people." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM." >> "$OUTPUT"
echo "Software that is locked away cannot be questioned, improved, or trusted." >> "$OUTPUT"
echo "Open source gives everyone the right to look inside and build something better." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "One day, I want to build $BUILD and share it freely with the world." >> "$OUTPUT"
echo "Because the greatest software was never hoarded — it was given away." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "This is my commitment to the open source philosophy." >> "$OUTPUT"
echo "===============================" >> "$OUTPUT"

# alias concept demonstrated:
# alias showmanifesto='cat manifesto_$(whoami).txt'

echo ""
echo "✓ Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"