# Write a bash script that runs a script until it fails and captures its STDOUT and STDERR and prints everything at the end 
# bonus points if you can also report how many runs it took for the script to fail

# vvv Note that this is not a comment; it is the shebang line! 

#!/bin/bash

# Initialize a counter
counter=0

# Loop to run the command until it fails
while true; do
    # Increment the counter
    ((counter++))

    # Run the script and capture output
    if ! /path/to/your/script.sh >output.txt 2>error.txt; then
        # If the script fails, break out of the loop
        echo "The script failed on attempt $counter."
        break
    fi
done

# Print the output and error
echo "Standard Output:"
cat output.txt

echo "Standard Error:"
cat error.txt

# if ! : checks if the last command (which is the script being ran) exited with a non-zero status. If it did, the if block is executed
# > and >2 operators : Used to REDIRECT STDOUT to "output.txt" and STDERR to "error.txt" respectively
# cat : display in terminal

# Note: ensure script is executable. If it is not, do the following command in the terminal: 
# chmod +x script.sh

