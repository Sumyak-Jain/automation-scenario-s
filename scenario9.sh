#bin/bash
read -e -p "Enter location where you want to put files : " LOCATION
INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
read -e -p "Enter name of file (bye to quit) : " INPUT_STRING
mv .local/share/Trash/files/$INPUT_STRING $LOCATION
echo ""
echo ""
