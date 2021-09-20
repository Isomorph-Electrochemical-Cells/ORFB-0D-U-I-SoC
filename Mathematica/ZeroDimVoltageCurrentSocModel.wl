(* ::Package:: *)

(* ::Title:: *)
(*0D-Voltage-Current-Soc Model*)


(* ::Text:: *)
(*Author : Roman P. Schaerer, 2020-2021*)


(* ::Input::Initialization:: *)
BeginPackage["ZeroDimVoltageCurrentSocModel`"];


(* ::Section:: *)
(*Usages*)


(* ::Input::Initialization:: *)
initModel::usage = "initModel initializes the model and has to be called before any model evaluation can be performed. When called as initModel[] without arguments, the default model parameters are used. The default parameters can be overwritten by providing a list of rules to initModel, e.g. initModel[{elLength->0.01,flowRate-> 20}] sets the electrode length in the through-plane direction to 0.01 m and the flow rate to 20 ml/s. Parameters that are not passed to initModel are (re-)initialized to their default values.";

setModelParams::usage = "setModelParams allows setting one or multiple parameter values, without overriding other option values with their default values, e.g. setModelParams[{flowRate->24,ohmicCellResistance->0.5}] sets a new flow rate and ohmic cell resistance value.";

getModelParamsAssoc::usage = "getModelParamsAssoc returns all model parameters as an association. The value of a specific parameter can be easily extracted, e.g. getModelParamsAssoc[flowRate] returns the value of the parameter flowRate";
getModelParamsRules::usage = "getModelParamsRules returns all model parameters as a list of rules.";


(* ::Input::Initialization:: *)
cellVoltage::usage = "cellVoltage evaluates the total cell voltage for a given state-of-charge and electric current. Example: cellVoltage[0.4,-0.1] yields the cell voltage at SoC=0.4 and a discharging el. current of -0.1 A";

cellVoltageDerivativeFD::usage = "Evaluate cell voltage based on a finite difference approximation. Example: cellVoltageDerivativeFD[T, 0.2, 0.6] evaluates the derivative with respect to the variable T at SoC=0.2 and current=0.6 A";

cellVoltageNernst::usage = "cellVoltageNernst yields the open circuit potential predicted by the Nernst law.";
cellVoltageOcv::usage = "cellVoltageOcv evaluates the open circuit potential including the membrane potential for a given state-of-charge. Example: cellVoltage[0.9] yields the OCV at SoC=0.9.";
cellVoltageOcvAndBv::usage = "cellVoltageOcvAndBv evaluates the cell voltage of the open circuit potential minus the activation and concentration overpotentials at a given state-of-charge and electric current. Example: cellVoltageOcvAndBv[0.1,0.5] yields the voltage at SoC=0.1 and a charging el. current of 0.5 A";

\[Eta]Bv::usage = "Total (activation + concentration) overpotential [V]";
\[Eta]BvND::usage = "Nondimensional total (activation + concentration) overpotential";
\[Eta]Ohmic::usage = "Ohmic losses [V]";

limElCurrentCharging::usage = "limElCurrentCharging yields the limiting electric (charging) current at a specified SoC, e.g. limElCurrentCharging[0.7] yields the limiting electric current (in Ampere) at SoC=0.7";
limElCurrentDischarging::usage = "limElCurrentDischarging yields the limiting electric (discharging) current at a specified SoC, e.g. limElCurrentDischarging[0.5] yields the limiting electric current (in Ampere) at SoC=0.5";
limElCurrent::usage = "limElCurrent yields the limiting electric current at a specified SoC, e.g. limElCurrent[0.3,I] yields the limiting charging electric current (in Ampere) at SoC=0.3 if I>0, else the limiting discharging current is returned";


(* ::Input::Initialization:: *)
zOxPos::usage = "Charge number of oxidized form of electro-active ion involved in the electrochemical reaction within the positive electrode";
zRedPos::usage = "Charge number of reduzed form of electro-active ion involved in the electrochemical reaction within the positive electrode";
zOxNeg::usage = "Charge number of oxidized form of electro-active ion involved in the electrochemical reaction within the negative electrode";
zRedNeg::usage = "Charge number of reduzed form of electro-active ion involved in the electrochemical reaction within the negative electrode";
zExchangedIon::usage = "Charge number of the ion that is exchanged through the membrane (assuming perfect permselectivity)";
zSuppElectrolyteIon::usage = "Let us consider a supporting electrolyte salt that dissociates according to M -> z_a A + z_b B, where B is the exchanged ion through the perm-selective membrane. Then the variable chargeNumberSupportingElectrolyteIon is the charge number of the electrolyte species A. Example: In the 4-HO-TEMPO/MV system, NaCl is used as a supporting electrolyte. Since in this system chloride ions are exchanged through the membrane we have chargeNumberSupportingElectrolyteIon = z_{Na} = 1.";
\[Nu]RedPos::usage = "Stoichiometric coefficient of reduced species in the positive electrode";
\[Nu]OxPos::usage = "Stoichiometric coefficient of oxidized species in the positive electrode";
\[Nu]RedNeg::usage = "Stoichiometric coefficient of reduced species in the negative electrode";
\[Nu]OxNeg::usage = "Stoichiometric coefficient of oxidized species in the negative electrode";
nElPos::usage = "Number of electrons transferred in the electrochemical reaction within the positive electrode";
nElNeg::usage = "Number of electrons transferred in the electrochemical reaction within the negative electrode";
\[Nu]ExchangedIonNeg::usage = "Stoichiometric coefficient of the exchanged ion species in the negative electrode";
\[Nu]ExchangedIonPos::usage = "Stoichiometric coefficient of the exchanged ion species in the positive electrode";
cSuppElectrolyteIonNeg::usage = "Molar concentration of the supporting electrolyte that contributes to the concentration of the exchanged ion in the negolyte";
cSuppElectrolyteIonPos::usage = "Molar concentration of the supporting electrolyte that contributes to the concentration of the exchanged ion in the posolyte";
T::usage = "Constant temperature of the system [K]";
cOxNegSoc0::usage = "Initial molar concentration of oxidizes species in negolyte (at SoC=0) [mol/l]";
cRedNegSoc0::usage = "Initial molar concentration of reduced species in negolyte (at SoC=0) [mol/l]";
cOxPosSoc0::usage = "Initial molar concentration of oxidized species in posolyte (at SoC=0) [mol/l]";
cRedPosSoc0::usage = "Initial molar concentration of reduzed species in posolyte (at SoC=0) [mol/l]";
electrolyteVolSoc0::usage = "Initial electrolyte volume per half-cell [l]";
elLength::usage = "Thickness of electrode compartment in the through-plane direction [m]";
elWidth::usage = "Width of electrode compartment in the in-plane direction orthogonal to the convective flow direction [m]";
elHeight::usage = "Height of electrode compartment in the in-plane direction along the convective flow direction [m]";
specElectrodeSurfArea::usage = "Specific surface area of the electrodes [m^-1]";
flowRate::usage = "Volumetric flow rate [\!\(\*SuperscriptBox[\(m\), \(3\)]\)/s]";
ohmicCellResistance::usage = "Total ohmic cell resistance [V/A]";
eNeg0::usage = "Standard half-cell potential for MV [V]";
ePos0::usage = "Standard half-cell potential for TMATEMPO [V]";
kneg::usage = "Reaction constant at negative electrode [m/s]";
kpos::usage = "Reaction constant at positive electrode [m/s]";
\[Kappa]s::usage = "Transported solvent molecules per transferred ion";
massTransferCoeff1::usage = "Coefficient in the empirical mass transfer model \!\(\*SubscriptBox[\(k\), \(m\)]\)=(massTransferCoeff1*\!\(\*SuperscriptBox[\(v\), \(massTransferCoeff2\)]\)).";
massTransferCoeff2::usage = "Coefficient in the empirical mass transfer model \!\(\*SubscriptBox[\(k\), \(m\)]\)=(massTransferCoeff1*\!\(\*SuperscriptBox[\(v\), \(massTransferCoeff2\)]\)).";


(* ::Input::Initialization:: *)
plotElectroActiveSpeciesMoles::usage = "plotElectroActiveSpeciesMoles returns a plot showing the number of moles of electro-active species in the posolyte and negolyte vs SoC";
plotElectroActiveSpeciesMoleFractions::usage = "plotElectroActiveSpeciesMoleFractions returns a plot showing the mole fractions of the electro-active species in the posolyte and negolyte vs SoC";
plotElectroActiveSpeciesMolalities::usage = "plotElectroActiveSpeciesMolalities returns a plot showing the molalities of the electro-active species in the posolyte and negolyte vs SoC";
plotElectroActiveSpeciesMolarities::usage = "plotElectroActiveSpeciesMolarities returns a plot showing the molar concentrations of the electro-active species in the posolyte and negolyte vs SoC";
plotElectroActiveSpeciesMolarConcentrations::usage = "plotElectroActiveSpeciesMolarConcentrations returns a plot showing the molar concentrations of the electro-active species in the posolyte and negolyte vs SoC";
plotCellVoltageVsElCurrentDensity::usage = "plotCellVoltageVsElCurrentDensity returns a plot showing the total cell voltage vs the electric current density for the specified SoC values, e.g. plotCellVoltageVsElCurrentDensity[{lstSoc\[Rule] {0.2,0.3,0.4}}] shows 3 graphs corresponding to the cell voltage at the SoC values 0.2, 0.3 and 0.4";
plotCellPowerDensityVsElCurrentDensity::usage = "plotCellVoltageVsElCurrentDensity returns a plot showing the power density vs the electric current density for the specified SoC values analogous to plotCellVoltageVsElCurrentDensity";
plotVoltageLossesVsElCurrentDensity::usage = "plotVoltageLossesVsElCurrentDensity returns a plot showing the voltage losses vs the electric current density";
plotCellVoltageVsSoc::usage = "plotCellVoltageVsSoc returns a plot showing the cell voltage vs the SoC";
plotCellPowerDensityVsSoc::usage = "plotCellPowerDensityVsSoc returns a plot showing the power density vs the SoC";
plotCellVoltageVsSocAndCurrentDensity::usage = "plotCellVoltageVsSocAndCurrentDensity generates a contour plot showing the cell voltage vs the SoC and el. current density";
plotCellPowerDensityVsSocAndCurrentDensity::usage = "plotCellPowerDensityVsSocAndCurrentDensity generates a contour plot showing the cell power density vs the SoC and el. current density";
plotMaximumPowerDensity::usage = "plotMaximumPowerDensity returns a plot showing the maximum power density vs the SoC";
plotLimitingElCurrentDensity::usage = "plotLimitingElCurrentDensity returns a plot showing both the limiting charging and discharging currents vs the SoC";
plotCellPerformanceForDifferentFlowRates::usage = "plotCellPerformanceForDifferentFlowRates returns a list of plots: the first plot shows the cell voltage vs the SoC, whereas the second plot shows the power density vs the SoC; the flow rates can be specified with the options lstFlowRates, e.g. plotCellPerformanceForDifferentFlowRates[{soc\[Rule] 0.5,lstFlowRates\[Rule] {16,32}] yields the polarization plots at SoC=0.5 and the flow rates 16 ml/min and 32 ml/min";
plotElectrolyteVolume::usage = "plotElectrolyteVolume returns a plot showing the electrolyte volume of the negolyte and posolyte vs the SoC";
plot3DCellPowerDensityVsSocAndCurrentDensity::usage = "Generate 3D plot of the power density vs SoC and current density";
plotVoltageEfficiency::usage = "plotVoltageEfficiency generates a plot showing the voltage efficiency vs the electric current density";


