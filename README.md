# Co-simulation-Verifier

This repository shows the scenarios which the co-simulation verifier of the Paper Verification of Co-simulation algorithms has been tested against.

The scenarios are described as several simulation units, the connections and the master algorithm of the scenario. 
The scenarios are divided into two folders:

* [Examples](https://github.com/SimplisticCode/Co-simulation-Verifier/tree/master/examples) contains a scenario and a correct master algorithm.
* [Common_mistakes](https://github.com/SimplisticCode/Co-simulation-Verifier/tree/master/common_mistakes)  contains a scenario and an incorrect master algorithm.

The scenarios in these directories are translated to Uppaal model that can be verified using Uppall by the `scenario_verifier-assembly-*.jar`. [Code and build instructions for the jar](https://github.com/INTO-CPS-Association/Scenario-Verifier).

The translation of the examples to Uppaal can be performed using the shell script `generateUppaal.sh`.

The examples include among others:

* Various versions of Algebraic Loops
* Different Step Finding Routines

The Generated Uppaal models can be found in [Uppaal_files_success](https://github.com/SimplisticCode/Co-simulation-Verifier/tree/master/uppall_files_success) and [Uppaal_files_mistakes](https://github.com/SimplisticCode/Co-simulation-Verifier/tree/master/uppall_files_mistakes).

