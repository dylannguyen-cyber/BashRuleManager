#!/bin/bash         #To compile with the Bash Terminal

# Rule Manager Script 
# This is a Bash Rule Manager script for the user story task: As a Bash Learner, 
# I will learn bash scripting for command-line argument parsing, case statements, and file manipulation by creating a simple rule manager. 
# This will be essential for the CyberCafe project because we will need a manager to manage config. files and obtain daemon behavior.

# cmd: ./rulemgr.sh add "myRule"
# Positional Parameters: 
# $0 = ./rulemgr.sh     Script File
# $1 = add              COMMAND - $1
# $2 = "myRule"         rule text - $2
# $# = 2                Total arguments/parameters

DB_FILE = "/tmp/rules.db"

# usage() function is the main function to display:
# - Script name and basic format usage
# - Advise the user list, add, del commands
# - Exit with code 1 -> "end of program"

usage() {
    # TODO: main usage() implementation
    echo "Bash Rule Manager: $0 {list|add|del} [RULE|LINE_NUMBER]"                      
    echo " List                 - Display all rules with line numbers in the file"
    echo " add RULE             - append the RULE at the LINE_NUMBER"
    echo " del LINE_NUMBER      - Delete rule at the LINE_NUMBER"
    exit 1
}
# Tip or Gotcha: 
# Consider | as ORing the variables in the "list".
# [] considers optional cases of arguments, depending on the command.
# {} requires either one of the arguments to be executed.

# Check if the /tmp/rules.db exists using command "touch"
# Handle errors with print statements
initdb() {
    # Check if the infrastructure exists, if not we will instantiate it.
    # Touch has 2 cases: 
    # It can create an empty file if the file doesn't exist
    # It can update the access and status of a file in current time.

    if [[ ! -f "$DB_FILE" ]]; then
        touch "$DB_FILE"
    fi
}

# Main Script Logic 
# Consider Case Handling for List, Add, and Del

# Check if # of arguments are required 
# else, recall usage()

# Store ($1) first argument in COMMAND

case "$COMMAND" in 
list) 
# we will use 'nl' to display line numbers
# List all rules on the list
# we will use conditional flags -s and -v for checking if file exists and the line number associated with the text

initdb
if [[  -s "$DB_FILE" ]]; then
    echo "-----RULES DATABASE-----"
    nl -v 1 "$DB_FILE"
else 
    echo "ERROR: No rules found in database."
fi
;;

add)
# TODO: check if text ($2) exists
# else, error print and recall usage() 
# call initdb() and append $2 to /tmp/rules.db by using '>>'
# Print a success message to show approval
;;

del)
# TODO: check if text ($2) exists
# else, error print and recall usage() 
# Store the text ($2) in a line number variable
# Validate if it is an integer 
# else, error print and recall usage()
# call initdb()
# check if line number exists in file 
# else, print error and exit 1
# We will use sed -i to delete lines of the file
# Then, print a success message to show approval

*)

# TODO: Handle any other errors for any unknown commands and recall usage()
;;
esac