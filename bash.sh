#!/usr/bin/env bash
# Script: expert_shebang.sh
# Purpose: Demonstrate expert-level shebang knowledge
# Author: DevOps Learner
# Date: 2024

# ============================================
# SHEBANG EXPERT DEMONSTRATION
# ============================================

set -euo pipefail
IFS=$'\n\t'

# Color codes for output
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[1;33m'
readonly BLUE='\033[0;34m'
readonly NC='\033[0m' # No Color

# ============================================
# FUNCTIONS
# ============================================

print_header() {
    echo -e "${BLUE}========================================${NC}"
    echo -e "${GREEN}$1${NC}"
    echo -e "${BLUE}========================================${NC}"
}

check_shebang_limits() {
    print_header "SHEBANG LIMITATIONS"
    
    echo -e "${YELLOW}Maximum argument length:${NC} $(getconf ARG_MAX) bytes"
    echo -e "${YELLOW}Shebang line length limit:${NC} Usually 127-255 characters"
    echo -e "${YELLOW}Kernel shebang handling:${NC} First 2 bytes must be '#!'"
}

demonstrate_interpreter_chain() {
    print_header "INTERPRETER CHAIN"
    
    echo "Current interpreter: $0"
    echo "Parent process: $(ps -o comm= $PPID)"
    echo "Shell version: $BASH_VERSION"
    echo "Shell path: $(which bash)"
    
    # Create a temp Python script to show interpreter switching
    cat > /tmp/temp_pyscript << 'EOF'
#!/usr/bin/env python3
import sys
print(f"Python interpreter: {sys.executable}")
print(f"Python version: {sys.version}")
EOF
    
    chmod +x /tmp/temp_pyscript
    echo -e "\n${YELLOW}Running Python script with shebang:${NC}"
    /tmp/temp_pyscript
    rm /tmp/temp_pyscript
}

show_shebang_detection() {
    print_header "SHEBANG DETECTION"
    
    # Create different script types
    cat > /tmp/bash_script << 'EOF'
#!/bin/bash
echo "Bash script running with $$"
EOF
    
    cat > /tmp/python_script << 'EOF'
#!/usr/bin/env python3
import os
print(f"Python script running with PID {os.getpid()}")
EOF
    
    cat > /tmp/node_script << 'EOF'
#!/usr/bin/env node
console.log(`Node.js script running with PID ${process.pid}`);
EOF
    
    chmod +x /tmp/bash_script /tmp/python_script /tmp/node_script
    
    echo -e "${YELLOW}Detecting interpreters:${NC}"
    file /tmp/bash_script
    file /tmp/python_script
    file /tmp/node_script
    
    rm /tmp/bash_script /tmp/python_script /tmp/node_script
}

# ============================================
# MAIN EXECUTION
# ============================================

main() {
    print_header "SHEBANG EXPERT DEMONSTRATION"
    
    echo -e "${GREEN}✓${NC} Script started with: $0"
    echo -e "${GREEN}✓${NC} Using interpreter: $(which bash)"
    echo -e "${GREEN}✓${NC} Options set: -e -u -o pipefail"
    echo -e "${GREEN}✓${NC} IFS set to: $IFS"
    
    check_shebang_limits
    demonstrate_interpreter_chain    show_shebang_detection
    
    print_header "SUMMARY"
    echo -e "✅ Shebang: ${YELLOW}#!$(which bash)${NC}"
    echo -e "✅ Options: ${YELLOW}-e -u -o pipefail${NC}"
    echo -e "✅ Portable: ${YELLOW}Using /usr/bin/env${NC}"
    echo -e "✅ Error handling: ${YELLOW}trap set${NC}"
    
    echo -e "\n${GREEN}✓ Expert level achieved!${NC}"
}


# Run main function
main "$@"


:<< MYCOMMENT #

#!/bin/bash -euo pipefail
# Purpose: Demonstarate Production safety features


echo "==================================="
echo "SAFE SCRIPT WITH SHEBANG OPTIONS"
echo "==================================="

#set IFS to avoid word splitting issues
IFS=$'\n\t'

#function to handle errors
error_handler(){
	echo "error occured on line $1"
	exit 1
}

#Trap Errors
trap"errror_handler$LINENO' ERR
echo "script started successsfully"
# This will work
name ="Mounika"
echo "hello,$name"

#this would cause error if un commented
echo "Age:$age"

false
echo "this wont execute bcz false failed"
echo "====================="














:<< MYCOMMENT #

#!/bin/bash -euo pipefail
#Production ready combinateion
# -e:exit on failure
# -u:error in unset variables
# -o:pipefail:fail if any command ina pipe fails
#!/bin/bash -eux




:<< MYCOMMENT #

#!/bin/bash -u
# -u treats unset variables errors
echo "this will work"
echo "$name"
echo "this wont run"








:<< MYCOMMENT ##!/bin/bash -e
# -e means exit immediately if any command fails
echo "this will runi"
false # this command fails
echo "this will never run bcz -e exits on failure"



:<< MYCOMMENT #!/bin/bash -x
# -x enables a debugging mode (pritns each command before executing)

echo "this scripts runs in debug mode"
name="Mounika Vakacharlla"
echo "Hello $name"

:<< MYCOMMENT #!/usr/bin/env node
//this is node js script
#console.log("hello i am using Node.js");
MYCOMMENT
