(* ::Input::Initialization:: *)
cRedNeg::usage = "Molar concentration of the reduced species in the negolyte in [mol/m^3].";
cOxNeg::usage = "Molar concentration of the oxidized species in the negolyte in [mol/m^3].";
cRedPos::usage = "Molar concentration of the reduced species in the posolyte in [mol/m^3].";
cOxPos::usage = "Molar concentration of the oxidized species in the posolyte in [mol/m^3].";
cRedND::usage = "Dimensionless molar concentration of the reduced species. Example: cRedND[SoC, idPos] yields the concentration of the reduced species in the posolyte.";
cOxND::usage = "Dimensionless molar concentration of the oxidized species. Example: cOxND[SoC, idNeg] yields the concentration of the oxidized species in the negolyte.";
cRedAvgND::usage = "Arithmetic average of molar concentration of reduced species between the inflow and outflow boundaries. E.g., cRedAvgND[soc, elCurrentDensityND, domId] yields the molar concentration for the dimensionless geometric el. current in the half-cell specified by domId";
cOxAvgND::usage = "Arithmetic average of molar concentration of oxidized species between the inflow and outflow boundaries. E.g., cRedAvgND[soc, elCurrentDensityND, domId] yields the molar concentration for the dimensionless geometric el. current in the half-cell specified by domId";


(* ::Input::Initialization:: *)
molarMassSolvent::usage = "Molar mass of solvent species";
molarMassOxNeg::usage = "Molar mass of oxidized salt (e.g. methyl-viologen dichloride \!\(\*SubscriptBox[\(MVCl\), \(2\)]\)) in the negative half-cell";
molarMassRedNeg::usage = "Molar mass of reduced salt (e.g. methyl-viologen chloride MVCl) in the negative half-cell";
molarMassOxPos::usage = "Molar mass of oxidized salt (e.g. TMATEMPO dichloride \!\(\*SubscriptBox[\(TCl\), \(2\)]\)) in the positive half-cell";
molarMassRedPos::usage = "Molar mass of reduzed salt (e.g. TMATEMPO chloride TCl) in the positive half-cell";
molarMassSupportingElectrolyte::usage = "Molar mass of supporting electrolyte salt (e.g. NaCl) in either of the half-cells";
partialMolarVolSolvent::usage = "Molar volume of solvent species";
partialMolarVolOxNeg::usage = "Molar volume of oxidized salt in the negative half-cell";
partialMolarVolRedNeg::usage = "Molar volume of the reduzed salt in the negative half-cell";
partialMolarVolOxPos::usage = "Molar volume of the oxidized salt in the positive half-cell";
partialMolarVolRedPos::usage = "Molar volume of the reduced salt in the negative half-cell";
partialMolarVolSupportingElectrolyteNeg::usage = "Molar volume of the supporting electrolyte in the negative half-cell";
partialMolarVolSupportingElectrolytePos::usage = "Molar volume of the supporting electrolyte in the positive half-cell"
membranePotential::usage = "Specification of membrane potential (model). The setting \"thermodynamics\" evaluates the membrane potential based on a thermodynamic model. Alternatively, the membrane potential can be set to a constant value.";


(* ::Input::Initialization:: *)
idPos::usage="Identifier of the positive half-cell or posolyte.";
idNeg::usage="Identifier of the negative half-cell or negolyte.";


(* ::Input::Initialization:: *)
v0::usage="Characteristic superficial velocity";
c0::usage="Characteristic molar concentration";
\[Rho]0::usage="Characteristic mass density";
b0::usage="Characteristic molal concentration";
\[Eta]0::usage="Characteristic overpotential";
i0::usage="Characteristic electric current density";
I0::usage="Characteristic electric current";
d0::usage="Characteristic diffusion coefficient";
L0::usage="Characteristic macroscopic length scale";
l0::usage="Characteristic pore-scale length scale";
k0::usage="Characteristic reaction constant";
km0::usage="Characteristic mass-transfer rate";


(* ::Input::Initialization:: *)
elHeightND::usage="Dimensionless height";
elWidthND::usage="Dimensionless width";
elLengthND::usage="Dimensionless length of the porous electrode in the through-plane direction";

voltageEfficiency::usage="voltageEfficiency evaluates the voltage efficiency, which is defined as the ratio of the average discharging voltage and the average charging voltage over a charge/discharge cycle at a constant current, e.g. voltageEfficiency[current,lowCutoffVoltage,highCutoffVoltage] returns the voltage efficiency at the specified current, where the charging proceeds until the highCutoffVoltage is reached and similarly the discharging half-cycle stops at the lower cutoff voltage. Note that the sign of the input variable current is ignored.";

\[CapitalLambda]cFun::usage="Dimensionless parameter quantifying the relative species concentration variations between the inflow and outflow boundary relative to the arithmetic mean concentration.";

runFromJsonFile::usage="Run model from a JSON configuration file, e.g. runFromJsonFile[~/my_config.json] executes the model with the configurations set in my_config.json";
runFromJsonString::usage="Run model from a JSON string, e.g. runFromJsonString[my_json_string] executes the model with the corresponding configurations";
initModelFromJsonString::usage="Initialize model parameters from JSON string";
checkModel::usage="The function checkModel[] performs several consistency checks. In case of any error an assert is triggered.";


(* ::Section:: *)
(*Implementation*)


(* ::Input::Initialization:: *)
Begin["`Private`"];


(* ::Input::Initialization:: *)
(*Set physical constants*)
R=8.314;(*Ideal gas constant*)
F=96485;(*Faraday constant*)
f=F/(R modelParams[T]);(*inverse thermal voltage [V^-1]*)
fInv=(R modelParams[T])/F;(*thermal voltage [V]*)

(*Set program constants*)
idNeg=1;
idPos=2;


(* ::Input:: *)
(*Number of moles and molar volumes to molar concentrations*)


(* ::Input::Initialization:: *)
volNeg[soc_]:=nSolventNeg[soc]*modelParams[partialMolarVolSolvent]+nRedNeg[soc]*modelParams[partialMolarVolRedNeg]+nOxNeg[soc]*modelParams[partialMolarVolOxNeg];(*[m^3]*)
volPos[soc_]:=nSolventPos[soc]*modelParams[partialMolarVolSolvent]+nRedPos[soc]*modelParams[partialMolarVolRedPos]+nOxPos[soc]*modelParams[partialMolarVolOxPos];(*[m^3]*)

cRedNeg[soc_]:=nRedNeg[soc]/volNeg[soc];(*[mol/m^3]*)
cOxNeg[soc_]:=nOxNeg[soc]/volNeg[soc];(*[mol/m^3]*)
cRedPos[soc_]:=nRedPos[soc]/volPos[soc];(*[mol/m^3]*)
cOxPos[soc_]:=nOxPos[soc]/volPos[soc];(*[mol/m^3]*)



(* ::Input::Initialization:: *)
nRedNeg[soc_]:=nRedNegSoc0-(nOxNeg[soc]-nOxNegSoc0);(*[mol]*)
nOxNeg[soc_]:=nOxNegSoc0+soc(nOxNegSoc1-nOxNegSoc0);(*[mol]*)
nOxPos[soc_]:=nOxPosSoc0-(nRedPos[soc]-nRedPosSoc0);(*[mol]*)
nRedPos[soc_]:=nRedPosSoc0+soc(nRedPosSoc1-nRedPosSoc0);(*[mol]*)
nSolventNeg[soc_]:=nSolventNegSoc0+modelParams[\[Kappa]s]*(nRedPos[soc]-nRedPosSoc0);(*[mol]*)
nSolventPos[soc_]:=nSolventPosSoc0-modelParams[\[Kappa]s]*(nRedPos[soc]-nRedPosSoc0);(*[mol]*)



(* ::Input::Initialization:: *)
bRedNeg[soc_]:=nRedNeg[soc]/(nSolventNeg[soc]*modelParams[molarMassSolvent]);(*molality [mol/kg]*)
bOxNeg[soc_]:=nOxNeg[soc]/(nSolventNeg[soc]*modelParams[molarMassSolvent]);(*molality [mol/kg]*)
bOxPos[soc_]:=nOxPos[soc]/(nSolventPos[soc]*modelParams[molarMassSolvent]);(*molality [mol/kg]*)
bRedPos[soc_]:=nRedPos[soc]/(nSolventPos[soc]*modelParams[molarMassSolvent]);(*molality [mol/kg]*)

bRedNegND[soc_]:=bRedNeg[soc]/b0;(*[-]*)
bOxNegND[soc_]:=bOxNeg[soc]/b0;(*[-]*)
bOxPosND[soc_]:=bOxPos[soc]/b0;(*[-]*)
bRedPosND[soc_]:=bRedPos[soc]/b0;(*[-]*)

bRed[soc_,domId_]:=If[domId==idNeg, nRedNeg[soc]/(nSolventNeg[soc]*modelParams[molarMassSolvent]),nRedPos[soc]/(nSolventPos[soc]*modelParams[molarMassSolvent])];(*molality [mol/kg]*)
bOx[soc_,domId_]:=If[domId==idNeg, nOxNeg[soc]/(nSolventNeg[soc]*modelParams[molarMassSolvent]), nOxPos[soc]/(nSolventPos[soc]*modelParams[molarMassSolvent])];(*molality [mol/kg]*)

bRedND[soc_,domId_]:=If[domId==idNeg,bRedNeg[soc]/b0,bRedPos[soc]/b0];(*[-]*)
bOxND[soc_,domId_]:=If[domId==idNeg,bOxNeg[soc]/b0,bOxPos[soc]/b0];(*[-]*)

cRedND[soc_,domId_]:=If[domId==idNeg,cRedNeg[soc]/c0,cRedPos[soc]/c0];(*[-]*)
cOxND[soc_,domId_]:=If[domId==idNeg,cOxNeg[soc]/c0,cOxPos[soc]/c0];(*[-]*)

cRedAvgND[soc_,elCurrentDensityND_,domId_]:=cRedND[soc,domId]-1/2*(\[Nu]Red elCurrentDensityND*specElectrodeSurfAreaND*elHeightND*L0/l0)/(superficialVelocityND);(*[-]*)
cOxAvgND[soc_,elCurrentDensityND_,domId_]:=cOxND[soc,domId]-1/2*(\[Nu]Ox elCurrentDensityND*specElectrodeSurfAreaND*elHeightND*L0/l0)/(superficialVelocityND);(*[-]*)

cRedOutND[soc_,elCurrentDensityND_,domId_]:=cRedND[soc,domId]-(\[Nu]Red elCurrentDensityND*specElectrodeSurfAreaND*elHeightND*L0/l0)/(superficialVelocityND);(*[-]*)
cOxOutND[soc_,elCurrentDensityND_,domId_]:=cOxND[soc,domId]-(\[Nu]Ox elCurrentDensityND*specElectrodeSurfAreaND*elHeightND*L0/l0)/(superficialVelocityND);(*[-]*)



(* ::Subsection:: *)
(*Battery Voltage Model*)


(* ::Input::Initialization:: *)
eNeg0FormalND[soc_] :=f modelParams[eNeg0];
ePos0FormalND[soc_] :=f modelParams[ePos0];

eNernstNegND[soc_, elCurrentDensityND_] :=
  Module[{cRedNegND = cRedAvgND[soc, elCurrentDensityND, idNeg], cOxNegND = cOxAvgND[soc, elCurrentDensityND, idNeg]},
    eNeg0FormalND[soc] + (-1 / modelParams[nElNeg]) Log[((cRedNegND)^modelParams[\[Nu]RedNeg] (cOxNegND)^modelParams[\[Nu]OxNeg]) / (-modelParams[zExchangedIon])^modelParams[\[Nu]ExchangedIonNeg] (modelParams[zRedNeg] cRedNegND + modelParams[zOxNeg] cOxNegND + modelParams[zSuppElectrolyteIon] * modelParams[cSuppElectrolyteIonNeg])^modelParams[\[Nu]ExchangedIonNeg]]
  ];

