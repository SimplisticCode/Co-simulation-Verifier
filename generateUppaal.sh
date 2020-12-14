#!/bin/bash
#Remove foldes
rm -rf uppall_files_success
rm -rf uppall_files_mistakes


JARFILE=*.jar

mkdir uppall_files_success
for f in examples/*.conf
do 
    OUT=./uppall_files_success/$(basename ${f%.*}).xml
    java -jar $JARFILE -m ${f} -o $OUT 
done

mkdir uppall_files_mistakes
for f in common_mistakes/*.conf
do 
    OUT=./uppall_files_mistakes/$(basename ${f%.*}).xml
    java -jar $JARFILE -m ${f} -o $OUT 
done