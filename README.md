# Co-simulation-Verifier
This repository shows the scenarios which the co-simulation verifier of the Paper Verification of Co-simulation algorithms has been tested against.

The structure of the repository:
Examples: contains the Co-simulation Scenarios defined as a number of simulation units, the connections and a correct master algorithm.
Common-mistakes: contains the Co-simulation Scenarios defined as a number of simulation units, the connections and an incorrect master algorithm.

The scenarios in the these directories are translated to an Uppaal model by the scenario_verifier-assembly-*.jar (The code and build instructions for the jar can be found here: ).

The examples include:

The Generated Uppaal models are found in Uppaal_files_success and Uppaal_files_mistakes.

