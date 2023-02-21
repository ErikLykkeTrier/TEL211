#!/bin/bash

#Task1
user='linus_torvalds'

#Task2
mkdir "$user"

#Task3
user2="_2"
cp -R "$user" "$user$user2"

#Task4

cd "$user$user2"

#Task5

touch "file_1" "file_a" "dangervirus"

#Task6

ls

#Task7

ls -d *file*

#Task8

mv dangervirus .dangervirus

#Task9

ls

#Task10
ls -a

#Task11

echo "Have a nice day $user"
