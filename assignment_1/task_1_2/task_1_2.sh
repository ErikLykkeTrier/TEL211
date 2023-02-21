#!/bin/bash

#Task1

document_value_1="magician
who have lost
their magic?"

#echo -e $document_value_1

#Task2
document_value_2="Ian"

#Task3

picture_data="P1\n# A very tiny picture\n6 10\n1 0 0 0 0 1\n0 0 0 0 0 0\n0 1 0 0 1 0\n0 0 0 0 0 0\n0 0 1 1 0 0\n0 0 0 0 0 0\n0 1 0 0 1 0\n0 1 1 1 1 0\n0 0 0 0 0 0\n1 0 0 0 0 1"

#Task4, 5, 6

if (( $# > 1 )); then
	echo "Bare ett argument er tillatt"
	exit 1
elif (( $# < 1 )); then
	echo "Dette scriptet krever ett argument"
	exit 2
else
	user=$1
	mkdir -p  ${user}_directory
	cd ${user}_directory
	mkdir -p ${user}_documents ${user}_music ${user}_pictures

	cd ..

	tar -xf some_files.tar.gz
	
	cp some_files/a_music_file.wav ${user}_directory/${user}_music
	cp some_files/a_text_file.txt ${user}_directory/${user}_documents
	cp some_files/a_picture_file.png ${user}_directory/${user}_pictures


	cd ${user}_directory/${user}_documents

	cat a_text_file.txt

	touch a_very_important_file.txt
		
	echo -e  "$document_value_1" >> a_very_important_file.txt
  	echo -e "$document_value_2" >> a_very_important_file.txt
	cat a_very_important_file.txt
	

	cd ..
	cd ${user}_pictures

	touch a_very_tiny_picture.pgm 

	echo -e $picture_data >> a_very_tiny_picture.pgm

	cd ..
	cd ..

	tar -zcf "${user}_$(date '+%Y-%m-%d_%H-%M-%S%z(%Z)').tar.gz" ${user}_directory
fi



