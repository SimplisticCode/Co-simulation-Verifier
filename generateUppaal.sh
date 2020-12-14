#!/bin/bash
#Remove foldes
rm -rf Uppall-models


JARFILE=*.jar
mkdir Uppall-models
mkdir Uppall-models/examples

for f in Scenario/examples/*.conf
do 
    OUT=./Uppall-models/examples/$(basename ${f%.*}).xml
    java -jar $JARFILE -m ${f} -o $OUT 
done

mkdir Uppall-models/should_fail
for f in Scenario/common_mistakes/*.conf
do 
    OUT=./Uppall-models/should_fail/$(basename ${f%.*}).xml
    java -jar $JARFILE -m ${f} -o $OUT 
done