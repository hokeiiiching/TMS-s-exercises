# Write a command that recursively finds all HTML files in the folder and makes a zip with them. 
# Note that the command should work even if the files have spaces 

find /path/to/folder -name "*.html" | xargs -d '\n' zip archive.zip

# find : Searches the specified directory, looking for files where its NAME ends with .html
# | : Pipe passes the output of the file command to the xargs command
# -d '\n' : Using newline character as delimiter
# zip archive.zip : zips all html files into a zip file called archive.zip, located in pwd. If archive.zip file doesn't exist yet, a new one will be created.