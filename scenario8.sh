#bin/bash
read -e -p "Enter location of files to delete : " LOCATION
INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
read -e -p "Enter name of file (bye to quit) : " INPUT_STRING
mv $LOCATION/$INPUT_STRING .local/share/Trash/files
echo ""
echo ""
done
