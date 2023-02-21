#!/bin/bash


#!/usr/bin/bash

# path to the file
file_path=$1
file_name=$2
# using wc command to count number of lines
number_of_lines=`wc --lines < $file_path`

# using wc command to count number of words
number_of_words=`wc --word < $file_path`

# using wc command to count number of characters
number_of_chars=`wc --chars < $file_path`


# Displaying number of lines and number of words
echo "Number of lines: $number_of_lines"
echo "Number of words: $number_of_words"
echo "The file $file_name contains $number_of_chars characters, $number_of_words words and $number_of_lines lines"





 
