#!/bin/bash
#Remove foldes
rm -rf Uppall-models


JARFILE=*.jar
mkdir Uppall-models
mkdir Uppall-models/examples

for f in Scenario/examples/*.conf
do 
    OUT=./Uppall-models/examples/$(basename ${f%.*}).xml
    java -D"log4j.configurationFile=./log4j2.xml"  -jar $JARFILE -m ${f} -o $OUT --verify 
done

mkdir Uppall-models/should_fail
for f in Scenario/common_mistakes/*.conf
do 
    OUT=./Uppall-models/should_fail/$(basename ${f%.*}).xml
    java -D"log4j.configurationFile=./log4j2.xml" -jar $JARFILE -m ${f} -o $OUT
done