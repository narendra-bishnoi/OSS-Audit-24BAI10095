#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Narendra Bishnoi

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Check if installed
if command -v $PACKAGE &> /dev/null
then
    echo "$PACKAGE is installed."

    VERSION=$($PACKAGE --version)
    echo "Version Info: $VERSION"

else
    echo "$PACKAGE is NOT installed."
fi

echo "--------------------------------"

# Case statement (philosophy description)
case $PACKAGE in
    git)
        echo "Git: A distributed version control system built for collaboration and openness."
        ;;
    apache2)
        echo "Apache: A powerful open-source web server that shaped the internet."
        ;;
    mysql)
        echo "MySQL: A widely used open-source database system."
        ;;
    firefox)
        echo "Firefox: A browser focused on privacy and open web."
        ;;
    *)
        echo "No description available."
        ;;
esac