eNernstPosND[soc_, elCurrentDensityND_] :=
  Module[{cRedPosND = cRedAvgND[soc, elCurrentDensityND, idPos], cOxPosND = cOxAvgND[soc, elCurrentDensityND, idPos]},
    ePos0FormalND[soc] + (-1 / modelParams[nElPos]) Log[((cRedPosND)^modelParams[\[Nu]RedPos] (cOxPosND)^modelParams[\[Nu]OxPos]) / (-modelParams[zExchangedIon])^modelParams[\[Nu]ExchangedIonPos] (modelParams[zRedPos] cRedPosND + modelParams[zOxPos] cOxPosND + modelParams[zSuppElectrolyteIon] * modelParams[cSuppElectrolyteIonPos])^modelParams[\[Nu]ExchangedIonNeg]]
  ];

eMembraneND[soc_, elCurrentDensityND_] :=
  If[modelParams[membranePotential] == "thermodynamics",
    1 / modelParams[zExchangedIon] Log[(modelParams[zRedNeg] * cRedAvgND[soc, -elCurrentDensityND, idNeg] + modelParams[zOxNeg] * cOxAvgND[soc, -elCurrentDensityND, idNeg] + modelParams[zSuppElectrolyteIon] * modelParams[cSuppElectrolyteIonNeg]) / (modelParams[zRedPos] * cRedAvgND[soc, elCurrentDensityND, idPos] + modelParams[zOxPos] * cOxAvgND[soc, elCurrentDensityND, idPos] + modelParams[zSuppElectrolyteIon] * modelParams[cSuppElectrolyteIonPos])]
    ,
    modelParams[membranePotential] * f
  ];


(* ::Input::Initialization:: *)
\[Eta]Bv[soc_, elCurrent_, domId_] :=
  \[Eta]BvND[soc, elCurrent / I0, domId] \[Eta]0;
\[Eta]Bv[soc_, elCurrent_] :=
  \[Eta]Bv[soc, elCurrent, idPos] - \[Eta]Bv[soc, elCurrent, idNeg];
\[Eta]Ohmic[soc_, elCurrent_] :=
  elCurrent * modelParams[ohmicCellResistance];

cellVoltageNernst[soc_] :=
  fInv (eNernstPosND[soc, 0.0] - eNernstNegND[soc, 0.0]);
cellVoltageOcv[soc_] :=
  cellVoltageOcv[soc, 0];
cellVoltageOcv[soc_, elCurrent_] :=
  Module[{},
    If[Abs[elCurrent] < Abs[limElCurrent[soc, elCurrent]],
      fInv cellVoltageOcvND[soc, elCurrent / (modelParams[specElectrodeSurfArea] * (electrodeVol) * (i0))]
      ,
      Sign[elCurrent] * 10^10
    ]
  ];
cellVoltageOcvND[soc_, elCurrentDensityND_] :=
  (eNernstPosND[soc, elCurrentDensityND] - eNernstNegND[soc, -elCurrentDensityND]) + eMembraneND[soc, elCurrentDensityND];
cellVoltageOcvAndBv[soc_, elCurrent_] :=
  cellVoltageOcv[soc, elCurrent] + \[Eta]Bv[soc, elCurrent];
cellVoltage[soc_, elCurrent_] :=
  Module[{},
    If[Abs[elCurrent] < Abs[limElCurrent[soc, elCurrent]],
      cellVoltageOcv[soc, elCurrent] + \[Eta]Bv[soc, elCurrent] + \[Eta]Ohmic[soc, elCurrent]
      ,
      Sign[elCurrent] * 10^10
    ]
  ];


(* ::Input::Initialization:: *)
getDomIdSign[domId_] :=
  If[domId == idNeg,
    -1
    ,
    1
  ];
elExchangeCurrentND[cRedND_, cOxND_, domId_] :=
  nEl[[domId]] * ki[[domId]] * Sqrt[cRedND * cOxND];


(* ::Input::Initialization:: *)
\[Eta]BvND[soc_, elCurrentND_] :=
  \[Eta]BvND[soc, elCurrentND, idPos] - \[Eta]BvND[soc, elCurrentND, idNeg];
\[Eta]BvND[soc_, elCurrentND_, domId_] :=
  \[Eta]BvImplND[soc, getDomIdSign[domId] * elCurrentND / totElectrodeAreaND, domId];


(* ::Input::Initialization:: *)
(*Overpotential formulated in terms of dimensionless Sherwood and Kinetic number*)
\[Eta]BvImplND[soc_,elCurrentDensityND_,domId_]:=Module[{kiValue=ki[[domId]]},
(1/nEl[[domId]])*(2*ArcSinh[(elCurrentDensityND*sh)/(2 nEl[[domId]] kiValue Sqrt[(elCurrentDensityND+cOxAvgND[soc,elCurrentDensityND,domId]*sh)*(cRedAvgND[soc,elCurrentDensityND,domId]*sh-elCurrentDensityND)])]-Log[cOxAvgND[soc,elCurrentDensityND,domId]/cRedAvgND[soc,elCurrentDensityND,domId]*(cRedAvgND[soc,elCurrentDensityND,domId]*sh-elCurrentDensityND)/(elCurrentDensityND+cOxAvgND[soc,elCurrentDensityND,domId]*sh)])
];


(* ::Input::Initialization:: *)
gOxND[soc_,elCurrentDensityND_,domId_]:=Max[1-\[Nu]Ox/(cOxAvgND[soc,elCurrentDensityND,domId] sh) elCurrentDensityND,0];
gRedND[soc_,elCurrentDensityND_,domId_]:=Max[1-\[Nu]Red/(cRedAvgND[soc,elCurrentDensityND,domId] sh) elCurrentDensityND,0];


(* ::Input::Initialization:: *)
limElCurrentDensityCharging[soc_, id_] :=
  Module[{limElCurrentDensityND},
    If[id == idPos,
      limElCurrentDensityND = Solve[Rationalize[km / (d0 / l0) cRedAvgND[soc, elCurrentDensityND, idPos] == elCurrentDensityND], elCurrentDensityND][[1, 1, 2]];
      If[cRedOutND[soc, limElCurrentDensityND, id] < 0,
        limElCurrentDensityND = Solve[cRedOutND[soc, elCurrentDensityND, id] == 0, elCurrentDensityND][[1, 1, 2]];
      ]
      ,
      limElCurrentDensityND = Solve[Rationalize[km / (d0 / l0) * cOxAvgND[soc, elCurrentDensityND, idNeg] == elCurrentDensityND], elCurrentDensityND][[1, 1, 2]];
      If[cOxOutND[soc, elCurrentDensityND, id] < 0,
        limElCurrentDensityND = Solve[cOxOutND[soc, elCurrentDensityND, id] == 0, elCurrentDensityND][[1, 1, 2]];
      ]
    ];
    Return[i0 * limElCurrentDensityND];
  ];

limElCurrentDensityDischarging[soc_, id_] :=
  Module[{limElCurrentDensity},
    If[id == idPos,
      limElCurrentDensity = Solve[Rationalize[km / (d0 / l0) * cOxAvgND[soc, elCurrentDensityND, idPos] == -elCurrentDensityND], elCurrentDensityND][[1, 1, 2]];
      If[cOxOutND[soc, limElCurrentDensity, id] < 0,
        limElCurrentDensity = Solve[cOxOutND[soc, limElCurrentDensityVar, id] == 0, limElCurrentDensityVar][[1, 1, 2]];
      ]
      ,
      limElCurrentDensity = -Solve[Rationalize[km / (d0 / l0) * cRedAvgND[soc, elCurrentDensityND, idNeg] == elCurrentDensityND], elCurrentDensityND][[1, 1, 2]];
      If[cRedOutND[soc, limElCurrentDensity, id] < 0,
        limElCurrentDensity = Solve[cRedOutND[soc, limElCurrentDensityVar, id] == 0, limElCurrentDensityVar][[1, 1, 2]];
      ]
    ];
    Return[i0 * limElCurrentDensity];
  ];
(*limElCurrentDensityDischarging[soc_,id_]:=If[id==idPos,i0*Solve[km/(d0/l0)*cOxAvgND[soc,elCurrentDensityND,idPos]== -elCurrentDensityND,elCurrentDensityND][[1,1,2]],-i0*Solve[km/(d0/l0)*cRedAvgND[soc,elCurrentDensityND,idNeg]== elCurrentDensityND,elCurrentDensityND][[1,1,2]]];
*)
limElCurrentCharging[soc_] :=
  totElectrodeArea * Min[limElCurrentDensityCharging[soc, idPos], limElCurrentDensityCharging[soc, idNeg]];
limElCurrentDischarging[soc_] :=
  totElectrodeArea * Max[limElCurrentDensityDischarging[soc, idPos], limElCurrentDensityDischarging[soc, idNeg]];
limElCurrent[soc_, elCurrentDensity_] :=
  If[elCurrentDensity > 0,
    limElCurrentCharging[soc]
    ,
    limElCurrentDischarging[soc]
  ];


(* ::Subsection:: *)
(*Set Default Model Parameters and Define Model Initialization Functions*)


(* ::Input::Initialization:: *)
Options[initModel] = {
zOxPos-> 2, (*[-]*)
zRedPos-> 1, (*[-]*)
zOxNeg-> 2, (*[-]*)
zRedNeg-> 1, (*[-]*)
zExchangedIon-> -1, (*[-]*)
zSuppElectrolyteIon-> 1,(*[-]*)
\[Nu]RedPos-> 1,(*[-]*)
\[Nu]OxPos-> -1,(*[-]*)
\[Nu]RedNeg-> 1,(*[-]*)
\[Nu]OxNeg-> -1,(*[-]*)
nElPos-> 1,(*[-]*)
nElNeg-> 1,(*[-]*)
\[Nu]ExchangedIonPos-> 0,(*[-]*)
\[Nu]ExchangedIonNeg-> 0,(*[-]*)
cSuppElectrolyteIonNeg-> 0,(*[mol/m^3]*)
cSuppElectrolyteIonPos-> 0,(*[mol/m^3]*)
T ->273.15+22.0,(*[K]*)
electrolyteVolSoc0 -> 0.01/10^3,(*[m^3]*)
elLength -> 0.4 / 100,(*[m]*)
elWidth -> 2.236 / 100,(*[m]*)
elHeight -> 2.236 / 100,(*[m]*)
specElectrodeSurfArea-> 2* 10^5,(*[m^-1]*)
flowRate -> 16*1/(10^6*60),(*[ml/min]*)
ohmicCellResistance -> 0.286,(*[V/A]*)
eNeg0 -> -0.66,(*[V]*)
ePos0 -> 0.62,(*[V]*)
kneg -> 3.3 * 10^-5,(*[m/s]*)
kpos -> 4.2 * 10^-5,(*[m/s]*)
\[Kappa]s -> 6,(*[-]*)
cOxNegSoc0 -> 1.49*10^3,(*[mol/m^3]*)
cRedNegSoc0 -> 0.0,(*[mol/m^3]*)
cOxPosSoc0 -> 0.0,(*[mol/m^3]*)
cRedPosSoc0 -> 1.12*10^3,(*[mol/m^3]*)
massTransferCoeff1-> (3.3* 10^-5),(*[m/s]^(1-massTransferCoeff2)*)
massTransferCoeff2-> 0.9,(*[-]*)
molarMassSolvent -> 0.01801528,(*[kg/mol]*)
molarMassOxNeg -> 0.25716,(*[kg/mol]*)
molarMassRedNeg-> 0.22171,(*[kg/mol]*)
molarMassOxPos-> 0.285253,(*[kg/mol]*)
molarMassRedPos -> 0.249803,(*[kg/mol]*)
partialMolarVolSolvent-> 0.0180555*10^-3,(*[m^3/mol]*)
partialMolarVolOxNeg-> 0.189*10^-3,(*[m^3/mol]*)
partialMolarVolRedNeg-> 0.163*10^-3,(*[m^3/mol]*)
partialMolarVolOxPos-> 0.233*10^-3,(*[m^3/mol]*)
partialMolarVolRedPos-> 0.212*10^-3,(*[m^3/mol]*)
partialMolarVolSupportingElectrolyteNeg-> 0.0,(*[m^3/mol]*)
partialMolarVolSupportingElectrolytePos-> 0.0,(*[m^3/mol]*)
membranePotential-> "thermodynamics"
};

