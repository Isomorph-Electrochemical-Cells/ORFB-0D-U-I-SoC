(* ::Package:: *)

(* ::Title:: *)
(*0D-Voltage-Current-Soc Model*)


(* ::Text:: *)
(*Author : Roman P. Schaerer, 2020*)


(* ::Input::Initialization:: *)
BeginPackage["ZeroDimVoltageCurrentSocModel`"];


(* ::Section:: *)
(*Usages*)


(* ::Input::Initialization:: *)
initModel::usage="initModel initializes the model and has to be called before any model evaluation can be performed. When called as initModel[] without arguments, the default model parameters are used. The default parameters can be overwritten by providing a list of rules to initModel, e.g. initModel[{elLength->0.01,flowRate-> 20}] sets the electrode length in the through-plane direction to 0.01 m and the flow rate to 20 ml/s."
getModelOptionAssoc::usage="getModelOptionAssoc returns all model options as an association. The value of a specific option can be easily extracted, e.g. getModelOptionAssoc[flowRate] returns the value of the option flowRate";
getModelOptionRules::usage="getModelOptionRules returns all model options as a list of rules.";


(* ::Input::Initialization:: *)
cellVoltage::usage="cellVoltage evaluates the total cell voltage for a given state-of-charge and electric current. Example: cellVoltage[0.4,-0.1] yields the cell voltage at SoC=0.4 and a discharging el. current of -0.1 A";
cellVoltageOcv::usage="cellVoltageOcv evaluates the open circuit potential for a given state-of-charge. Example: cellVoltage[0.9] yields the OCV at SoC=0.9.";
cellVoltageOcvAndBv::usage="cellVoltageOcvAndBv evaluates the cell voltage of the open circuit potential minus the activation and concentration overpotentials at a given state-of-charge and electric current. Example: cellVoltageOcvAndBv[0.1,0.5] yields the voltage at SoC=0.1 and a charging el. current of 0.5 A";

\[Eta]Bv::usage="Activation and concentration overpotential [V]";
\[Eta]ElRes::usage="Ohmic losses [V]";

limElCurrentCharging::usage="limElCurrentCharging yields the limiting electric (charging) current at a specified SoC, e.g. limElCurrentCharging[0.7] yields the limiting electric current (in Ampere) at SoC=0.7";
limElCurrentDischarging::usage="limElCurrentDischarging yields the limiting electric (discharging) current at a specified SoC, e.g. limElCurrentDischarging[0.5] yields the limiting electric current (in Ampere) at SoC=0.5";


(* ::Input::Initialization:: *)
T::usage="Constant temperature of the system [K]";
cOxNegSoc0::usage="Initial molar concentration of oxidizes species in negolyte (at SoC=0) [mol/l]";
cRedNegSoc0::usage="Initial molar concentration of reduced species in negolyte (at SoC=0) [mol/l]";
cOxPosSoc0::usage="Initial molar concentration of oxidized species in posolyte (at SoC=0) [mol/l]";
cRedPosSoc0::usage="Initial molar concentration of reduzed species in posolyte (at SoC=0) [mol/l]";
electrolyteVolSoc0::usage="Initial electrolyte volume per half-cell [l]";
elLength::usage="Thickness of electrode compartment in the through-plane direction [m]";
elWidth::usage="Width of electrode compartment in the in-plane direction orthogonal to the convective flow direction [m]";
elHeight::usage="Height of electrode compartment in the in-plane direction along the convective flow direction [m]";
specElectrodeSurfArea::usage="Specific surface area of the electrodes [m^-1]";
flowRate::usage="Flow rate [ml/min]";
rCell::usage="Total ohmic cell resistance [V/A]";
eNeg0::usage="Standard half-cell potential for MV [V]";
ePos0::usage="Standard half-cell potential for TMATEMPO [V]";
kneg::usage="Reaction constant at negative electrode [m/s]";
kpos::usage="Reaction constant at positive electrode [m/s]";
\[Kappa]s::usage="Transported solvent molecules per transferred ion";
massTransferCoeffModel::usage="Mass transfer model function taking as argument the superficial velocity, e.g. (a*\!\(\*SuperscriptBox[\(#\), \(b\)]\))& [m/s]";
molarMassSolvent::usage="Molar mass of the solvent [kg/mol]";
molarMassOxNeg::usage="Molar mass of the salt in oxidized form in the negolyte [kg/mol]";
molarMassRedPos::usage="Molar mass of the salt in reduced form in the posolyte [kg/mol]";
\[Rho]Solvent::usage="Mass density of the solvent [kg/m^3]";\[Rho]MixNegSoc0 ::usage="Mass density of negolyte at initial state (SoC=0) [kg/l]";\[Rho]MixPosSoc0::usage ="Mass density of posolyte at initial state (SoC=0) [kg/l]";


