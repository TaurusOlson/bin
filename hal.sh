#!/bin/bash

# Functions
disp_help ()
{
    echo -e "---Help mode---\n"
    # todo.sh
    echo -e "t : Launches todo.sh"
    # todolist
    echo -e "tdl : Launches todolist"
    # larry.pl
    echo -e "l : Larry Wall's quotes"
    echo -e "\n---------------\n"
}

echo "----------------------------------------------------------------"
echo "Hello $USER. My name is HAL, your personal intelligent computer."

# Interactive mode
echo -e "What can I do for you?" 

while [ "$choice" != quit ]
do
    read -p ">>> " choice

    case $choice in
        h | help) disp_help;;
        s) echo "Silent mode";;
        t | todo) echo -e "todo.sh ls\n"; ~/Documents/todo_sh/todo.sh -d ~/todo.cfg ls;;
        tdl | todolist) echo -e "todolist\n"; ~/bin/todolist;;
        l | larry) echo -e "larry.pl\n"; ~/bin/larry.pl;;
        *) echo "Sorry, I don't understand.";;
    esac
done

echo "Bye, $USER."
echo "----------------------------------------------------------------"
