#! /usr/bin/bash

# echo COMMAND
echo hello world!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscors
NAME="imad"
echo "My Name is $NAME"
AGE=29
echo "My age is ${AGE}"

# USER INPUT
read -p "Enter your Full Name" FULLNAME
echo "Hello $FULLNAME, Welcome to bash Scripting"

# SIMPLE IF STATEMENT
LASTNAME="boudguigue"
if [ "$LASTNAME" == "boudguigue" ]; then
    echo "Keep Going imad"
fi

#  IF-ELSE
if [ "$FULLNAME" == "imad bg" ]; then
    echo "Keep Going imad"
else
    echo "Learnig more and more"
fi

# ELSE-IF (elif)

if [ "$AGE" == 29 ]; then
    echo "You steal have time to learn"
elif [ "$AGE" ] >29; then
    echo "is the same just keep learning"
else
    echo "Learnig more and more"
fi

# COMPARISON

############
# Val1 -eq Val2 Returns true if the value are equal
# Val1 -ne Val2 Returns true if the value are not equal
# Val1 -gt Val2 Returns true if Val1 greater than Val2
# Val1 -ge Val2 Returns true if Val1 greater than or equal to Val2
# Val1 -lt Val2 Returns true if Val1 is less Val2
# Val1 -ge Val2 Returns true if Val1 is lass or equal to Val2
############

NUM1=15
NUM2=9
if [ "$NUM1" -gt "$NUM2" ]; then
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi

# FILE CONDITIONS

###########
# -d    file True if the file is a directory
# -f    file True if the provided string is a file
# -g    file True if the group is a set on a file
# -r    file True if the file is readable
# -s    file True if the file has a non-zero size
# -u         true if the user, id id a st on a file
# -w         true if the file is writable
# -x         true if the file is an executable
###########

FILE="app.js"

if [ -f "$FILE" ]; then
    echo "$FILE is a file"
else
    echo "$FILE is not a file"
fi

# CASE STATEMENT

read -p "Are you 21 or over? Y/N" ANSWER
case "$ANSWER" in
[yY] | [yY][eE][sS])
    echo "You have time to learn :)"
    ;;
[nN] | [nN][oO])
    echo "is the same you steal have time to learn"
    ;;
*)
    echo "Please enter y/yes or n/no"
    ;;
esac

# SIMPLE FOR LOOP

NAMES="Brad Youssef mariam lina warda imad"
for NAME in $NAMES; do
    echo "Salam $NAME"
done

# FOR LOOP TO RENAME FILES

FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES; do
    echo "Renaming $FILE to new-$FILE"
    mv $FILE $NEW-$FILE
done

# FUNCTION
function sayHello() {
    echo "Hello World"
}
sayHello

# FUNCTION WITH PRAMS
function greet() {
    echo "hello, I am $1 and I am $2"
}
greet "imad bouguigue" "29"

#  Create README.MD
touch "readme.md"
echo "Hello world From Temara, Morocco" >>"readme.md"
echo "readme.md was Created"