(* ::Input::Initialization:: *)
plotElectroActiveSpeciesMoles::usage="plotElectroActiveSpeciesMoles returns a plot showing the number of moles of electro-active species in the posolyte and negolyte vs SoC";
plotElectroActiveSpeciesMoleFractions::usage="plotElectroActiveSpeciesMoleFractions returns a plot showing the mole fractions of the electro-active species in the posolyte and negolyte vs SoC";
plotElectroActiveSpeciesMolalities::usage="plotElectroActiveSpeciesMolalities returns a plot showing the molalities of the electro-active species in the posolyte and negolyte vs SoC";
plotCellVoltageVsElCurrentDensity::usage="plotCellVoltageVsElCurrentDensity returns a plot showing the total cell voltage vs the electric current density for the specified SoC values, e.g. plotCellVoltageVsElCurrentDensity[{lstSoc\[Rule] {0.2,0.3,0.4}}] shows 3 graphs corresponding to the cell voltage at the SoC values 0.2, 0.3 and 0.4";
plotCellPowerDensityVsElCurrentDensity::usage="plotCellVoltageVsElCurrentDensity returns a plot showing the power density vs the electric current density for the specified SoC values analogous to plotCellVoltageVsElCurrentDensity";
plotVoltageLossesVsElCurrentDensity::usage="plotVoltageLossesVsElCurrentDensity returns a plot showing the voltage losses vs the electric current density";
plotCellVoltageVsSoc::usage="plotCellVoltageVsSoc returns a plot showing the cell voltage vs the SoC";
plotCellPowerDensityVsSoc::usage="plotCellPowerDensityVsSoc returns a plot showing the power density vs the SoC";
plotCellVoltageVsSocAndCurrentDensity::usage="plotCellVoltageVsSocAndCurrentDensity generates a contour plot showing the cell voltage vs the SoC and el. current density";
plotCellPowerDensityVsSocAndCurrentDensity::usage="plotCellPowerDensityVsSocAndCurrentDensity generates a contour plot showing the cell power density vs the SoC and el. current density";
plotMaximumPowerDensity::usage="plotMaximumPowerDensity returns a plot showing the maximum power density vs the SoC";
plotLimitingElCurrentDensity::usage="plotLimitingElCurrentDensity returns a plot showing both the limiting charging and discharging currents vs the SoC";
plotCellPerformanceForDifferentFlowRates::usage="plotCellPerformanceForDifferentFlowRates returns a list of plots: the first plot shows the cell voltage vs the SoC, whereas the second plot shows the power density vs the SoC; the flow rates can be specified with the options lstFlowRates, e.g. plotCellPerformanceForDifferentFlowRates[{soc\[Rule] 0.5,lstFlowRates\[Rule] {16,32}] yields the polarization plots at SoC=0.5 and the flow rates 16 ml/min and 32 ml/min";
plotElectrolyteVolume::usage="plotElectrolyteVolume returns a plot showing the electrolyte volume of the negolyte and posolyte vs the SoC";


(* ::Section:: *)
(*Implementation*)


(* ::Input::Initialization:: *)
Begin["`Private`"];


(* ::Input::Initialization:: *)
(*Set physical constants*)
R=8.314;(*Ideal gas constant*)
F=96485;(*Faraday constant*)
f=F/(R modelOptions[T]);(*inverse thermal voltage [V^-1]*)
fInv=(R modelOptions[T])/F;(*thermal voltage [V]*)



(* ::Input::Initialization:: *)
massDensityNeg[soc_]:=paraquatUnchargedMassDensFitFun[cRedNeg[soc]+cOxNeg[soc]];(*mass density of paraquat/water solution in kg/m^3*)
massDensityPos[soc_]:=tempoUnchargedMassDensFitFun[cRedPos[soc]+cOxPos[soc]](*mass density of TEMPTMA/water solution in kg/m^3*)


(* ::Input::Initialization:: *)
modelOptions={};(*variable storing the user-provided options*)


(* ::Subsection:: *)
(*Number of moles and molar volumes to molar concentrations*)


(* ::Input::Initialization:: *)
cRedNeg[soc_]:=nRedNeg[soc]/(nSolventNeg[soc]*molarVolSlvNeg[soc]+nRedNeg[soc]*molarVolRedNeg[soc]+nOxNeg[soc]*molarVolOxNeg[soc]);(*[mol/l]*)
cOxNeg[soc_]:=nOxNeg[soc]/(nSolventNeg[soc]*molarVolSlvNeg[soc]+nRedNeg[soc]*molarVolRedNeg[soc]+nOxNeg[soc]*molarVolOxNeg[soc]);(*[mol/l]*)
cRedPos[soc_]:=nRedPos[soc]/(nSolventPos[soc]*molarVolSlvPos[soc]+nRedPos[soc]*molarVolRedPos[soc]+nOxPos[soc]*molarVolOxPos[soc]);(*[mol/l]*)
cOxPos[soc_]:=nOxPos[soc]/(nSolventPos[soc]*molarVolSlvPos[soc]+nRedPos[soc]*molarVolRedPos[soc]+nOxPos[soc]*molarVolOxPos[soc]);(*[mol/l]*)



(* ::Input::Initialization:: *)
nRedNeg[soc_]:=nRedSoc0Neg-(nOxNeg[soc]-nOxNegSoc0);(*[mol]*)
nOxNeg[soc_]:=nOxNegSoc0+soc(nOxSoc1Neg-nOxNegSoc0);(*[mol]*)
nOxPos[soc_]:=nOxPosSoc0-(nRedPos[soc]-nRedPosSoc0);(*[mol]*)
nRedPos[soc_]:=nRedPosSoc0+soc(nRedSoc1Pos-nRedPosSoc0);(*[mol]*)
nSolventNeg[soc_]:=nSolventNegSoc0+modelOptions[\[Kappa]s]*(nRedPos[soc]-nRedPosSoc0);(*[mol]*)
nSolventPos[soc_]:=nSolventPosSoc0-modelOptions[\[Kappa]s]*(nRedPos[soc]-nRedPosSoc0);(*[mol]*)



