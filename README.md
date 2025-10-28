# BashRuleManager
This Bash script is a Rule Manager that manages a list of rules stored in a text file. We can add, del, and list rules from the text file, similarly acted like a database to store users in the infrastructure. The manager script determines if the file needs to be managed with the commands list, add, and del by handling command-line arguments, file operations, and case statements. This is useful for managing bandwidth rules, data policies and restrictions, and config rules that are essential for the CyberCafe project. 

# Quick Commands
    Basic Usage:
    ./rulemgr.sh {list|add|del} [RULE|LINE_NUMBER]

# Tips or Gotchas: 
 Consider | as ORing the variables in the "list".
 [] considers optional cases of arguments, depending on the command.
 {} requires either one of the arguments to be executed.

# Examples

* ./rulemgr.sh list                       # List all rules
* ./rulemgr.sh add "user1 5GB_daily"      # Add a rule
* ./rulemgr.sh del 2                      # Delete line 2

# Positional Parameters:
*  $0 = ./rulemgr.sh     Script File
*  $1 = add              COMMAND - $1
*  $2 = "myRule"         rule text - $2
*  $# = 2                Total arguments/parameters

# Common Pitfalls
Script Not Executable 
- chmod +x rulemgr.sh
Using > instead of >> 
- ">" = overwrites, ">>" = appends
Non-numeric line number
- Use only numbers for del
