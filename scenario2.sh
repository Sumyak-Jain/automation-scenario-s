#/bin/bash
read -e -p "enter loc for deleting files:" loc
cd $loc
rm $(find -mtime +2  -name "*.tar")
rm $(find -mtime +2  -name "*.tar.gz")
.
