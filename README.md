# ORFB-0D-U-I-SoC Model
The model allows to predict the cell voltage and power density of a single redox flow battery cell in terms of the applied current and state of charge of the battery.

**Features:**
* Efficient, physics-based model for the performance prediction of a single RFB cell
* Electro-osmotic drag accounts for solvent flow through the membrane
* Activation and concentration overpotentials
* Validated parameterization for the MV/TMATEMPO electrolyte system

**Main model inputs:**
* Electric current density
* State of charge
* Volumetric flow rate
* Initial electrolyte concentrations
* Cell geometry

**Main model outputs:**
* Total cell voltage
* Power of the cell


## Getting Started
The file ZeroDimVoltageCurrentSocModel-MV-TMATEMPO.nb demonstrates the application of the model to an electrochemical cell with the MV/TMATEMPO system and is a good starting point to investigate the model. The main model functionalities are implemented in the file ZeroDimVoltageCurrentSocModel.wl.

An interactive application of the model is provided as a Mathematica CDF file, which can be opened either in Mathematica or with the free Wolfram Player (https://www.wolfram.com/player/).

### Core developers:
R. P. Schaerer, G. Mourouga

### Acknowledgements: This work is part of the SONAR project supported by the European Union / European Commission funding program Horizon 2020. 
