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
    exit 1
}

# Check if the /tmp/rules.db exists using command "touch"
# Handle errors with print statements
initdb() {
    # TODO: check if tmp/rules.db exists
    exit 1
}

# Main Script Logic 
# Consider Case Handling for List, Add, and Del

# Check if # of arguments are required 
# else, recall usage()

# Store ($1) first argument in COMMAND

case "$COMMAND" in 
list) 
# TODO: call initdb(), check if file has content. 
# we will use 'nl' to display line numbers
# else, error print
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