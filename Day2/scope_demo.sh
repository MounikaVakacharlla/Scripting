#!/bin/bash
# Script: scope_demo.sh
# Purpose: Demonstrate variable scope and export

# ============================================
# GLOBAL VARIABLES
# ============================================
app_name="Scope Demo"
app_version="1.0.0"
debug_mode=false

# Export for child processes
export app_name
export app_version

# ============================================
# FUNCTIONS
# ============================================
set_colors() {
    # Local variables (only available in this function)
    local red='\033[0;31m'
    local green='\033[0;32m'
    local nc='\033[0m'
    
    # Using local variables
    echo -e "${green}Colors set successfully${nc}"
    
    # These won't be available outside
    # Need to export if needed globally
}

calculate() {
    local a=$1
    local b=$2
    local op=$3
    
    # Local result variable
    local result
    
    case $op in
        add) result=$((a + b)) ;;
        sub) result=$((a - b)) ;;
        mul) result=$((a * b)) ;;
        div) result=$(echo "scale=2; $a / $b" | bc) ;;
        *) result="Invalid" ;;
    esac
    
    echo "$result"
    # result is local, can't be accessed outside
}

update_global() {
    # Modifying global variable
    debug_mode=true
    echo "debug_mode set to $debug_mode inside function"
}

# ============================================
# CREATE CHILD SCRIPT
# ============================================
cat > /tmp/child.sh << 'EOF'
#!/bin/bash
echo "=== CHILD SCRIPT ==="
echo "I can see exported variables:"
echo "app_name = $app_name"
echo "app_version = $app_version"
echo "But not non-exported ones:"
echo "debug_mode = $debug_mode"
EOF

chmod +x /tmp/child.sh

# ============================================
# MAIN SCRIPT
# ============================================
echo "======================================"
echo "      VARIABLE SCOPE DEMO"
echo "======================================"

echo "Initial values:"
echo "app_name = $app_name"
echo "debug_mode = $debug_mode"

echo -e "\n--- Testing local variables in function ---"
set_colors

echo -e "\n--- Using function return values ---"
result=$(calculate 10 5 add)
echo "10 + 5 = $result"

result=$(calculate 10 5 div)
echo "10 / 5 = $result"

echo -e "\n--- Modifying globals in function ---"
update_global
echo "After function: debug_mode = $debug_mode"

echo -e "\n--- Running child script ---"
/tmp/child.sh

echo -e "\n--- Environment variable demo ---"
export TEMP_VAR="Temporary Value"
echo "TEMP_VAR = $TEMP_VAR"

# Start a subshell
(
    echo "Inside subshell:"
    echo "  TEMP_VAR = $TEMP_VAR"
    subshell_var="Created in subshell"
    export subshell_var
)

echo "Outside subshell:"
echo "  subshell_var = $subshell_var"  # Empty!

# Cleanup
rm /tmp/child.sh
