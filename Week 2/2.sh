# Write bash functions marco and polo that do the following. Whenever you execute marco, current working directory should be saved in some manner
# When you execute polo, no matter what directory you are in, polo should cd you back to the directory where you executed marco.
# Write the code in file marco.sh and (re)load the definitions to your shell by executing source.sh

#!/bin/bash

# Function to save the current working directory to a file
marco() {
    pwd > /tmp/marco_directory.txt
    echo "Directory saved."
}

# Function to change to the directory saved by marco
polo() {
    if [ -f /tmp/marco_directory.txt ]; then
        marco_dir=$(cat /tmp/marco_directory.txt)
        cd "$marco_dir" || return
        echo "Moved to $marco_dir"
    else
        echo "Marco directory not found."
    fi
}

# pwd > : redirect current working directory to txt file, located in tmp directory
# if [ -f dir ]; : checks if the specified file exists; if it does, the code inside the if block is executed
# $(cat file) : Command substitution; executes command inside parantheses (which is displaying contents of the file, which is the dir saved), and replces the command substitution with STDOUT of command
# Hence, after this line is executed, marco_dir will hold the path of the directory that was saved earlier by marco()