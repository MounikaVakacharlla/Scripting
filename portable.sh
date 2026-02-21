#!/usr/bin/env bash
# script :portabe.sh
# purpose:Demonstrate portable shebang
echo "=============================="
echo "Portable shebang demo"
echo "=============================="
echo "current bash version:$BASH_VERSION"
echo "Bash location:$(which bash)"
echo "current user:$(whoami)"
echo "working directory:$(pwd)"
echo "this script uses the portable"
echo "it will work on any system with bash in path"
echo "==============================="

