# Co-simulation Algorithm Verifier

This repository shows the scenarios which the co-simulation verifier of the paper: "Verification of Co-simulation Algorithms" for FormaliSE 2021 has been tested against.

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

## Encode a scenario:

A co-simulation sceario should be encoded in the conf-format in order for the Verifier to parse and verify it!
The scenario include the FMUs and the connections.

An example of the encoding in the conf-format for a scenario:
![alt text](https://github.com/SimplisticCode/Co-simulation-Verifier/blob/master/Scenario/Images/scenario-generation.jpg "Scenario and Encoding")

In the scenario an initialization procedure and co-simulation step procedure is also included.

### Initialization Procedure:

### Co-simulation Step Procedure:

## Generating Uppaal models from a scenario:

The scenarios in these directories are translated to the Uppaal model that can be verified using Uppal by the `scenario_verifier-assembly-*.jar`. [Code and build instructions for the jar](https://github.com/INTO-CPS-Association/Scenario-Verifier).

The translation of the examples to Uppaal can be performed using the shell script `generateUppaal.sh`.
This script requires java to be in the path. 

The Generated Uppaal models can be found in [Uppaal-models](https://github.com/SimplisticCode/Co-simulation-Verifier/tree/master/Uppall-models). This is divided into two different folders `examples` and `should_fail`.

A single scenario can generated using:
```
java -jar scenario_verifier-assembly-*.jar -m ScenarioFile.conf -o OutputUppaalFile.xml
```

## Testing the Uppaal model:

The Uppaal model can be automatically verified using Uppaal using the  the shell script `generate_verify.sh`.

In order to successfully run the verification the `verifyTA` executable of UPPAAL should be added in the system environment.

A single scenario can generated and verified using:
```
java -D"log4j.configurationFile=.\log4j2.xml" -jar scenario_verifier-assembly-*.jar -m ScenarioFile.conf -o OutputUppaalFile.xml --verify 
```

## Running the app with logging:

App uses log4j2 for logging.
To run it, set the location of the xml configuration of the logging:
```
java -D"log4j.configurationFile=.\log4j2.xml" -jar .\scenario_verifier-assembly-0.1.jar
```
We have an example of log4j2.xml in the source directory.
