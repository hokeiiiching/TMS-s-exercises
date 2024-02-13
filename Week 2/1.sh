# write a ls command that lists files in the following manner: 
# - Includes all files, including hidden files
# - Sizes are listed in human readable format (e.g. 454M instead of 454279954)
# - Files are ordered by recency
# - Output is colorized

ls -lha --color=auto --sort==time

# -l : long listing format, shows detailed info about each file (perms, number of links, owner, group, size, timestamp)
# -h : makes file size human-readable
# -a : includes hidden files (names that start with a dot '.')
# --sort=time : sort by modification time, showing the most recently modified first
# --color=auto : colourises the output, making it easier to distinguish between diff tyupes of files (dir, files, executables)