interfaceOptionsToModelOptions={
"charge_number_ox_pos"->zOxPos,
"charge_number_red_pos"->zRedPos,
"charge_number_ox_neg"->zOxNeg,
"charge_number_red_neg"-> zRedNeg,
"charge_number_exchanged_ion"-> zExchangedIon,
"charge_number_supporting_electrolyte_ion"-> zSuppElectrolyteIon,
"stoichiometric_coefficient_exchanged_ion_pos"-> \[Nu]ExchangedIonPos,
"number_electron_transfer_pos"->nElPos ,
"stoichiometric_coefficient_exchanged_ion_neg"-> \[Nu]ExchangedIonNeg,
"number_electron_transfer_neg"-> nElNeg,
"molar_concentration_supporting_electrolyte_ion_neg"-> cSuppElectrolyteIonNeg,
"molar_concentration_supporting_electrolyte_ion_pos"-> cSuppElectrolyteIonPos,
"ohmic_cell_resistance"->ohmicCellResistance,
"temperature"-> T,
"electrolyte_volume"-> electrolyteVolSoc0,
"electrode_length"-> elLength,
"electrode_width"-> elWidth,
"electrode_height"-> elHeight,
"specific_surface_area"->specElectrodeSurfArea,
"volumetric_flow_rate"-> flowRate,
"formal_potential_neg"-> eNeg0,
"formal_potential_pos"-> ePos0,
"reaction_rate_constant_neg"-> kneg,
"reaction_rate_constant_pos"-> kpos,
"electro_osmotic_drag_coefficient"-> \[Kappa]s,
"molar_concentration_ox_neg_soc0"-> cOxNegSoc0,
"molar_concentration_red_pos_soc0"-> cRedPosSoc0,
"mass_transfer_coefficient_a"->massTransferCoeff1 ,
"mass_transfer_coefficient_b"-> massTransferCoeff2,
"molar_mass_ox_neg"-> molarMassOxNeg,
"molar_mass_red_neg"-> molarMassRedNeg,
"molar_mass_ox_pos"-> molarMassOxPos,
"molar_mass_red_pos"-> molarMassRedPos,
"molar_mass_solvent"-> molarMassSolvent,
"molar_mass_supporting_electrolyte"-> molarMassSupportingElectrolyte,
"partial_molar_volume_solvent"-> partialMolarVolSolvent,
"partial_molar_volume_ox_neg"-> partialMolarVolOxNeg,
"partial_molar_volume_red_neg"-> partialMolarVolRedNeg,
"partial_molar_volume_ox_pos"-> partialMolarVolOxPos,
"partial_molar_volume_red_pos"-> partialMolarVolRedPos,
"partial_molar_volume_supporting_electrolyte_neg"-> partialMolarVolSupportingElectrolyteNeg,
"partial_molar_volume_supporting_electrolyte_pos"-> partialMolarVolSupportingElectrolytePos,
"membrane_potential"->membranePotential
};

getUniqueOptions[lst_] :=
    Association[lst];
assocToRules[assoc_] :=
    Thread[Keys[assoc] -> Values[assoc]]

modelParams={};(*variable storing the model parameters*)
getModelParamsAssoc :=
    modelParams;
getModelParamsRules :=
    assocToRules[modelParams];


(* ::Input::Initialization:: *)
setModelParams[opts_] :=
  Module[{},
    modelParams = getUniqueOptions[Flatten[{getModelParamsRules, opts}]]; initImpl
  ];

initModel[opts:OptionsPattern[]] :=
  Module[{},
    modelParams = getUniqueOptions[Flatten[{Options[initModel], opts}]]; initImpl
  ];

initImpl :=
  Module[{},
    electrodeVol = modelParams[elLength] * modelParams[elWidth] * modelParams[elHeight];(*[m^3]*)
    memArea = modelParams[elWidth] * modelParams[elHeight];(*[m^2]*)
    totElectrodeArea = modelParams[specElectrodeSurfArea] * electrodeVol;(*[m^2]*)
    nOxPosSoc0 = modelParams[cOxPosSoc0] * modelParams[electrolyteVolSoc0];(*[mol]*)
    nOxNegSoc0 = modelParams[cOxNegSoc0] * modelParams[electrolyteVolSoc0];(*[mol]*)
    nRedNegSoc0 = modelParams[cRedNegSoc0] * modelParams[electrolyteVolSoc0];(*[mol]*)
    nRedPosSoc0 = modelParams[cRedPosSoc0] * modelParams[electrolyteVolSoc0];(*[mol]*)
    nSolventNegSoc0 = (modelParams[electrolyteVolSoc0] - nOxNegSoc0 * modelParams[partialMolarVolOxNeg]) / modelParams[partialMolarVolSolvent];(*[mol]*)
    nSolventPosSoc0 = (modelParams[electrolyteVolSoc0] - nRedPosSoc0 * modelParams[partialMolarVolRedPos]) / modelParams[partialMolarVolSolvent];(*[mol]*)
    nOxNegSoc1 = nOxNegSoc0 - Min[nOxNegSoc0, nRedPosSoc0];(*[mol]*)
    nRedPosSoc1 = nRedPosSoc0 - Min[nOxNegSoc0, nRedPosSoc0];(*[mol]*)
    superficialVelocity = modelParams[flowRate] / (modelParams[elLength] * modelParams[elWidth]);(*[m/s]*)
    km = (modelParams[massTransferCoeff1] * superficialVelocity^modelParams[massTransferCoeff2]); (*[m/s]*)
    initCharacteristicScales[];
    initDimensionlessParameters[];
    Return[True]
  ];

initCharacteristicScales[] :=
  Module[{},
    \[Nu]Ox = -1;
    \[Nu]Red = 1;
    \[Eta]0 = fInv;(*[V]*)
    c0 = 10^3;(*[mol/m^3]*)
    \[Rho]0 = 10^3;(*[kg/m^3]*)
    b0 = c0 / \[Rho]0;(*[mol/kg]*)
    d0 = 10^-9;(*[m^2/s]*)
    L0 = 10^-2;(*characteristic macroscopic length scale [m]*)
    l0 = 10^-5;(*characteristic pore length scale [m]*)
    i0 = (F d0 c0) / l0;(*[C/(m^2s)]*)
    I0 = (F c0 d0 L0^3) / l0^2;(*[C/s]*)
    k0 = d0 / l0;(*[m/s]*)
    km0 = d0 / l0;(*[m/s]*)
    v0 = d0 / l0;(*(d0 L0)/l0^2;*)(*[m/s]*)
    specElectrodeSurfArea0 = 1 / l0;(*[m^-1]*)
    totElectrodeArea0 = L0^3 / l0;(*[m^2]*)
    Return[True];
  ];

initDimensionlessParameters[] :=
  Module[{},
    specElectrodeSurfAreaND = modelParams[specElectrodeSurfArea] / specElectrodeSurfArea0;
    totElectrodeAreaND = totElectrodeArea / totElectrodeArea0;
    vyND = superficialVelocity / v0;
    kNegND = modelParams[kneg] / k0;
    kPosND = modelParams[kpos] / k0;
    kmND = km / km0;
    elLengthND = modelParams[elLength] / L0;
    elWidthND = modelParams[elWidth] / L0;
    elHeightND = modelParams[elHeight] / L0;
    superficialVelocityND = superficialVelocity / v0;
    sh = km * l0 / d0;
    ki = {kNegND, kPosND};
    nEl = {modelParams[nElNeg], modelParams[nElPos]};
    Return[True];
  ];


(* ::Input::Initialization:: *)
runFromJsonFile[fileName_] :=
  Module[{jsonString = Import[fileName, "Text"]},
    runFromJsonString[jsonString]
  ];

runFromJsonString[inputJsonString_] :=
  Module[{jsonAssoc = ImportString[inputJsonString, "RawJSON"]},
    (*Initialize model*)
    initModelFromJsonString[inputJsonString];
    output = {};
    (*Run all requested studies*)
    If[KeyExistsQ[jsonAssoc[["study_parameters"]], "open_circuit_voltage"],
      AppendTo[output, runOpenCircuitVoltage[jsonAssoc[["study_parameters", "open_circuit_voltage"]]]]
    ];
    If[KeyExistsQ[jsonAssoc[["study_parameters"]], "maximum_power_density"],
      AppendTo[output, runMaximumPowerDensity[jsonAssoc[["study_parameters", "maximum_power_density"]]]]
    ];
    If[KeyExistsQ[jsonAssoc[["study_parameters"]], "voltage_efficiency"],
      AppendTo[output, runVoltageEfficiency[jsonAssoc[["study_parameters", "voltage_efficiency"]]]]
    ];
    If[KeyExistsQ[jsonAssoc[["study_parameters"]], "sensitivity_analysis"],
      AppendTo[output, runSensitivityAnalysis[jsonAssoc[["study_parameters", "sensitivity_analysis"]]]]
    ];
    Return[ExportString[Flatten[output, 1], "JSON"]];
  ];

initModelFromJsonString[inputJsonString_] :=
  Module[{jsonRules = ImportString[inputJsonString, "JSON"]},
    (*Initialize model*)
    initModel["model_parameters" /. jsonRules /. interfaceOptionsToModelOptions];
  ];


(* ::Input::Initialization:: *)
maxPower[soc_] :=
  Module[{minElCurrent},
    minElCurrent = limElCurrentDischarging[soc];
    FindMaximum[{Re[cellVoltage[soc, elCurrent]] * Abs[elCurrent], elCurrent > minElCurrent && elCurrent < 0}, {elCurrent, minElCurrent / 4}][[1]]
  ];


(* ::Subsection:: *)
(*Define Graphical Output Generating Functions*)


(* ::Input::Initialization:: *)
SetOptions[Plot, Frame -> True, Axes -> True, PlotTheme -> "Detailed", AxesStyle -> {Directive[Black, 14], Black}, LabelStyle -> {Directive[14]},PlotStyle-> {Full,Dashed,Dotted,DotDashed}];
SetOptions[ListPlot, Frame -> True, Axes -> True, PlotTheme -> "Detailed", AxesStyle -> {Directive[Black, 14], Black}, LabelStyle -> {Directive[14]},PlotStyle-> {Full,Dashed,Dotted,DotDashed}];


