(Advanced) Write a command or script to recursively find the most recently modified file in a directory. More generally, can you list all files by recency?

find /path/to/directory -type f | xargs -d "\n" ls -ltr | tail -n 1

# E.g.
