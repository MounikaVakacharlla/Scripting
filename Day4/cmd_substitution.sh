
#command substitution is a bash feature that lets you take the output of a command and use it as text some where else.
#command substitution = "Run this command, then paste its result here"


# Without command substitution
echo "The date is: date"
# Output: The date is: date  (just prints the word "date")

# With command substitution
echo "The date is: $(date)"
# Output: The date is: Mon Jan 15 10:30:45 EST 2024
#
#
# What you type:
echo "Today is $(date +%A)"

# What bash does:
# 1. Runs: date +%A  → gets "Monday"
# 2. Replaces $(date +%A) with "Monday"
# 3. Runs: echo "Today is Monday"