(* ::Input::Initialization:: *)
bRedNeg[soc_]:=nRedNeg[soc]/(nSolventNeg[soc]*modelOptions[molarMassSolvent]);(*molality [mol/kg]*)
bOxNeg[soc_]:=nOxNeg[soc]/(nSolventNeg[soc]*modelOptions[molarMassSolvent]);(*molality [mol/kg]*)
bOxPos[soc_]:=nOxPos[soc]/(nSolventPos[soc]*modelOptions[molarMassSolvent]);(*molality [mol/kg]*)
bRedPos[soc_]:=nRedPos[soc]/(nSolventPos[soc]*modelOptions[molarMassSolvent]);(*molality [mol/kg]*)



(* ::Input::Initialization:: *)
\[CapitalDelta]b[soc_,elCurrentDensity_]:=elCurrentDensity/(km F modelOptions[\[Rho]Solvent]);(*molality [mol/kg]*)

gOxNeg[soc_,elCurrentDensity_]:=(bOxNeg[soc]+\[CapitalDelta]b[soc,elCurrentDensity])/bOxNeg[soc];(*[-]*)
gRedNeg[soc_,elCurrentDensity_]:=(bRedNeg[soc]-\[CapitalDelta]b[soc,elCurrentDensity])/bRedNeg[soc];(*[-]*)
gOxPos[soc_,elCurrentDensity_]:=(bOxPos[soc]+\[CapitalDelta]b[soc,elCurrentDensity])/bOxPos[soc];(*[-]*)
gRedPos[soc_,elCurrentDensity_]:=(bRedPos[soc]-\[CapitalDelta]b[soc,elCurrentDensity])/bRedPos[soc];(*[-]*)



(* ::Subsection:: *)
(*Battery Voltage Model*)


(* ::Input::Initialization:: *)
eNeg0Formal[soc_]:=modelOptions[eNeg0];
ePos0Formal[soc_]:=modelOptions[ePos0];
eNernstNeg[soc_]:=eNeg0Formal[soc]-fInv Log[(bRedNeg[soc])/(bOxNeg[soc])];
eNernstPos[soc_]:=ePos0Formal[soc]-fInv Log[(bRedPos[soc])/(bOxPos[soc])];

elCurrentToElCurrentDensityPos[elCurrent_]:=elCurrent/totElectrodeArea;
elCurrentToElCurrentDensityNeg[elCurrent_]:=-elCurrent/totElectrodeArea;

elExchangeCurrentNeg[soc_]:=F modelOptions[kneg] *10^3*Sqrt[bRedNeg[soc]*bOxNeg[soc]];
elExchangeCurrentPos[soc_]:=F modelOptions[kpos] *10^3*Sqrt[bRedPos[soc]*bOxPos[soc]];



(* ::Input::Initialization:: *)
\[Eta]BvPos[soc_,elCurrent_]:=\[Eta]BvPosImpl[soc,elCurrentToElCurrentDensityPos[elCurrent]];
\[Eta]BvPosImpl[soc_,elCurrentDensity_]:=2*fInv*Log[(elCurrentDensity+Sqrt[elCurrentDensity^2+4*gOxPos[soc,elCurrentDensity]*gRedPos[soc,elCurrentDensity]*elExchangeCurrentPos[soc]^2])/(2 gRedPos[soc,elCurrentDensity]* elExchangeCurrentPos[soc])];

\[Eta]BvNeg[soc_,elCurrent_]:=\[Eta]BvNegImpl[soc,elCurrentToElCurrentDensityNeg[elCurrent]];
\[Eta]BvNegImpl[soc_,elCurrentDensity_]:=2*fInv*Log[(elCurrentDensity+Sqrt[elCurrentDensity^2+4*gOxNeg[soc,elCurrentDensity]*gRedNeg[soc,elCurrentDensity]*elExchangeCurrentNeg[soc]^2])/(2 gRedNeg[soc,elCurrentDensity]* elExchangeCurrentNeg[soc])];


(* ::Input::Initialization:: *)
\[Eta]Bv[soc_,elCurrent_]:=\[Eta]BvPos[soc,elCurrent]-\[Eta]BvNeg[soc,elCurrent];
\[Eta]ElRes[soc_,elCurrent_]:=elCurrent*modelOptions[rCell];

cellVoltageOcv[soc_]:=(eNernstPos[soc]-eNernstNeg[soc]);
cellVoltageOcvAndBv[soc_,elCurrent_]:=cellVoltageOcv[soc]+\[Eta]Bv[soc,elCurrent];
cellVoltage[soc_,elCurrent_]:=cellVoltageOcv[soc]+\[Eta]Bv[soc,elCurrent]+ \[Eta]ElRes[soc,elCurrent];


