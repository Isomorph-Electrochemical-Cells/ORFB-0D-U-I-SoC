# ORFB-0D-U-I-SoC Model

The model allows to predict the cell voltage and power density of a single redox flow battery cell in terms of the applied current and state of charge of the battery.

**Features:**
* Efficient, physics-based model for the performance prediction of a single RFB cell
* Electro-osmotic drag accounts for solvent flow through the membrane
* Activation and concentration overpotentials
* Validated parameterization for the MV/TEMPTMA electrolyte system

**Model inputs:**
* Electric current density
* State of charge
* Volumetric flow rate
* Electrolyte concentrations
* Cell geometry
* Electrochemical reactions
* ...

**Main model outputs:**
* Total cell voltage
* Power density of the cell


## Getting Started
The file *ZeroDimVoltageCurrentSocModel-MV-TEMPTMA.nb* demonstrates the application of the model to an electrochemical cell using the MV/TEMPTMA system and is a good starting point to investigate the model. The main model functionalities are implemented in the file *ZeroDimVoltageCurrentSocModel.wl*.

Alternatively, the model can be executed by passing a single JSON configuration file to the function *runFromJsonString*, which in turn returns the requested model results as a JSON string. An example is provided in the Mathematica notebook *RunModelFromConfigFile.nb*.

An interactive application of the model is provided as a Mathematica CDF file, which can be opened either in Mathematica or with the free Wolfram Player (https://www.wolfram.com/player/). Note that currently not all functions of the interactive CDF application are running correctly within the Wolfram Player. Therefore we recommend to use a full Mathematica installation to run the interactive application.

## Documentation

See USER_GUIDE.md


## License

The ORFB-0D-U-I-SOC model implementation is licensed under the BSD 3-Clause License (see LICENSE.txt), except for the files contained in the CDF folder, which are licensed under the Creative Commons BY-SA Attribution-ShareAlike license (for more information, visit www.wolfram.com/cdf/adopting-cdf/licensing-options.html).

## Core developers

R. P. Schaerer, G. Mourouga

## Acknowledgements

This work is part of the SONAR project supported by the European Union / European Commission funding program Horizon 2020.
