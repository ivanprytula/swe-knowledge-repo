#!/bin/sh

# First line of the script is the shebang which tells the system how to execute


# $ echo '#!/bin/sh' > bash_cheatsheet.sh
# $ echo 'echo Hello World' >> bash_cheatsheet.sh

#Make sure to provide execution permission with the following command:
# chmod u=+x bash_cheatsheet.sh
# chmod u+rx bash_cheatsheet.sh

: '
bash is sh, but with more features and better syntax.
 Bash is “Bourne Again SHell”, and is an improvement of the sh (original Bourne shell).
 Shell scripting is scripting in any shell, whereas Bash scripting is scripting specifically for Bash.
'
# If you're using GNU/Linux, /bin/sh is normally a symbolic link to bash (or, more recently, dash).

: '
echo: Prints text to the screen.
    read: Reads input from the user.
    cd: Changes the current directory.
    pwd: Prints the current directory.
    ls: Lists the contents of a directory.
    mkdir: Creates a new directory.
    rm: Removes files or directories.
    cp: Copies files or directories.
    mv: Moves or renames files or directories.
    cat: Concatenates and displays files.
    grep: Searches for text within files.
    find: Searches for files or directories.
    man: Displays the manual page for a command.
'

# Task 1: Echo
# 2 parameters, or arguments - the first is "Hello"; the second is "World".
echo Hello World    # This is a comment

# 1 argument - the string "Hello    World".
echo "Hel\\lo    \"World"

# 3 args
echo Hello "     " World
echo "Hello "*" World"


# Task 2: Taking user input
echo "Enter your name: "
# read name
echo "Hello, $name"

echo "Enter your SUPER name: "
# read MY_NAME
echo "Hello $MY_NAME - hope you're well."
echo "I will create you a file called ${MY_NAME}_file"
touch "${MY_NAME}_file.txt"

# Task  3: Variables
variable1="Hello"
variable2="Bash"

# Task  4: Using Variables
greeting="$variable1, $variable2!"
echo "$greeting Welcome to the world of Bash scripting!"

MY_MESSAGE="Hello World"
echo $MY_MESSAGE

# Task  5: Using Built-in Variables, commands
echo "My current bash path - $BASH"
echo "Bash version I am using - $BASH_VERSION"
echo "PID of bash I am running - $$"
echo "My home directory - $HOME"
echo "Where am I currently? - $PWD"
echo "My hostname - $HOSTNAME"
echo -en "What is your name [ `whoami` ] "

: '
Set of variables: $0 .. $9 and $#.
  The variable $0 is the basename of the program as it was called.
  $1 .. $9 are the first 9 additional parameters the script was called with.
  $# is the number of parameters the script was called with
The variable $@ is all parameters $1 .. whatever.
The variable $*, is similar, but does not preserve any whitespace, and quoting, so "File with spaces" becomes "File" "with" "spaces". This is similar to the echo.
  As a general rule, use $@ and avoid $*.
The $$ variable is the PID (Process IDentifier) of the currently running shell.
The $! variable is the PID of the last run background process. This is useful to keep track of the process as it gets on with its job.
$? expands to the exit status of the most recently executed foreground pipeline. In simpler terms, it's the exit status of the last command.
IFS. This is the Internal Field Separator. The default value is SPACE TAB NEWLINE.
'

# Task  6: Wildcards
echo "Files with .md extension in the current directory:"
ls *.md

# Task 7: Taking input from arguments
# You can run this script with two arguments like this: ./script.sh arg1 arg2
arg1=$1
arg2=$2
echo "Argument 1: $arg1"
echo "Argument 2: $arg2"

# Task 8: Compares two numbers, strings
# if SPACE [ SPACE "$foo" SPACE = SPACE "bar" SPACE ]
num1=5
num2=10

if [ $num1 -gt $num2 ]
then
    echo "$num1 is greater than $num2"
else
    echo "$num1 is not greater than $num2"
fi

foo=foo
if [ "$foo" = "foo" ]
then
    echo "nice!"
fi

#if [ ... ]; then
#  echo "Something"
#  elif [ something_else ]; then
#     echo "Something else"
#  else
#     echo "None of the above"
#fi

# Task 9: write a "for" loop example
for i in 1 2 3 4 5
do
    echo $i
    echo "Looping ... number $i"
done

for i in hello 1 * 2 goodbye
do
  echo "Looping ... i is set to $i"
done

# Task 10: write a "while" loop example
i=1
while [ $i -le 7 ]
do
    echo $i
    i=$((i+1))
done

INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
  echo "Please type something in (bye to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done

# Task 11: write a "case" example
echo "Please talk to me ..."
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	hello)
		echo "Hello yourself!"
		;;
	bye)
		echo "See you again!"
		break
		;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac
done
echo
echo "That's all folks!"

# Task 12: Functions
# Basically, there is no scoping, other than the parameters ($1, $2, $@, etc).
# Functions can be recursive

myfunc()
{
  echo "I was called as : $@"
  x=2
}
### Main script starts here
echo "Script was called with $@"
x=1
echo "x is $x"
myfunc 1 2 3
echo "x is $x"

: '
$ scope.sh a b c
Script was called with a b c
x is 1
I was called as : 1 2 3
x is 2
'

factorial()
{
  if [ "$1" -gt "1" ]; then
    i=`expr $1 - 1`
    j=`factorial $i`
    k=`expr $1 \* $j`
    echo $k
  else
    echo 1
  fi
}