(* ::Input::Initialization:: *)
limElCurrentDensityPos[soc_,elCurrentDensity_]:=If[elCurrentDensity>=0,(km*modelOptions[\[Rho]Solvent]*F)*bRedPos[soc],-(km*modelOptions[\[Rho]Solvent]*F)*bOxPos[soc]];
limElCurrentDensityNeg[soc_,elCurrentDensity_]:=If[elCurrentDensity>=0,(km*modelOptions[\[Rho]Solvent]*F)*bOxNeg[soc],-(km*modelOptions[\[Rho]Solvent]*F)*bRedNeg[soc]];
limElCurrent[soc_,elCurrentDensity_]:=If[elCurrentDensity>= 0,Min[limElCurrentDensityPos[soc,elCurrentDensity]*totElectrodeArea,limElCurrentDensityNeg[soc,elCurrentDensity]*totElectrodeArea],Max[limElCurrentDensityPos[soc,elCurrentDensity]*totElectrodeArea,limElCurrentDensityNeg[soc,elCurrentDensity]*totElectrodeArea]];


(* ::Input::Initialization:: *)
limElCurrentDensityPosCharging[soc_]:=(km*modelOptions[\[Rho]Solvent]*F)*bRedPos[soc];
limElCurrentDensityPosDischarging[soc_]:=-(km*modelOptions[\[Rho]Solvent]*F)*bOxPos[soc];
limElCurrentDensityNegCharging[soc_]:=(km*modelOptions[\[Rho]Solvent]*F)*bOxNeg[soc];
limElCurrentDensityNegDischarging[soc_]:=-(km*modelOptions[\[Rho]Solvent]*F)*bRedNeg[soc];

limElCurrentCharging[soc_]:=Min[limElCurrentDensityPosCharging[soc]*totElectrodeArea,limElCurrentDensityNegCharging[soc]*totElectrodeArea];
limElCurrentDischarging[soc_]:=Max[limElCurrentDensityPosDischarging[soc]*totElectrodeArea,limElCurrentDensityNegDischarging[soc]*totElectrodeArea];
limElCurrent[soc_,elCurrentDensity_]:=If[elCurrentDensity>0,limElCurrentCharging[soc],limElCurrentDischarging[soc]];


(* ::Subsection:: *)
(*Set Default Model Parameters and Define Model Initialization Functions*)


(* ::Input::Initialization:: *)
Options[initModel] = {
    T -> 298.15,(*[K]*)
    electrolyteVolSoc0 -> 0.01,(*[l]*)
    elLength -> 0.4 / 100,(*[m]*)
    elWidth -> 2.236 / 100,(*[m]*)
    elHeight -> 2.236 / 100,(*[m]*)
    specElectrodeSurfArea-> 2 * 10^5,(*[m^-1]*)
    flowRate -> 16,(*[ml/min]*)
    rCell -> 0.286,(*[V/A]*)
    eNeg0 -> -0.63,(*[V]*)
    ePos0 -> 0.62,(*[V]*)
    kneg -> 3.3 * 10^-5,(*[m/s]*)
    kpos -> 4.2 * 10^-5,(*[m/s]*)
    \[Kappa]s -> 6,(*[-]*)
    cOxNegSoc0 -> 1.49,(*[mol/l]*)
    cRedNegSoc0 -> 0.0,(*[mol/l]*)
    cOxPosSoc0 -> 0.0,(*[mol/l]*)
    cRedPosSoc0 -> 1.12,(*[mol/l]*)
    electrolyteVolSoc0 -> 0.01,(*[l]*)
    massTransferCoeffModel -> ((4 * 10^-5) * #^0.9&),(*[m/s]*)
    molarMassSolvent -> 18.01528 / 1000,(*[kg/mol]*)
    molarMassOxNeg -> 0.25716,(*[kg/mol]*)
    molarMassRedPos -> 0.249803,(*[kg/mol]e*)
    \[Rho]Solvent -> 10^3,(*[kg/m^3]*)
    \[Rho]MixNegSoc0 -> 1.098844551,(*[kg/l]*)
    \[Rho]MixPosSoc0 -> 1.040112348 (*[kg/l]*)
};

getUniqueOptions[lst_] :=
    Association[lst];
assocToRules[assoc_] :=
    Thread[Keys[assoc] -> Values[assoc]]

modelOptions = {};
getModelOptionAssoc :=
    modelOptions;
getModelOptionRules :=
    assocToRules[modelOptions];


(* ::Input::Initialization:: *)
initModel[opts:OptionsPattern[]] :=
    Module[{},
        modelOptions = getUniqueOptions[Flatten[{Options[initModel], opts}]];
        electrodeVol = modelOptions[elLength] * modelOptions[elWidth] * modelOptions[elHeight];(*[m^3]*)
        memArea = modelOptions[elWidth] * modelOptions[elHeight];(*[m^2]*)
        totElectrodeArea = modelOptions[specElectrodeSurfArea] * electrodeVol;(*[m^2]*)
        nOxPosSoc0 = modelOptions[cOxPosSoc0] * modelOptions[electrolyteVolSoc0];(*[mol]*)
        nOxNegSoc0 = modelOptions[cOxNegSoc0] * modelOptions[electrolyteVolSoc0];(*[mol]*)
        nRedSoc0Neg = modelOptions[cRedNegSoc0] * modelOptions[electrolyteVolSoc0];(*[mol]*)
        nRedPosSoc0 = modelOptions[cRedPosSoc0] * modelOptions[electrolyteVolSoc0];(*[mol]*)
        nSolventNegSoc0 = (modelOptions[\[Rho]MixNegSoc0] * modelOptions[electrolyteVolSoc0] - nOxNegSoc0 * modelOptions[molarMassOxNeg]) / modelOptions[molarMassSolvent];(*[mol]*)
        nSolventPosSoc0 = (modelOptions[\[Rho]MixPosSoc0] * modelOptions[electrolyteVolSoc0] - nRedPosSoc0 * modelOptions[molarMassRedPos]) / modelOptions[molarMassSolvent];(*[mol]*)
        nOxSoc1Neg = nOxNegSoc0 - Min[nOxNegSoc0, nRedPosSoc0];(*[mol]*)
        nRedSoc1Pos = nRedPosSoc0 - Min[nOxNegSoc0, nRedPosSoc0];(*[mol]*)
        superficialVelocity = modelOptions[flowRate] / (1000 * 1000 * 60 * modelOptions[elLength] * modelOptions[elWidth]);(*[m/s]*)
        km = modelOptions[massTransferCoeffModel][superficialVelocity];(*[m/s]*)
        Return[True];
    ];


(* ::Input::Initialization:: *)
maxPower[soc_]:=Module[{minElCurrent},
minElCurrent=limElCurrentDischarging[soc];
FindMaximum[{Re[cellVoltage[soc,elCurrent]]*Abs[elCurrent],elCurrent>minElCurrent&&elCurrent<0},{elCurrent,minElCurrent/4}][[1]]
];


(* ::Subsection:: *)
(*Define Graphical Output Generating Functions*)


(* ::Input::Initialization:: *)
SetOptions[Plot, Frame -> True, Axes -> True, PlotTheme -> "Detailed", AxesStyle -> {Directive[Black, 14], Black}, LabelStyle -> {Directive[14]},PlotStyle-> {Full,Dashed,Dotted,DotDashed}];
SetOptions[ListPlot, Frame -> True, Axes -> True, PlotTheme -> "Detailed", AxesStyle -> {Directive[Black, 14], Black}, LabelStyle -> {Directive[14]},PlotStyle-> {Full,Dashed,Dotted,DotDashed}];


(* ::Input::Initialization:: *)
Options[plotElectroActiveSpeciesMoles]={PlotRange-> {{0,1},{0,Automatic}},PlotLegends->{"\!\(\*SubscriptBox[\(n\), \(red, -\)]\)","\!\(\*SubscriptBox[\(n\), \(ox, -\)]\)","\!\(\*SubscriptBox[\(n\), \(red, +\)]\)","\!\(\*SubscriptBox[\(n\), \(ox, +\)]\)"},Frame-> True,PlotTheme-> "Detailed",FrameLabel->{"SoC","Amount of Substance [mol]"},PlotLabel->"Amount of Substances vs SoC"};
plotElectroActiveSpeciesMoles[opts:OptionsPattern[{plotElectroActiveSpeciesMoles,Plot}]]:=Plot[{nRedNeg[soc],nOxNeg[soc],nRedPos[soc],nOxPos[soc]},{soc,0,1},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotElectroActiveSpeciesMoles], Options[Plot]]]]];