(* ::Input::Initialization:: *)
Options[plotElectroActiveSpeciesMoles]={PlotRange-> {{0,1},{0,Automatic}},PlotLegends->{"\!\(\*SubscriptBox[\(n\), \(red, -\)]\)","\!\(\*SubscriptBox[\(n\), \(ox, -\)]\)","\!\(\*SubscriptBox[\(n\), \(red, +\)]\)","\!\(\*SubscriptBox[\(n\), \(ox, +\)]\)"},Frame-> True,PlotTheme-> "Detailed",FrameLabel->{"SoC","Amount of Substance [mmol]"},PlotLabel->"Amount of Substances vs SoC"};
plotElectroActiveSpeciesMoles[opts:OptionsPattern[{plotElectroActiveSpeciesMoles,Plot}]]:=Plot[{10^3 nRedNeg[soc],10^3 nOxNeg[soc],10^3 nRedPos[soc],10^3 nOxPos[soc]},{soc,0,1},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotElectroActiveSpeciesMoles], Options[Plot]]]]];

Options[plotElectroActiveSpeciesMoleFractions]={PlotRange-> {{0,1},{0,Automatic}},PlotLegends->{"\!\(\*SubscriptBox[\(x\), \(red, -\)]\)","\!\(\*SubscriptBox[\(x\), \(ox, -\)]\)","\!\(\*SubscriptBox[\(x\), \(red, +\)]\)","\!\(\*SubscriptBox[\(x\), \(ox, +\)]\)"},Frame-> True,PlotTheme-> "Detailed",FrameLabel->{"SoC","Mole Fraction"},PlotLabel->"Mole Fractions vs SoC"};
plotElectroActiveSpeciesMoleFractions[opts:OptionsPattern[{plotElectroActiveSpeciesMoleFractions,Plot}]]:=Plot[{nRedNeg[soc]/(nRedNeg[soc]+nOxNeg[soc]+nSolventNeg[soc]),nOxNeg[soc]/(nRedNeg[soc]+nOxNeg[soc]+nSolventNeg[soc]),nRedPos[soc]/(nRedPos[soc]+nOxPos[soc]+nSolventPos[soc]),nOxPos[soc]/(nRedPos[soc]+nOxPos[soc]+nSolventPos[soc])},{soc,0,1},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotElectroActiveSpeciesMoleFractions], Options[Plot]]]]];

Options[plotElectroActiveSpeciesMolalities]={PlotRange-> {{0,1},{0,Automatic}},PlotLegends->{"\!\(\*SubscriptBox[\(b\), \(red, -\)]\)","\!\(\*SubscriptBox[\(b\), \(ox, -\)]\)","\!\(\*SubscriptBox[\(b\), \(red, +\)]\)","\!\(\*SubscriptBox[\(b\), \(ox, +\)]\)"},Frame-> True,PlotTheme-> "Detailed",FrameLabel->{"SoC","Molality [mol/kg]"},PlotLabel->"Molalities vs SoC"};
plotElectroActiveSpeciesMolalities[opts:OptionsPattern[{plotElectroActiveSpeciesMolalities,Plot}]]:=Plot[{bRedNeg[soc],bOxNeg[soc],bRedPos[soc],bOxPos[soc]},{soc,0,1},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotElectroActiveSpeciesMolalities], Options[Plot]]]]];

Options[plotElectroActiveSpeciesMolarities]={PlotRange-> {{0,1},{0,Automatic}},PlotLegends->{"\!\(\*SubscriptBox[\(c\), \(red, -\)]\)","\!\(\*SubscriptBox[\(c\), \(ox, -\)]\)","\!\(\*SubscriptBox[\(c\), \(red, +\)]\)","\!\(\*SubscriptBox[\(c\), \(ox, +\)]\)"},Frame-> True,PlotTheme-> "Detailed",FrameLabel->{"SoC","Molar Concentration [mol/L]"},PlotLabel->"Molar Concentrations vs SoC"};
plotElectroActiveSpeciesMolarities[opts:OptionsPattern[{plotElectroActiveSpeciesMolarities,Plot}]]:=Plot[{cRedNeg[soc]/10^3,cOxNeg[soc]/10^3,cRedPos[soc]/10^3,cOxPos[soc]/10^3},{soc,0,1},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotElectroActiveSpeciesMolarities], Options[Plot]]]]];

Options[plotElectroActiveSpeciesMolarConcentrations]={PlotRange-> {{0,1},{0,Automatic}},PlotLegends->{"\!\(\*SubscriptBox[\(c\), \(red, -\)]\)","\!\(\*SubscriptBox[\(c\), \(ox, -\)]\)","\!\(\*SubscriptBox[\(c\), \(red, +\)]\)","\!\(\*SubscriptBox[\(c\), \(ox, +\)]\)"},Frame-> True,PlotTheme-> "Detailed",FrameLabel->{"SoC","Molarity [mol/L]"},PlotLabel->"Molarities vs SoC"};
plotElectroActiveSpeciesMolarConcentrations[opts:OptionsPattern[{plotElectroActiveSpeciesMolarConcentrations,Plot}]]:=Plot[{cRedNeg[soc],cOxNeg[soc],cRedPos[soc],cOxPos[soc]},{soc,0,1},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotElectroActiveSpeciesMolarConcentrations], Options[Plot]]]]];


(* ::Input::Initialization:: *)
Options[plotVoltageLossesVsElCurrentDensity]={soc-> 0.9,maxSoc-> 0.99,PlotLegends->{"\!\(\*SubscriptBox[\(\[Eta]\), \(Act\)]\)+\!\(\*SubscriptBox[\(\[Eta]\), \(Conc\)]\)","\!\(\*SubscriptBox[\(\[Eta]\), \(Ohmic\)]\)"},PlotLabel-> "Losses",FrameLabel-> {"El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","Voltage [V]"},ScalingFunctions->{"Reverse",None},PlotStyle-> {Full,Dashed},PlotStyle-> {Full,Dashed,Dotted,DotDashed}};
plotVoltageLossesVsElCurrentDensity[opts:OptionsPattern[{plotVoltageLossesVsElCurrentDensity,Plot}]]:=Module[{limElCurrentDischargingAtSoc,memAreaCM2,maxVoltage},
maxVoltage=cellVoltageOcv[OptionValue[soc]];
memAreaCM2=memArea*100^2;
limElCurrentDensityDischargingAtSoc=limElCurrentDischarging[OptionValue[soc]]*1000/memAreaCM2;Plot[{\[Eta]Bv[OptionValue[soc],elCurrentDensityMilliAmperePerCm2*memAreaCM2/1000],\[Eta]Ohmic[OptionValue[soc],elCurrentDensityMilliAmperePerCm2*memAreaCM2/1000]},{elCurrentDensityMilliAmperePerCm2,limElCurrentDensityDischargingAtSoc,0},Epilog->{Style[Line[{{-limElCurrentDensityDischargingAtSoc,-10},{-limElCurrentDensityDischargingAtSoc,10}}],Dashed]},PlotRange->{{limElCurrentDensityDischargingAtSoc-10,0},Automatic},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotVoltageLossesVsElCurrentDensity], Options[Plot]]]] ]
];


(* ::Input::Initialization:: *)
Options[plotCellVoltageVsElCurrentDensity]={lstSoc->{0.2,0.5,0.8},maxSoc-> 0.99,PlotLabel-> "Polarization Plot",FrameLabel-> {"El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","Voltage [V]"},ScalingFunctions->{"Reverse",None},PlotStyle-> {Full,Dashed,Dotted,DotDashed}};
plotCellVoltageVsElCurrentDensity[opts:OptionsPattern[{plotCellVoltageVsElCurrentDensity,Plot}]]:=Module[{lstLimElCurrentDischarging,minElCurrentDischarging,memAreaCM2,maxVoltage,lstSocValues},
lstSocValues=OptionValue[lstSoc];
maxVoltage=cellVoltageOcv[Max[lstSocValues]];
memAreaCM2=memArea*100^2;
lstLimElCurrentDischarging=Table[limElCurrentDischarging[lstSocValues[[i]]]*1000/memAreaCM2,{i,1,Length[lstSocValues]}];
minElCurrentDischarging=Min[lstLimElCurrentDischarging];
Plot[Evaluate[Table[cellVoltage[lstSocValues[[i]],elCurrentDensityMilliAmperePerCm2*memAreaCM2/1000],{i,1,Length[lstSocValues]}]],{elCurrentDensityMilliAmperePerCm2,minElCurrentDischarging,0},Epilog->Table[Style[Line[{{-lstLimElCurrentDischarging[[i]],0},{-lstLimElCurrentDischarging[[i]],maxVoltage}}],Dashed],{i,1,Length[lstLimElCurrentDischarging]}],Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotCellVoltageVsElCurrentDensity], Options[Plot]]]],PlotRange->{{minElCurrentDischarging-10,0},{0,maxVoltage}},PlotLegends->Table["SoC = " <>ToString[lstSocValues[[i]]],{i,1,Length[lstSocValues]}]]];

Options[plotCellPowerDensityVsElCurrentDensity]={lstSoc->{0.2,0.5,0.8},maxSoc-> 0.99,PlotLabel-> "Polarization Plot",FrameLabel-> {"El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","Power Density [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"},ScalingFunctions->{"Reverse",None},PlotStyle-> {Full,Dashed,Dotted,DotDashed}};
plotCellPowerDensityVsElCurrentDensity[opts:OptionsPattern[{plotCellPowerDensityVsElCurrentDensity,Plot}]]:=Module[{lstLimElCurrentDischarging,minElCurrentDischarging,memAreaCM2,maxVoltage,lstSocValues},
lstSocValues=OptionValue[lstSoc];
maxVoltage=cellVoltageOcv[Max[lstSocValues]];
memAreaCM2=memArea*100^2;
lstLimElCurrentDischarging=Table[limElCurrentDischarging[lstSocValues[[i]]]*1000/memAreaCM2,{i,1,Length[lstSocValues]}];
minElCurrentDischarging=Min[lstLimElCurrentDischarging];
Plot[Evaluate[Table[cellVoltage[lstSocValues[[i]],elCurrentDensityMilliAmperePerCm2*memAreaCM2/1000]*Abs[elCurrentDensityMilliAmperePerCm2],{i,1,Length[lstSocValues]}]],{elCurrentDensityMilliAmperePerCm2,minElCurrentDischarging,0},Epilog->Table[Style[Line[{{-lstLimElCurrentDischarging[[i]],0},{-lstLimElCurrentDischarging[[i]],maxVoltage*(-minElCurrentDischarging)}}],Dashed],{i,1,Length[lstLimElCurrentDischarging]}],Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotCellPowerDensityVsElCurrentDensity], Options[Plot]]]],
PlotRange->{{minElCurrentDischarging-10,0},{0,All}},PlotLegends->Table["SoC = " <>ToString[lstSocValues[[i]]],{i,1,Length[lstSocValues]}]]];


(* ::Input::Initialization:: *)
\[CapitalLambda]cFun[SOC_,elCurrent_]:=Module[{elCurrentDensityND=elCurrent/(I0*totElectrodeAreaND)},If[elCurrent<0,(Abs[elCurrent])/(F*modelParams[flowRate]*c0*Min[cOxAvgND[SOC,elCurrentDensityND,idPos],cRedAvgND[SOC,-elCurrentDensityND,idNeg]]),(Abs[elCurrent])/(F*modelParams[flowRate]*c0*Min[cRedAvgND[SOC,elCurrentDensityND,idPos],cOxAvgND[SOC,-elCurrentDensityND,idNeg]])]];


(* ::Input::Initialization:: *)
Options[plotCellVoltageVsSoc]={lstElCurrentDensities->{0,-100,-200,-400},minSoc-> 0.01,maxSoc-> 0.99,PlotLabel-> "Polarization Plot",ScalingFunctions->{"Reverse",None},PlotLabel-> "Polarization Plot",FrameLabel-> {"SoC","Voltage [V]"},PlotStyle-> {Full,Dashed,Dotted,DotDashed},PlotRange-> Automatic};

