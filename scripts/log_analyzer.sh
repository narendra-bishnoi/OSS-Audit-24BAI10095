#!/bin/bash
# Script 4: Log File Analyzer
# Author: Narendra Bishnoi

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "======================================"
echo " Log File Analyzer"
echo "======================================"

# Check file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Count keyword occurrences
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo "--------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