Options[plotElectroActiveSpeciesMoleFractions]={PlotRange-> {{0,1},{0,Automatic}},PlotLegends->{"\!\(\*SubscriptBox[\(x\), \(red, -\)]\)","\!\(\*SubscriptBox[\(x\), \(ox, -\)]\)","\!\(\*SubscriptBox[\(x\), \(red, +\)]\)","\!\(\*SubscriptBox[\(x\), \(ox, +\)]\)"},Frame-> True,PlotTheme-> "Detailed",FrameLabel->{"SoC","Mole Fraction"},PlotLabel->"Mole Fractions vs SoC"};
plotElectroActiveSpeciesMoleFractions[opts:OptionsPattern[{plotElectroActiveSpeciesMoleFractions,Plot}]]:=Plot[{nRedNeg[soc]/(nRedNeg[soc]+nOxNeg[soc]+nSolventNeg[soc]),nOxNeg[soc]/(nRedNeg[soc]+nOxNeg[soc]+nSolventNeg[soc]),nRedPos[soc]/(nRedPos[soc]+nOxPos[soc]+nSolventPos[soc]),nOxPos[soc]/(nRedPos[soc]+nOxPos[soc]+nSolventPos[soc])},{soc,0,1},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotElectroActiveSpeciesMoleFractions], Options[Plot]]]]];

Options[plotElectroActiveSpeciesMolalities]={PlotRange-> {{0,1},{0,Automatic}},PlotLegends->{"\!\(\*SubscriptBox[\(b\), \(red, -\)]\)","\!\(\*SubscriptBox[\(b\), \(ox, -\)]\)","\!\(\*SubscriptBox[\(b\), \(red, +\)]\)","\!\(\*SubscriptBox[\(b\), \(ox, +\)]\)"},Frame-> True,PlotTheme-> "Detailed",FrameLabel->{"SoC","Molality [mol/kg]"},PlotLabel->"Molalities vs SoC"};
plotElectroActiveSpeciesMolalities[opts:OptionsPattern[{plotElectroActiveSpeciesMolalities,Plot}]]:=Plot[{bRedNeg[soc],bOxNeg[soc],bRedPos[soc],bOxPos[soc]},{soc,0,1},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotElectroActiveSpeciesMolalities], Options[Plot]]]]];