plotCellVoltageVsSoc[opts:OptionsPattern[{plotCellVoltageVsSoc,Plot}]]:=Module[{memAreaCM2,lstElCurrentDensityValues,maxVoltage,lstCritSocAtElCurrent},
memAreaCM2=memArea*100^2;
maxVoltage=cellVoltageOcv[OptionValue[maxSoc]];
lstElCurrentDensityValues=OptionValue[lstElCurrentDensities];
Off[Solve::ratnz];
lstCritSocAtElCurrent=Table[Solve[limElCurrent[minSocAtElCurrentDischarging,lstElCurrentDensityValues[[i]]]==lstElCurrentDensityValues[[i]]*memAreaCM2/1000,minSocAtElCurrentDischarging][[1,1,2]],{i,1,Length[lstElCurrentDensityValues]}];
On[Solve::ratnz];
Plot[Evaluate[Table[cellVoltage[soc,lstElCurrentDensityValues[[i]]*memAreaCM2/1000],{i,1,Length[lstElCurrentDensityValues]}]],{soc,OptionValue[minSoc],OptionValue[maxSoc]},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]]],Evaluate[FilterRules[Options[plotCellVoltageVsSoc], Options[Plot]]],Epilog->Table[Style[Line[{{-lstCritSocAtElCurrent[[i]],0.0},{-lstCritSocAtElCurrent[[i]],2maxVoltage}}],Dashed],{i,1,Length[lstCritSocAtElCurrent]}],PlotRange->{All,{0.0,All}},PlotLegends->Table["i = "<>ToString[lstElCurrentDensityValues[[i]]]<>" [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]",{i,1,Length[lstElCurrentDensityValues]}]]]

Options[plotCellPowerDensityVsSoc]={lstElCurrentDensities->{0,-100,-200,-400},minSoc-> 0.01,maxSoc-> 0.99,PlotLabel-> "Polarization Plot",ScalingFunctions->{"Reverse",None},FrameLabel-> {"SoC","Power Density [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"},PlotStyle-> {Full,Dashed,Dotted,DotDashed}};

plotCellPowerDensityVsSoc[opts:OptionsPattern[{plotCellPowerDensityVsSoc,Plot}]]:=Module[{memAreaCM2,lstElCurrentDensityValues,maxVoltage,maxPowerDensity,lstCritSocAtElCurrent},
memAreaCM2=memArea*100^2;
maxVoltage=cellVoltageOcv[OptionValue[maxSoc]];
lstElCurrentDensityValues=OptionValue[lstElCurrentDensities];
maxPowerDensity=cellVoltage[OptionValue[maxSoc],Min[lstElCurrentDensityValues]*memAreaCM2/1000]*Abs[Min[lstElCurrentDensityValues]];
Off[Solve::ratnz];
lstCritSocAtElCurrent=Table[Solve[limElCurrent[minSocAtElCurrentDischarging,lstElCurrentDensityValues[[i]]]==lstElCurrentDensityValues[[i]]*memAreaCM2/1000,minSocAtElCurrentDischarging][[1,1,2]],{i,1,Length[lstElCurrentDensityValues]}];
On[Solve::ratnz];
Plot[Evaluate[Table[cellVoltage[soc,lstElCurrentDensityValues[[i]]*memAreaCM2/1000]*Abs[lstElCurrentDensityValues[[i]]],{i,1,Length[lstElCurrentDensityValues]}]],{soc,OptionValue[minSoc],OptionValue[maxSoc]},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]]],Evaluate[FilterRules[Options[plotCellPowerDensityVsSoc], Options[Plot]]],Epilog->Table[Style[Line[{{-lstCritSocAtElCurrent[[i]],0.0},{-lstCritSocAtElCurrent[[i]],2maxPowerDensity}}],Dashed],{i,1,Length[lstCritSocAtElCurrent]}],PlotRange->{All,{0.0,All}},PlotLegends->Table["i = "<>ToString[lstElCurrentDensityValues[[i]]]<>" [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]",{i,1,Length[lstElCurrentDensityValues]}]]]


(* ::Input::Initialization:: *)
Options[plotCellVoltageVsSocAndCurrentDensity]={minSoc-> 0.01,maxSoc-> 0.99,minElCurrentDensity-> -600,maxElCurrentDensity-> 0, \[Delta]Soc -> 0.01,PlotLabel-> "Cell Voltage [V]",FrameLabel-> {"Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","SoC"},ScalingFunctions->{"Reverse",None},contourSpacing-> 0.05,PlotRangePadding->None,LabelStyle->Directive[18],PlotLegends->Placed[BarLegend[Automatic,LegendLabel-> ""],Right],MaxRecursion-> 2,PlotPoints-> {25,25}};

