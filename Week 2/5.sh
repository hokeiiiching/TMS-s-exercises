# (Advanced) Write a command or script to recursively find the most recently modified file in a directory. 
# More generally, can you list all files by recency?

find /path/to/directory -type f | xargs -d "\n" ls -lt 
# ^^^ List ALL files by recency
# OR
find /path/to/directory -type f | xargs -d "\n" ls -ltr | tail -n 1
# ^^^ to find the MOST recently modified file

# -type f : Finds all FILES under the directory as typed in the previous argument
# xargs -d "\n" : Using a newline character as delimiter. Each file path is treated as a seperate argument. This of course assumes that the file paths do not contain newline characters
# ls -ltr : Lists all files with details (-l), sorted by modification time (-t), reversed such that it lists most recent at the bottom (-r)

# xargs: Command used to construct argument lists. Reads items from STDIN, delimited by blanks/newlines, and executes the specified command (after xargs) with the items as arguments
# Used when list of argument is too long for a command to handle in one go. Instead of running the command once with all the arguments, xargs runs the command multiple times with smaller set of arguments
# Here, xargs is used to RECURSIVELY find the file wanted. Without xargs, it will just list all directories/files in the pwd, without actually recursively going into each directory to search through all files