(* ::Input::Initialization:: *)
Options[plotVoltageLossesVsElCurrentDensity]={soc-> 0.9,maxSoc-> 0.99,PlotLegends->{"\!\(\*SubscriptBox[\(\[Eta]\), \(Act\)]\)+\!\(\*SubscriptBox[\(\[Eta]\), \(Conc\)]\)","\!\(\*SubscriptBox[\(\[Eta]\), \(Ohmic\)]\)"},PlotLabel-> "Losses",FrameLabel-> {"El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","Voltage [V]"},ScalingFunctions->{"Reverse",None},PlotStyle-> {Full,Dashed},PlotStyle-> {Full,Dashed,Dotted,DotDashed}};
plotVoltageLossesVsElCurrentDensity[opts:OptionsPattern[{plotVoltageLossesVsElCurrentDensity,Plot}]]:=Module[{limElCurrentDischargingAtSoc,memAreaCM2,maxVoltage},
maxVoltage=cellVoltageOcv[OptionValue[soc]];
memAreaCM2=memArea*100^2;
limElCurrentDischargingAtSoc=limElCurrentDischarging[OptionValue[soc]]*1000/memAreaCM2;Plot[{\[Eta]Bv[OptionValue[soc],elCurrentDensityMilliAmperePerCm2*memAreaCM2/1000],\[Eta]ElRes[OptionValue[soc],elCurrentDensityMilliAmperePerCm2*memAreaCM2/1000]},{elCurrentDensityMilliAmperePerCm2,limElCurrentDischargingAtSoc,0},Epilog->{Style[Line[{{-limElCurrentDischargingAtSoc,-10},{-limElCurrentDischargingAtSoc,10}}],Dashed]},PlotRange->{{limElCurrentDischargingAtSoc-10,0},Automatic},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotVoltageLossesVsElCurrentDensity], Options[Plot]]]] ]
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
Options[plotCellVoltageVsSoc]={lstElCurrentDensities->{0,-100,-200,-400},minSoc-> 0.01,maxSoc-> 0.99,PlotLabel-> "Polarization Plot",ScalingFunctions->{"Reverse",None},PlotLabel-> "Polarization Plot",FrameLabel-> {"SoC","Voltage [V]"},PlotStyle-> {Full,Dashed,Dotted,DotDashed}};

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
Options[plotCellVoltageVsSocAndCurrentDensity]={minSoc-> 0.01,maxSoc-> 0.99,minElCurrentDensity-> -600,maxElCurrentDensity-> 0,\[Delta]Soc-> 0.01,PlotLabel-> "Cell Voltage",FrameLabel-> {"Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","SoC"},ScalingFunctions->{"Reverse",None},contourSpacing-> 0.05,PlotRangePadding->None,LabelStyle->Directive[18],PlotLegends->Placed[BarLegend[Automatic,LegendLabel-> ""],Right],MaxRecursion-> 2,PlotPoints-> {20,20}};

