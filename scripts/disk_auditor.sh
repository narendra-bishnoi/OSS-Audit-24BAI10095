#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Narendra Bishnoi

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo " Directory Audit Report"
echo "======================================"

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "Directory: $DIR"
        echo "Permissions & Owner: $PERMS"
        echo "Size: $SIZE"
        echo "--------------------------------------"
    else
        echo "$DIR does not exist"
    fi
done

# Check Git config directory
echo "Checking Git configuration directory..."
if [ -d "$HOME/.git" ]; then
    ls -ld "$HOME/.git"
else
    echo "No .git directory found in home"
fi
