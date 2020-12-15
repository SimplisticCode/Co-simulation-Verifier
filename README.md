# Co-simulation Algorithm Verifier

This repository shows the scenarios which the co-simulation verifier of the paper: ["Verification of Co-simulation Algorithms"](https://github.com/SimplisticCode/Co-simulation-Verifier/blob/master/paper.pdf) for FormaliSE 2021 has been tested against.

## The scenarios:
The scenarios are described as several simulation units, the connections, and the master algorithm. 
The scenarios are divided into two folders:

* [Examples](https://github.com/SimplisticCode/Co-simulation-Verifier/tree/master/Scenario/examples) contains a scenario and a correct master algorithm.
* [Common_mistakes](https://github.com/SimplisticCode/Co-simulation-Verifier/tree/master/Scenario/common_mistakes)  contains a scenario and an incorrect master algorithm.

A graphical presentation of the different co-simulation scenarios can be found in the [Image-folder](https://github.com/SimplisticCode/Co-simulation-Verifier/tree/master/Scenario/Images).

The scenarios include, among others:

* Various versions of Algebraic Loops
* Different Step Finding Routines
* Algorithms with an adaptive step size
* Algorithms with a fixed step size

## Generating Uppaal models from a scenario:

The scenarios in these directories are translated to the Uppaal model that can be verified using Uppal by the `scenario_verifier-assembly-*.jar`. [Code and build instructions for the jar](https://github.com/INTO-CPS-Association/Scenario-Verifier).

The translation of the examples to Uppaal can be performed using the shell script `generateUppaal.sh`.
This script requires java to be in the path. 

The Generated Uppaal models can be found in [Uppaal-models](https://github.com/SimplisticCode/Co-simulation-Verifier/tree/master/Uppall-models). This is divided into two different folders `examples` and `should_fail`.

## Running the app with logging:

App uses log4j2 for logging.
To run it, set the location of the xml configuration of the logging:
```
java -D"log4j.configurationFile=.\log4j2.xml" -jar .\scenario_verifier-assembly-0.1.jar
```
We have an example of log4j2.xml in the source directory.