plotCellVoltageVsSocAndCurrentDensity[opts:OptionsPattern[{plotCellVoltageVsSocAndCurrentDensity,ContourPlot}]]:=Module[{tabLimElCurrerntDensityDischargingToSoc,limElCurrerntDensityDischargingToSocFun,minElCurrentDensityDischarge,memAreaCM2,maxVoltage,resultPlot},
memAreaCM2=memArea*100^2;
maxVoltage=cellVoltageOcv[OptionValue[maxSoc]];
tabLimElCurrerntDensityDischargingToSoc=Table[{limElCurrentDischarging[soc]*1000/memAreaCM2,soc},{soc,OptionValue[minSoc],OptionValue[maxSoc],OptionValue[\[Delta]Soc]}];
limElCurrerntDensityDischargingToSocFun=Interpolation[tabLimElCurrerntDensityDischargingToSoc];
minElCurrentDensityDischarge=Max[limElCurrentDischarging[OptionValue[maxSoc]]*1000/memAreaCM2,OptionValue[minElCurrentDensity]];
Off[InterpolatingFunction::dmval];
resultPlot=Show[{
ContourPlot[cellVoltage[soc,elCurrentDensityMilliAmperePerCm2*memAreaCM2/1000],{elCurrentDensityMilliAmperePerCm2,minElCurrentDensityDischarge,OptionValue[maxElCurrentDensity]},{soc,0.99,0.01(*OptionValue[minSoc],OptionValue[maxSoc]*)},RegionFunction->Function[{elCurrentDensityMilliAmperePerCm2,soc},soc>limElCurrerntDensityDischargingToSocFun[elCurrentDensityMilliAmperePerCm2]],
Contours -> Table[i, {i, 0, Floor[maxVoltage,OptionValue[ contourSpacing]], OptionValue[contourSpacing]}],
Evaluate[FilterRules[Flatten[{opts}], Options[ContourPlot]]],Evaluate[FilterRules[Options[plotCellVoltageVsSocAndCurrentDensity],Options[ContourPlot]]],ColorFunction->(ColorData["Rainbow"][Rescale[#,{0,maxVoltage}]]&),ColorFunctionScaling->False,PlotRange-> {{OptionValue[maxElCurrentDensity],OptionValue[minElCurrentDensity]},{OptionValue[minSoc],OptionValue[maxSoc]}}],Plot[limElCurrerntDensityDischargingToSocFun[elCurrentDensity],{elCurrentDensity,OptionValue[minElCurrentDensity],OptionValue[maxElCurrentDensity]},PlotStyle-> {Black,Thickness[0.006]},ScalingFunctions->{"Reverse",None},PlotLegends->None]}];
On[InterpolatingFunction::dmval];
resultPlot
];


(* ::Input::Initialization:: *)
Options[plotCellPowerDensityVsSocAndCurrentDensity] = {minSoc -> 0.01, maxSoc -> 0.99, minElCurrentDensity -> -600, maxElCurrentDensity -> 0, \[Delta]Soc -> 0.01, PlotLabel -> "Power Density", FrameLabel -> {"Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]", "SoC"}, ScalingFunctions -> {"Reverse", None}, contourSpacing -> 15, PlotRangePadding -> None, LabelStyle -> Directive[18], PlotLegends -> Placed[BarLegend[Automatic, LegendLabel -> ""], Right], MaxRecursion -> 2, PlotPoints -> {20, 20}};

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
            ContourPlot[cellVoltage[soc, elCurrentDensityMilliAmperePerCm2 * memAreaCM2 / 1000] * Abs[elCurrentDensityMilliAmperePerCm2], {elCurrentDensityMilliAmperePerCm2, minElCurrentDensityDischarge, OptionValue[maxElCurrentDensity]}, {soc,OptionValue[maxSoc],OptionValue[minSoc]}, RegionFunction -> Function[{elCurrentDensityMilliAmperePerCm2, soc}, soc > limElCurrerntDensityDischargingToSocFun[elCurrentDensityMilliAmperePerCm2]],
                Contours -> Table[i, {i, 0, Floor[maxPowerDensity,OptionValue[ contourSpacing]], OptionValue[contourSpacing]}],
                Evaluate[FilterRules[Flatten[{opts}], Options[ContourPlot]]], Evaluate[FilterRules[Options[plotCellPowerDensityVsSocAndCurrentDensity], Options[ContourPlot]]], ColorFunction -> (ColorData["Rainbow"][Rescale[#, {0, maxPowerDensity}]]&), ColorFunctionScaling -> False, PlotRange -> {{OptionValue[maxElCurrentDensity], OptionValue[minElCurrentDensity]}, {OptionValue[minSoc], OptionValue[maxSoc]}}
            ], Plot[limElCurrerntDensityDischargingToSocFun[elCurrentDensity], {elCurrentDensity, OptionValue[minElCurrentDensity], OptionValue[maxElCurrentDensity]}, PlotStyle -> {Black, Thickness[0.006]}, ScalingFunctions -> {"Reverse", None}, PlotLegends -> None]
        }];
        On[InterpolatingFunction::dmval];
        resultPlot
    ];


(* ::Input::Initialization:: *)
Options[plotMaximumPowerDensity]={minSoc-> 0.01,maxSoc-> 0.99,PlotLabel-> "Maximum Power Density",FrameLabel->{"SoC","Power Density [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"},PlotLegends-> None,ScalingFunctions->{"Reverse",None}};

plotMaximumPowerDensity[opts:OptionsPattern[{plotMaximumPowerDensity,Plot}]]:=Module[{memAreaCM2},
memAreaCM2=memArea*100^2;
Plot[maxPower[soc]*1000/memAreaCM2,{soc,OptionValue[minSoc],OptionValue[maxSoc]},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]]],Evaluate[FilterRules[Options[plotMaximumPowerDensity], Options[Plot]]]]
];


(* ::Input::Initialization:: *)
Options[plotLimitingElCurrentDensity]={minSoc-> 0.01,maxSoc-> 0.99,PlotLegends->None,PlotLabel-> "Limiting El. Current Density",FrameLabel-> {"SoC","El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"},
PlotLegends-> {"Limiting Discharging Current","Limiting Charging Current"},
PlotStyle-> {Full,Dashed},
ScalingFunctions->{"Reverse",None}};

plotLimitingElCurrentDensity[opts:OptionsPattern[{plotLimitingElCurrentDensity,Plot}]]:=Module[{memAreaCM2},
memAreaCM2=memArea*100^2;
Plot[{limElCurrentDischarging[soc] 1000/memAreaCM2,limElCurrentCharging[soc] 1000/memAreaCM2},{soc,OptionValue[minSoc],OptionValue[maxSoc]},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]]],Evaluate[FilterRules[Options[plotLimitingElCurrentDensity], Options[Plot]]]]
];