plotCellVoltageVsSocAndCurrentDensity[opts:OptionsPattern[{plotCellVoltageVsSocAndCurrentDensity,ContourPlot}]]:=Module[{tabLimElCurrerntDensityDischargingToSoc,limElCurrerntDensityDischargingToSocFun,minElCurrentDensityDischarge,memAreaCM2,maxVoltage,resultPlot},
memAreaCM2=memArea*100^2;
maxVoltage=cellVoltageOcv[OptionValue[maxSoc]];
tabLimElCurrerntDensityDischargingToSoc=Table[{limElCurrentDischarging[soc]*1000/memAreaCM2,soc},{soc,OptionValue[minSoc],OptionValue[maxSoc],OptionValue[\[Delta]Soc]}];
limElCurrerntDensityDischargingToSocFun=Interpolation[tabLimElCurrerntDensityDischargingToSoc];
minElCurrentDensityDischarge=Max[limElCurrentDischarging[OptionValue[maxSoc]]*1000/memAreaCM2,OptionValue[minElCurrentDensity]];
Off[InterpolatingFunction::dmval];
resultPlot=Show[{
ContourPlot[Evaluate[If[soc > limElCurrerntDensityDischargingToSocFun[elCurrentDensityMilliAmperePerCm2], Max[Re[cellVoltage[soc, elCurrentDensityMilliAmperePerCm2 * memAreaCM2 / 1000]],0]]],{elCurrentDensityMilliAmperePerCm2,minElCurrentDensityDischarge,OptionValue[maxElCurrentDensity]},{soc,OptionValue[minSoc],OptionValue[maxSoc]},RegionFunction->Function[{elCurrentDensityMilliAmperePerCm2,soc},(soc>(limElCurrerntDensityDischargingToSocFun[elCurrentDensityMilliAmperePerCm2]+10^-3))],
Contours -> Table[i, {i, 0, Floor[maxVoltage,OptionValue[contourSpacing]], OptionValue[contourSpacing]}],
Evaluate[FilterRules[Flatten[{opts}], Options[ContourPlot]]],Evaluate[FilterRules[Options[plotCellVoltageVsSocAndCurrentDensity],Options[ContourPlot]]],ColorFunction->(ColorData["Rainbow"][Rescale[#,{0,maxVoltage}]]&),ColorFunctionScaling->False,PlotRange-> {{OptionValue[maxElCurrentDensity],OptionValue[minElCurrentDensity]},{OptionValue[minSoc],OptionValue[maxSoc]}}],Plot[limElCurrerntDensityDischargingToSocFun[elCurrentDensity],{elCurrentDensity,OptionValue[minElCurrentDensity],OptionValue[maxElCurrentDensity]},PlotStyle-> {Black,Thickness[0.006]},ScalingFunctions->{"Reverse",None},PlotLegends->None]}];
On[InterpolatingFunction::dmval];
resultPlot
];


(* ::Input::Initialization:: *)
Options[plotCellPowerDensityVsSocAndCurrentDensity] = {minSoc -> 0.01, maxSoc -> 0.99, minElCurrentDensity -> -600, maxElCurrentDensity -> 0, \[Delta]Soc -> 0.01, PlotLabel -> "Power Density [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]", FrameLabel -> {"Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]", "SoC"}, ScalingFunctions -> {"Reverse", None}, numContours -> 20, PlotRangePadding -> None, LabelStyle -> Directive[16], PlotLegends -> Placed[BarLegend[Automatic, LegendLabel -> ""], Right], MaxRecursion -> 2, PlotPoints -> {20, 20}};

plotCellPowerDensityVsSocAndCurrentDensity[opts:OptionsPattern[{plotCellPowerDensityVsSocAndCurrentDensity, ContourPlot}]] :=
    Module[{tabLimElCurrerntDensityDischargingToSoc, limElCurrerntDensityDischargingToSocFun, minElCurrentDensityDischarge, memAreaCM2, maxVoltage, maxPowerDensity, resultPlot},
        memAreaCM2 = memArea * 100^2;
        maxVoltage = cellVoltageOcv[OptionValue[maxSoc]];
        maxPowerDensity = maxPower[OptionValue[maxSoc]] * 1000 / memAreaCM2;
        tabLimElCurrerntDensityDischargingToSoc = Table[{limElCurrentDischarging[soc] * 1000 / memAreaCM2, soc}, {soc, OptionValue[minSoc], OptionValue[maxSoc], OptionValue[\[Delta]Soc]}];
        limElCurrerntDensityDischargingToSocFun = Interpolation[tabLimElCurrerntDensityDischargingToSoc];
        minElCurrentDensityDischarge = Max[limElCurrentDischarging[OptionValue[maxSoc]] * 1000 / memAreaCM2, OptionValue[minElCurrentDensity]];
        Off[InterpolatingFunction::dmval];
        resultPlot = Show[{
   ContourPlot[Evaluate[If[soc > limElCurrerntDensityDischargingToSocFun[elCurrentDensityMilliAmperePerCm2], Max[Re[cellVoltage[soc, elCurrentDensityMilliAmperePerCm2 * memAreaCM2 / 1000]],0] * Abs[elCurrentDensityMilliAmperePerCm2],0]], {elCurrentDensityMilliAmperePerCm2, minElCurrentDensityDischarge, OptionValue[maxElCurrentDensity]}, {soc,OptionValue[maxSoc],OptionValue[minSoc]}, RegionFunction -> Function[{elCurrentDensityMilliAmperePerCm2, soc}, (soc > (limElCurrerntDensityDischargingToSocFun[elCurrentDensityMilliAmperePerCm2]+10^-3))],
                Contours ->Table[i, {i, 0, Floor[maxPowerDensity,1], Max[1,Floor[maxPowerDensity/OptionValue[numContours],1]]}],
                Evaluate[FilterRules[Flatten[{opts}], Options[ContourPlot]]], Evaluate[FilterRules[Options[plotCellPowerDensityVsSocAndCurrentDensity], Options[ContourPlot]]], ColorFunction -> (ColorData["Rainbow"][Rescale[#, {0, maxPowerDensity}]]&), ColorFunctionScaling -> False, PlotRange ->{{OptionValue[maxElCurrentDensity], OptionValue[minElCurrentDensity]}, {OptionValue[minSoc], OptionValue[maxSoc]}}
            ], Plot[limElCurrerntDensityDischargingToSocFun[elCurrentDensity], {elCurrentDensity, OptionValue[minElCurrentDensity], OptionValue[maxElCurrentDensity]}, PlotStyle -> {Black, Thickness[0.006]}, ScalingFunctions -> {"Reverse", None}, PlotLegends -> None]
        }];
        On[InterpolatingFunction::dmval];
        resultPlot
    ];


(* ::Input::Initialization:: *)
Options[plot3DCellPowerDensityVsSocAndCurrentDensity] = {minSoc -> 0.01, maxSoc -> 0.99, minElCurrentDensity -> -600, maxElCurrentDensity -> 0, \[Delta]Soc -> 0.0025, PlotLabel -> "Power Density Predictions [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]", AxesLabel -> {"Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","SoC"}, ScalingFunctions -> {"Reverse",None},PlotRangePadding -> None, LabelStyle -> Directive[14], PlotLegends -> Placed[BarLegend[Automatic, LegendLabel -> "Power Density [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"], Right], MaxRecursion -> 6, PlotPoints -> {50, 50},ImageSize-> Large,PerformanceGoal->"Quality",ViewPoint->{-1.6412890780984561`,-2.1057237655434045`,2.078965508453782`},ViewVertical->{0.37770153310191346`,0.4845795327270021`,0.7890020458494038`}};

plot3DCellPowerDensityVsSocAndCurrentDensity[opts:OptionsPattern[{plot3DCellPowerDensityVsSocAndCurrentDensity, Plot3D}]] :=
    Module[{tabLimElCurrerntDensityDischargingToSoc, limElCurrerntDensityDischargingToSocFun, minElCurrentDensityDischarge, memAreaCM2, maxVoltage, maxPowerDensity, resultPlot},
        memAreaCM2 = memArea * 100^2;
        maxVoltage = cellVoltageOcv[OptionValue[maxSoc]];
        maxPowerDensity = maxPower[OptionValue[maxSoc]] * 1000 / memAreaCM2;
        tabLimElCurrerntDensityDischargingToSoc = Table[{limElCurrentDischarging[soc] * 1000 / memAreaCM2, soc}, {soc, OptionValue[minSoc], OptionValue[maxSoc], OptionValue[\[Delta]Soc]}];
        limElCurrerntDensityDischargingToSocFun = Interpolation[tabLimElCurrerntDensityDischargingToSoc];
        minElCurrentDensityDischarge = Max[limElCurrentDischarging[OptionValue[maxSoc]] * 1000 / memAreaCM2, OptionValue[minElCurrentDensity]];
resultPlot=Plot3D[Evaluate[If[soc > limElCurrerntDensityDischargingToSocFun[elCurrentDensityMilliAmperePerCm2], Re[cellVoltage[soc, elCurrentDensityMilliAmperePerCm2 * memAreaCM2 / 1000]] * Abs[elCurrentDensityMilliAmperePerCm2],0]],{elCurrentDensityMilliAmperePerCm2,minElCurrentDensityDischarge,OptionValue[maxElCurrentDensity]},{soc,OptionValue[minSoc],OptionValue[maxSoc]},
RegionFunction -> Function[{elCurrentDensityMilliAmperePerCm2, soc}, soc > limElCurrerntDensityDischargingToSocFun[elCurrentDensityMilliAmperePerCm2]+0.0005],
 Evaluate[FilterRules[Flatten[{opts}], Options[Plot3D]]], Evaluate[FilterRules[Options[plot3DCellPowerDensityVsSocAndCurrentDensity], Options[Plot3D]]], ColorFunction ->(ColorData["Rainbow"][#3]&), ColorFunctionScaling -> True,PlotRange -> {{OptionValue[maxElCurrentDensity], OptionValue[minElCurrentDensity]},{OptionValue[minSoc], OptionValue[maxSoc]},{0,300}},PlotLegends -> Placed[BarLegend[Automatic, LegendLabel -> "Power Density [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"], Right]];
lgd=BarLegend[{"Rainbow",{0,maxPowerDensity}},LegendLabel->"Power Density [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"];
{resultPlot,lgd}
    ];


(* ::Input::Initialization:: *)
Options[plotMaximumPowerDensity]={minSoc-> 0.01,maxSoc-> 0.99,PlotLabel-> "Maximum Power Density",FrameLabel->{"SoC","Power Density [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"},PlotLegends-> None,ScalingFunctions->{"Reverse",None}};

plotMaximumPowerDensity[opts:OptionsPattern[{plotMaximumPowerDensity,Plot}]]:=Module[{memAreaCM2},
memAreaCM2=memArea*100^2;
Plot[maxPower[soc]*1000/memAreaCM2,{soc,OptionValue[minSoc],OptionValue[maxSoc]},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]]],Evaluate[FilterRules[Options[plotMaximumPowerDensity], Options[Plot]]]]
];


(* ::Input::Initialization:: *)
Options[plotLimitingElCurrentDensity]={minSoc-> 0.01,maxSoc-> 0.99,PlotLabel-> "Limiting Current Densities",FrameLabel-> {"SoC","Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"},
PlotLegends-> {"Limiting Discharging Current","Limiting Charging Current"},
PlotStyle-> {Full,Dashed},
ScalingFunctions->{"Reverse",None}};

plotLimitingElCurrentDensity[opts:OptionsPattern[{plotLimitingElCurrentDensity,Plot}]]:=Module[{memAreaCM2},
memAreaCM2=memArea*100^2;
Plot[{limElCurrentDischarging[soc] 1000/memAreaCM2,limElCurrentCharging[soc] 1000/memAreaCM2},{soc,OptionValue[minSoc],OptionValue[maxSoc]},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]]],Evaluate[FilterRules[Options[plotLimitingElCurrentDensity], Options[Plot]]]]
];


(* ::Input::Initialization:: *)
cellVoltageVsElCurrentDensityAtGivenSocAndFlowRate[soc_,flowRateValue_]:=Module[{limElCurrentDensity,numEvaluations=500,memAreaCM2,currentModelOptions,tabElCurrentDensityToVoltage},
currentFlowRate=modelParams[flowRate];
setModelParams[{flowRate->flowRateValue}];
memAreaCM2=memArea*100^2;
limElCurrentDensity=limElCurrentDischarging[soc] 1000/memAreaCM2;
tabElCurrentDensityToVoltage=Table[{elCurrentDensityMilliAmperePerCm2,cellVoltage[soc,elCurrentDensityMilliAmperePerCm2*memAreaCM2/1000]},{elCurrentDensityMilliAmperePerCm2,0,limElCurrentDensity*(1-1/numEvaluations),limElCurrentDensity/numEvaluations}];If[tabElCurrentDensityToVoltage[[-1,2]]>0,tabElCurrentDensityToVoltage=Append[tabElCurrentDensityToVoltage,{limElCurrentDensity,0}]];
setModelParams[{flowRate-> currentFlowRate}];
Select[tabElCurrentDensityToVoltage,#[[2]]>= 0&]
];

Options[plotCellPerformanceForDifferentFlowRates]={ScalingFunctions->{"Reverse",None},lstFlowRates-> {8,16,32}*1/(60*10^6),soc-> 0.5};

plotCellPerformanceForDifferentFlowRates[opts:OptionsPattern[{plotCellPerformanceForDifferentFlowRates,Plot}]]:=Module[{lstFlowRateValues,tabElCurrentDensityToVoltage,tabElCurrentDensityToPowerDensity},
lstFlowRateValues=OptionValue[lstFlowRates];
tabElCurrentDensityToVoltage=Table[cellVoltageVsElCurrentDensityAtGivenSocAndFlowRate[OptionValue[soc],lstFlowRateValues[[i]]],{i,1,Length[lstFlowRateValues]}];
tabElCurrentDensityToPowerDensity=Table[{tabElCurrentDensityToVoltage[[i,j,1]],tabElCurrentDensityToVoltage[[i,j,2]]*Abs[tabElCurrentDensityToVoltage[[i,j,1]]]},{i,1,Length[tabElCurrentDensityToVoltage]},{j,1,Length[tabElCurrentDensityToVoltage[[i]]]}];
{ListPlot[Evaluate[tabElCurrentDensityToVoltage],PlotLegends->Evaluate[Table["\!\(\*SubscriptBox[\(Q\), \(\(F\)\(\\\ \)\)]\)= "<>ToString[60*10^6 lstFlowRateValues[[i]]]<>" [ml/min]",{i,1,Length[lstFlowRateValues]}]],Joined-> True,PlotRange->{Automatic,{0,All}},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]]],Evaluate[FilterRules[Options[plotCellPerformanceForDifferentFlowRates], Options[Plot]]],PlotLabel-> "Cell Voltage",FrameLabel-> {"El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","Voltage [V]"}],
ListPlot[Evaluate[tabElCurrentDensityToPowerDensity],PlotLegends->Evaluate[Table["\!\(\*SubscriptBox[\(Q\), \(\(F\)\(\\\ \)\)]\)= "<>ToString[60*10^6 lstFlowRateValues[[i]]]<>" [ml/min]",{i,1,Length[lstFlowRateValues]}]],Joined-> True,PlotRange->{Automatic,{0,All}},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]]],Evaluate[FilterRules[Options[plotCellPerformanceForDifferentFlowRates], Options[Plot]]],PlotLabel-> "Cell Power Density",FrameLabel-> {"El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","Power Density [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"}]}
];


(* ::Input::Initialization:: *)
Options[plotElectrolyteVolume]={PlotRange-> {{0,1},Automatic},PlotLegends->{"\!\(\*SubscriptBox[\(V\), \(-\)]\)","\!\(\*SubscriptBox[\(V\), \(+\)]\)"},Frame-> True,PlotTheme-> "Detailed",FrameLabel->{"SoC","Electrolyte Volume [mL]"},PlotLabel->"Electro-Osmosis",PlotStyle-> {Full,Dashed}};
plotElectrolyteVolume[opts:OptionsPattern[{plotElectrolyteVolume,Plot}]]:=Module[{volumeNeg,volumePos},
volumeNeg[soc_]:=nRedNeg[soc]*modelParams[partialMolarVolRedNeg]+nOxNeg[soc]*modelParams[partialMolarVolOxNeg]+nSolventNeg[soc]*modelParams[partialMolarVolSolvent];(*[m^3]*)
volumePos[soc_]:=nRedPos[soc]*modelParams[partialMolarVolRedPos]+nOxPos[soc]*modelParams[partialMolarVolOxPos]+nSolventPos[soc]*modelParams[partialMolarVolSolvent]
;(*[m^3]*)
Plot[{10^6 volumeNeg[soc],10^6 volumePos[soc]},{soc,0,1},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotElectrolyteVolume], Options[Plot]]]]]
];



(* ::Input::Initialization:: *)
voltageEfficiency[elCurrent_,lowVoltageCutoff_,highVoltageCutoff_]:=Module[{socLowVoltageCutoff,socHighVoltageCutoff,elCurrentAbs=Abs[elCurrent],vCharging,vDischarging,socLowLimit=0.001,socHighLimit=0.999},

If[cellVoltage[socLowLimit,elCurrentAbs]>=  highVoltageCutoff ||cellVoltage[socHighLimit,-elCurrentAbs]<= lowVoltageCutoff ,Return[0]];

If[cellVoltage[socHighLimit,elCurrentAbs]<= highVoltageCutoff,socHighVoltageCutoff=socHighLimit,socHighVoltageCutoff=soc/.FindRoot[cellVoltage[soc,elCurrentAbs]-highVoltageCutoff,{soc,socLowLimit,socHighLimit},Method->"Brent",AccuracyGoal->6,PrecisionGoal->6]];If[cellVoltage[socLowLimit,-elCurrentAbs]>=  lowVoltageCutoff,socLowVoltageCutoff=socLowLimit,socLowVoltageCutoff=soc/.FindRoot[cellVoltage[soc,-elCurrentAbs]-lowVoltageCutoff,{soc,socLowLimit,socHighLimit},Method->"Brent",AccuracyGoal->6,PrecisionGoal->6]];vCharging=NIntegrate[cellVoltage[soc,elCurrentAbs],{soc,socLowVoltageCutoff,socHighVoltageCutoff},AccuracyGoal->6,PrecisionGoal->6];vDischarging=NIntegrate[cellVoltage[soc,-elCurrentAbs],{soc, socLowVoltageCutoff,socHighVoltageCutoff},AccuracyGoal->6,PrecisionGoal->6];vDischarging/vCharging];

