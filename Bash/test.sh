# /bin/bash
# Unlike other programming languages, bash is a shell so it works in the context
# of a current directory. You can list files and directories in the current
# directory with the ls command:
ls # Lists the files and subdirectories contained in the current directory
echo
# This command has options that control its execution:
echo "List every file and directory on a separate line"
echo
ls -l #List every file and directory on a separate line 
echo
echo "Sort the directory contents by last-modified date (descending)"
ls -t  #Sorts the directory contents by last-modified date (descending)
echo
echo "Recursively list this directory and all of its subdirectories"
ls -R # Recursively `ls` this directory and all of its subdirectories

echo
echo "Display files with .txt extension using grep command"
ls -R |grep ".\txt"

echo
echo "Display contents in text file using cat command"
cat textFile1.txt

echo
mkdir dir1
mkdir dir2
mkdir dir3
echo "Copy files"
cp textFile1.txt copyOftextFile1.txt
mv textFile2.txt dir1/
cp dir2/ dir3/

echo
echo "Displaying total no of files and folders in the directory: " $(ls|wc -l)  

echo
echo "WHAT IS A FILE DESCRIPTOR?"
echo "when you open a file, the operating system creates an entry to represent that file and store the information about that opened file. So if there are 100 files opened in your OS then there will be 100 entries in OS (somewhere in kernel). These entries are represented by integers like (...100, 101, 102....). This entry number is the file descriptor. So it is just an integer number that uniquely represents an opened file in operating system. If your process opens 10 files then your Process table will have 10 entries for file descriptors.
Similarly when you open a network socket, it is also represented by an integer and it is called Socket Descriptor" 
echo

echo "File descriptor for helloworld:" <(echo "#helloworld")

echo "LAST 10 LINES"
tail -n 10 file.txt

echo

echo "FIRST 10 LINES"
head -n 10 file.txt

echo

echo "SORTING"
sort file.txt

echo

echo "Printing Lines that begin with My and end with sayon"
grep "^My.*sayon" file.txt