(* ::Input::Initialization:: *)
cellVoltageVsElCurrentDensityAtGivenSocAndFlowRate[soc_,flowRateValue_]:=Module[{limElCurrentDensity,numEvaluations=500,memAreaCM2,currentModelOptions,tabElCurrentDensityToVoltage},
currentModelOptions=getModelOptionRules;
initModel[{flowRate-> flowRateValue}];
memAreaCM2=memArea*100^2;
limElCurrentDensity=limElCurrentDischarging[soc] 1000/memAreaCM2;
tabElCurrentDensityToVoltage=Table[{elCurrentDensityMilliAmperePerCm2,cellVoltage[soc,elCurrentDensityMilliAmperePerCm2*memAreaCM2/1000]},{elCurrentDensityMilliAmperePerCm2,0,limElCurrentDensity*(1-1/numEvaluations),limElCurrentDensity/numEvaluations}];If[tabElCurrentDensityToVoltage[[-1,2]]>0,tabElCurrentDensityToVoltage=Append[tabElCurrentDensityToVoltage,{limElCurrentDensity,0}]];
initModel[currentModelOptions];
Select[tabElCurrentDensityToVoltage,#[[2]]>= 0&]
];

Options[plotCellPerformanceForDifferentFlowRates]={ScalingFunctions->{"Reverse",None},lstFlowRates-> {8,16,32},soc-> 0.5};

plotCellPerformanceForDifferentFlowRates[opts:OptionsPattern[{plotCellPerformanceForDifferentFlowRates,Plot}]]:=Module[{lstFlowRateValues,tabElCurrentDensityToVoltage,tabElCurrentDensityToPowerDensity},
lstFlowRateValues=OptionValue[lstFlowRates];
tabElCurrentDensityToVoltage=Table[cellVoltageVsElCurrentDensityAtGivenSocAndFlowRate[OptionValue[soc],lstFlowRateValues[[i]]],{i,1,Length[lstFlowRateValues]}];
tabElCurrentDensityToPowerDensity=Table[{tabElCurrentDensityToVoltage[[i,j,1]],tabElCurrentDensityToVoltage[[i,j,2]]*Abs[tabElCurrentDensityToVoltage[[i,j,1]]]},{i,1,Length[tabElCurrentDensityToVoltage]},{j,1,Length[tabElCurrentDensityToVoltage[[i]]]}];
{ListPlot[Evaluate[tabElCurrentDensityToVoltage],PlotLegends->Evaluate[Table["\!\(\*SubscriptBox[\(Q\), \(\(F\)\(\\\ \)\)]\)= "<>ToString[lstFlowRateValues[[i]]]<>" [ml/min]",{i,1,Length[lstFlowRateValues]}]],Joined-> True,PlotRange->{Automatic,{0,All}},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]]],Evaluate[FilterRules[Options[plotCellPerformanceForDifferentFlowRates], Options[Plot]]],PlotLabel-> "Cell Voltage",FrameLabel-> {"El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","Voltage [V]"}],
ListPlot[Evaluate[tabElCurrentDensityToPowerDensity],PlotLegends->Evaluate[Table["\!\(\*SubscriptBox[\(Q\), \(\(F\)\(\\\ \)\)]\)= "<>ToString[lstFlowRateValues[[i]]]<>" [ml/min]",{i,1,Length[lstFlowRateValues]}]],Joined-> True,PlotRange->{Automatic,{0,All}},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]]],Evaluate[FilterRules[Options[plotCellPerformanceForDifferentFlowRates], Options[Plot]]],PlotLabel-> "Cell Power Density",FrameLabel-> {"El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]","Power Density [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"}]}
];


(* ::Input::Initialization:: *)
Options[plotElectrolyteVolume]={PlotRange-> {{0,1},Automatic},PlotLegends->{"\!\(\*SubscriptBox[\(V\), \(-\)]\)","\!\(\*SubscriptBox[\(V\), \(+\)]\)"},Frame-> True,PlotTheme-> "Detailed",FrameLabel->{"SoC","Electrolyte Volume [L]"},PlotLabel->"Electro-Osmosis",PlotStyle-> {Full,Dashed}};
plotElectrolyteVolume[opts:OptionsPattern[{plotElectrolyteVolume,Plot}]]:=Module[{partialMolarVolSolventNeg,partialMolarVolSolventPos,partialMolarVolNegValue,partialMolarVolPosValue,volumeNeg,volumePos},
(*In the following we assume for simplicity that the electrolyte solutions are ideal and that the partial molar volumes of the reduced and oxidized species are identical.*)
partialMolarVolSolventNeg=modelOptions[molarMassSolvent]/modelOptions[\[Rho]MixNegSoc0];(*[l/mol]*)
partialMolarVolSolventPos=modelOptions[molarMassSolvent]/modelOptions[\[Rho]MixPosSoc0];(*[l/mol]*)
partialMolarVolNegValue=Solve[modelOptions[electrolyteVolSoc0]== nOxNegSoc0 * molarVolNeg+nSolventNegSoc0*partialMolarVolSolventNeg,molarVolNeg][[1,1,2]];(*[l/mol]*)
partialMolarVolPosValue=Solve[modelOptions[electrolyteVolSoc0]== nRedPosSoc0* molarVolPos+nSolventPosSoc0*partialMolarVolSolventPos,molarVolPos][[1,1,2]];(*[l/mol]*)
volumeNeg[soc_]:=(nRedNeg[soc]+nOxNeg[soc])*partialMolarVolNegValue+nSolventNeg[soc]*partialMolarVolSolventNeg;(*[l]*)
volumePos[soc_]:=(nRedPos[soc]+nOxPos[soc])*partialMolarVolPosValue+nSolventPos[soc]*partialMolarVolSolventPos;(*[l]*)

Plot[{volumeNeg[soc],volumePos[soc]},{soc,0,1},Evaluate[FilterRules[Flatten[{opts}], Options[Plot]],Evaluate[FilterRules[Options[plotElectrolyteVolume], Options[Plot]]]]]
];



(* ::Input::Initialization:: *)
End[];
EndPackage[];