Options[plotVoltageEfficiency]={PlotLabel-> "Voltage Efficiency",FrameLabel->{"El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","Voltage Efficiency [-]"},PlotLegends-> None,
lowVoltageCutoff-> 0.9,highVoltageCutoff-> 1.5,
elCurrentDensityMin-> 40,elCurrentDensityMax-> 160,elCurrentDensityStepSize-> 40,PlotRange-> {0,Automatic}};

plotVoltageEfficiency[opts:OptionsPattern[{plotVoltageEfficiency,ListPlot}]]:=Module[{memAreaCM2,elCurrentToVoltageEfficiency},
memAreaCM2=memArea*100^2;
elCurrentToVoltageEfficiency=Table[{elCurrent*10^3/memAreaCM2,voltageEfficiency[elCurrent,OptionValue[lowVoltageCutoff],OptionValue[highVoltageCutoff]]},{elCurrent,OptionValue[elCurrentDensityMin]*memAreaCM2/10^3,OptionValue[elCurrentDensityMax]*memAreaCM2/10^3,OptionValue[elCurrentDensityStepSize]*memAreaCM2/10^3}];
ListPlot[elCurrentToVoltageEfficiency,Joined->True,PlotMarkers->Automatic,Evaluate[FilterRules[Flatten[{opts}], Options[ListPlot]]],Evaluate[FilterRules[Options[plotVoltageEfficiency],Options[ListPlot]]]]
];


(* ::Chapter:: *)
(*Studies*)


(* ::Input::Initialization:: *)
runOpenCircuitVoltage[config_] :=
  Module[{ocv, output},
    ocv = cellVoltageOcv[config[["soc"]]];
    output = {"open_circuit_voltage" -> ocv};
    Return[output];
  ];

runMaximumPowerDensity[config_] :=
  Module[{maxPowerDensityValue, output},
    maxPowerDensityValue = maxPower[config[["soc"]]] / memArea;
    output = {"max_power_density" -> maxPowerDensityValue};
    Return[output];
  ];

runVoltageEfficiency[config_] :=
  Module[{voltageEfficiencyValue, output},
    voltageEfficiencyValue = voltageEfficiency[config[["el_current_density"]] * memArea, config[["low_cutoff_voltage"]], config[["high_cutoff_voltage"]]];
    output = {"voltage_efficiency" -> voltageEfficiencyValue};
    Return[output];
  ];


(* ::Section:: *)
(*Sensitivity Analysis*)


(* ::Input::Initialization:: *)
cellVoltageDerivativeFD[nameInput_,socInput_,currentInput_]:=Module[{value,voltage,voltageL,voltageR,\[Delta]},
voltage=cellVoltage[socInput,currentInput];
\[Delta]=Sqrt[$MachineEpsilon]*voltage;

 If[SymbolName[nameInput]== "soc",
voltageR=cellVoltage[socInput(1+\[Delta]/2),currentInput];
voltageL=cellVoltage[socInput(1-\[Delta]/2),currentInput];
Return[(voltageR-voltageL)/(\[Delta]*socInput)];
];
 If[SymbolName[nameInput]== "current",
voltageR=cellVoltage[socInput,currentInput(1+\[Delta]/2)];
voltageL=cellVoltage[socInput,currentInput(1-\[Delta]/2)];
Return[(voltageR-voltageL)/(\[Delta]*currentInput)];
];
value=modelParams[nameInput];
setModelParams[{
	nameInput->value*(1-\[Delta]/2)
}];
voltageL=cellVoltage[socInput,currentInput];
setModelParams[{
	nameInput->value*(1+\[Delta]/2) 
}];
voltageR=cellVoltage[socInput,currentInput];
setModelParams[{
	nameInput->value
}];
(voltageR-voltageL)/(\[Delta]*value)
];

runSensitivityAnalysis[config_]:=Module[{numSamples,numParams,params,ranges,refValues,meanValues,stdValues,samples,cellVoltageElasticity,strOutput,output,lstSensitivityResults},

numSamples=config[["num_samples"]];numParams=Length[config[["parameters"]]];params=ranges=refValues=meanValues=stdValues=ConstantArray[0,numParams];samples=cellVoltageElasticity=Table[0,{idxParam,1,numParams},{idxSample,1,numSamples}];
lstSensitivityResults={};

For[idxParam=1,idxParam<= numParams,idxParam++,
params[[idxParam]]=config[["parameters"]][[idxParam]][["name"]];
ranges[[idxParam]]=config[["parameters"]][[idxParam]][["range"]];
samples[[idxParam,;;]]=RandomReal[ranges[[idxParam]],numSamples];
refValues[[idxParam]]=If[ config[["parameters"]][[idxParam]][["reference_value"]]=="model_parameter",modelParams[params[[idxParam]]/.interfaceOptionsToModelOptions], config[["parameters"]][[idxParam]][["reference_value"]]];
];
SoCref=config[["state_of_charge"]];
Iref=config[["electric_current_density"]]*memArea;
cellVoltageref=cellVoltage[SoCref, Iref ];


For[idxSample=1,idxSample<=numSamples,idxSample++,
modelParamSettings={};
For[idxParam=1,idxParam<= numParams,idxParam++,
AppendTo[modelParamSettings,(params[[idxParam]]/.interfaceOptionsToModelOptions)->samples[[idxParam,idxSample]]];
];
initModel[modelParamSettings];

For[idxParam=1,idxParam<= numParams,idxParam++,
cellVoltageElasticity[[idxParam,idxSample]]=Abs[cellVoltageDerivativeFD[params[[idxParam]]/.interfaceOptionsToModelOptions,SoCref,Iref]*refValues[[idxParam]]/cellVoltageref];
];
];


For[idxParam=1,idxParam<= numParams,idxParam++,
{meanValues[[idxParam]],stdValues[[idxParam]]}={Mean[cellVoltageElasticity[[idxParam,;;]]],StandardDeviation[cellVoltageElasticity[[idxParam,;;]]]};
AppendTo[lstSensitivityResults,{"name"-> params[[idxParam]],"mean"-> meanValues[[idxParam]],"standard_deviation"-> stdValues[[idxParam]]}];
];
(*sort sensitivity results according to the mean in decreasing order*)
lstSensitivityResults=Sort[lstSensitivityResults,("mean"/.#1)>("mean"/.#2)&];

output={"sensitivity_analysis"-> lstSensitivityResults};
Return[output];
];


(* ::Input::Initialization:: *)
checkModel[]:=Module[{totalMass, \[Epsilon]=10^-8,\[Eta]Value,iNDcheck,\[Eta]BvImplNDcheck,iNDValue,socValue,\[Eta]BvValue},

On[Assert];

(*check consistency of cellVoltage and cellVoltageOcv in case of zero el. current*)
Assert[Abs[cellVoltage[0.1,0]-cellVoltageOcv[0.1]//FullSimplify]<\[Epsilon]]//FullSimplify;
Assert[Abs[cellVoltage[0.1,0]-cellVoltageOcv[0.1]//FullSimplify]<\[Epsilon]]//FullSimplify;

(*check conservation of mass*)
totalMass[soc_]:=(cRedNeg[soc]*molarMassRedNeg+cOxNeg[soc]*molarMassOxNeg+cRedPos[soc]*molarMassRedPos+cOxPos[soc]*molarMassOxPos)
Assert[Abs[totalMass[0.2]-totalMass[0.8]]/Abs[totalMass[0.5]]<\[Epsilon]];

(*check total overpotential formulated in terms of dimensionless Sherwood and Kinetic number*)
iNDcheck[soc_,\[Eta]ND_,n_,domId_]:=Module[{coxbND=cOxAvgND[soc,0,domId],credbND=cRedAvgND[soc,0,domId],kiValue=ki[[domId]]},( coxbND*credbND(Exp[n \[Eta]ND]-1)kiValue sh n)/(credbND kiValue n + coxbND Exp[n \[Eta]ND] kiValue n+Sqrt[coxbND credbND]Exp[n \[Eta]ND/2] sh)];(*dimensionless geom. el. current density*)
\[Eta]BvImplNDcheck[soc_,elCurrentDensityND_,n_,domId_]:=Module[{kiValue=ki[[domId]],coxbND=cOxAvgND[soc,0,domId],credbND=cRedAvgND[soc,0,domId]},
(1/n)*(2*ArcSinh[(elCurrentDensityND*sh)/(2n kiValue Sqrt[(elCurrentDensityND+coxbND*sh)*(credbND*sh-elCurrentDensityND)])]-Log[coxbND/credbND*(credbND*sh-elCurrentDensityND)/(elCurrentDensityND+coxbND*sh)])
];(*dimensionless total overpotential*)
\[Eta]Value=0.1234;
socValue=0.9;
iNDValue=iNDcheck[socValue,\[Eta]Value,1,idNeg];
\[Eta]BvValue=\[Eta]BvImplNDcheck[socValue,iNDValue,1,idNeg];
Assert[Abs[\[Eta]Value-\[Eta]BvValue]<10^-6];
\[Eta]Value=0.25;
socValue=0.2;
iNDValue=iNDcheck[socValue,\[Eta]Value,2,idPos];
\[Eta]BvValue=\[Eta]BvImplNDcheck[socValue,iNDValue,2,idPos];
Assert[Abs[\[Eta]Value-\[Eta]BvValue]<10^-6];

(*check signs of Butler-Volmer overpotential and ohmic resistance*)
Assert[ \[Eta]Bv[0.7, -0.1, idPos]<0&&\[Eta]Bv[0.7, -0.1, idNeg]>0];
Assert[ \[Eta]Bv[0.7, 0.1, idPos]>0&&\[Eta]Bv[0.7, 0.1, idNeg]<0];
Assert[ \[Eta]Bv[0.3, -0.1, idPos]<0&&\[Eta]Bv[0.3, -0.1, idNeg]>0];
Assert[ \[Eta]Bv[0.3, 0.1, idPos]>0&&\[Eta]Bv[0.3, 0.1, idNeg]<0];
Assert[ \[Eta]Ohmic[0.3, -0.1]<0&&\[Eta]Ohmic[0.3, 0.1]>0];

(*check arithmetic bulk concentration average*)
Assert[Abs[cRedAvgND[0.9,0.0,idNeg]-cRedND[0.9,idNeg]]<\[Epsilon]&&Abs[cRedAvgND[0.9,0.0,idPos]-cRedND[0.9,idPos]]<\[Epsilon]];
Assert[cOxAvgND[0.9,-10^-5,idPos]<cOxAvgND[0.9,0.0,idPos]&&cOxAvgND[0.9,10^-5,idPos]>cOxAvgND[0.9,0.0,idPos]];
Assert[cRedAvgND[0.9,-10^-5,idPos]>cRedAvgND[0.9,0.0,idPos]&&cRedAvgND[0.9,10^-5,idPos]<cRedAvgND[0.9,0.0,idPos]];
Assert[cOxAvgND[0.9,-10^-5,idNeg]<cOxAvgND[0.9,0.0,idNeg]&&cOxAvgND[0.9,10^-5,idNeg]>cOxAvgND[0.9,0.0,idNeg]];
Assert[cRedAvgND[0.9,-10^-5,idNeg]>cRedAvgND[0.9,0.0,idNeg]&&cRedAvgND[0.9,10^-5,idNeg]<cRedAvgND[0.9,0.0,idNeg]];
Off[Assert];
];


(* ::Input::Initialization:: *)
End[];
EndPackage[];
