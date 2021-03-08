(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.2' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[     63981,       1179]
NotebookOptionsPosition[     64464,       1174]
NotebookOutlinePosition[     64945,       1194]
CellTagsIndexPosition[     64902,       1191]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 DynamicModuleBox[{$CellContext`molarMassSolventValue$$, \
$CellContext`molarMassOxNegValue$$, $CellContext`molarMassRedPosValue$$, \
$CellContext`cOxNegSoc0Value$$, $CellContext`cRedPosSoc0Value$$, \
$CellContext`flowRateValue$$, $CellContext`cellResistanceValue$$, \
$CellContext`kNegValueLog10$$, $CellContext`kPosValueLog10$$, \
$CellContext`eNeg0Value$$, $CellContext`ePos0Value$$, \
$CellContext`\[Kappa]sValue$$, $CellContext`specElSurfAreaValueLog10$$, \
$CellContext`elLengthValue$$, $CellContext`elWidthValue$$, \
$CellContext`elHeightValue$$}, 
  TagBox[
   StyleBox[
    DynamicModuleBox[{$CellContext`cellResistanceValue$$ = 
     0.2, $CellContext`cOxNegSoc0Value$$ = 
     1.49, $CellContext`cRedPosSoc0Value$$ = 
     1.12, $CellContext`elHeightValue$$ = 0.02, $CellContext`elLengthValue$$ =
      0.004, $CellContext`elWidthValue$$ = 
     0.02, $CellContext`eNeg0Value$$ = -0.6, $CellContext`ePos0Value$$ = 
     0.6, $CellContext`flowRateValue$$ = 
     16, $CellContext`kNegValueLog10$$ = -5, $CellContext`kPosValueLog10$$ = \
-5, $CellContext`molarMassOxNegValue$$ = 
     0.25716, $CellContext`molarMassRedPosValue$$ = 
     0.249803, $CellContext`molarMassSolventValue$$ = 
     0.01801528, $CellContext`soc$$ = 
     0.5, $CellContext`specElSurfAreaValueLog10$$ = 
     5, $CellContext`\[Kappa]sValue$$ = 6, Typeset`show$$ = True, 
     Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
     Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
     "\"untitled\"", Typeset`specs$$ = {{{
        Hold[$CellContext`soc$$], 0.5, "SoC [-]"}, 0.01, 0.99}, {{
        Hold[$CellContext`flowRateValue$$], 16, "Flow Rate [ml/min]"}, 0.001, 
       100}, {{
        Hold[$CellContext`cOxNegSoc0Value$$], 1.49, 
        "Molar Concentration \!\(\*SubscriptBox[\(c\), \(ox, -\)]\) [mol/l]"},
        0.001, 3}, {{
        Hold[$CellContext`cRedPosSoc0Value$$], 1.12, 
        "Molar Concentration \!\(\*SubscriptBox[\(c\), \(red, +\)]\) \
[mol/l]"}, 0.001, 3}, {{
        Hold[$CellContext`elLengthValue$$], 0.004, 
        "Electrode Length (Through-Plane) [m]"}, 0.001, 0.1}, {{
        Hold[$CellContext`elWidthValue$$], 0.02, 
        "Electrode Width (In-Plane) [m]"}, 0.001, 0.1}, {{
        Hold[$CellContext`elHeightValue$$], 0.02, 
        "Electrode Height (In-Plane) [m]"}, 0.001, 0.1}, {{
        Hold[$CellContext`cellResistanceValue$$], 0.2, 
        "Cell Resistance [\[CapitalOmega]]"}, 0., 1}, {{
        Hold[$CellContext`kNegValueLog10$$], -5, 
        "Reaction const. \!\(\*SubscriptBox[\(Log\), \
\(10\)]\)[\!\(\*SubscriptBox[\(k\), \(-\)]\) [m/s]]"}, -10, -2}, {{
        Hold[$CellContext`kPosValueLog10$$], -5, 
        "Reaction const. \!\(\*SubscriptBox[\(Log\), \
\(10\)]\)[\!\(\*SubscriptBox[\(k\), \(+\)]\) [m/s]]"}, -10, -2}, {{
        Hold[$CellContext`eNeg0Value$$], -0.6, 
        "Standard neg. half-cell potential [V]"}, -2, 2}, {{
        Hold[$CellContext`ePos0Value$$], 0.6, 
        "Standard pos. half-cell potential [V]"}, -2, 2}, {{
        Hold[$CellContext`\[Kappa]sValue$$], 6, 
        "Osmotic-drag coefficient [-]"}, 0, 30}, {{
        Hold[$CellContext`specElSurfAreaValueLog10$$], 5, 
        "Specific el. surface area \!\(\*SubscriptBox[\(Log\), \(10\)]\)[\!\(\
\*SubscriptBox[\(a\), \(s\)]\) [\!\(\*SuperscriptBox[\(m\), \(-1\)]\)]]"}, 2, 
       8}, {{
        Hold[$CellContext`molarMassSolventValue$$], 0.01801528, 
        "Molar Mass \!\(\*SubscriptBox[\(M\), \(solvent\)]\) [kg/mol]"}, 
       0.001, 1}, {{
        Hold[$CellContext`molarMassOxNegValue$$], 0.25716, 
        "Molar Mass \!\(\*SubscriptBox[\(M\), \(ox, -\)]\) [kg/mol]"}, 0.001, 
       1}, {{
        Hold[$CellContext`molarMassRedPosValue$$], 0.249803, 
        "Molar Mass \!\(\*SubscriptBox[\(M\), \(red, +\)]\) [kg/mol]"}, 0.001,
        1}, {
       Hold[
        Column[{
          Style["Operating Conditions", Bold], 
          Column[{
            Manipulate`Place[1], 
            Manipulate`Place[2]}], 
          OpenerView[{
            Style["Initial Conditions", Bold], 
            Column[{
              Manipulate`Place[3], 
              Manipulate`Place[4]}]}], 
          OpenerView[{
            Style["Cell Geometry", Bold], 
            Column[{
              Manipulate`Place[5], 
              Manipulate`Place[6], 
              Manipulate`Place[7]}]}], 
          OpenerView[{
            Style["Parameters", Bold], 
            Column[{
              Manipulate`Place[8], 
              Manipulate`Place[9], 
              Manipulate`Place[10], 
              Manipulate`Place[11], 
              Manipulate`Place[12], 
              Manipulate`Place[13], 
              Manipulate`Place[14]}]}], 
          OpenerView[{
            Style["Material Properties", Bold], 
            Column[{
              Manipulate`Place[15], 
              Manipulate`Place[16], 
              Manipulate`Place[17]}]}]}, ItemSize -> {50, 2}]], 
       Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
     710., {162.3544921875, 167.6455078125}}, Typeset`update$$ = 0, 
     Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
     DynamicBox[Manipulate`ManipulateBoxes[
      2, StandardForm, 
       "Variables" :> {$CellContext`cellResistanceValue$$ = 
         0.2, $CellContext`cOxNegSoc0Value$$ = 
         1.49, $CellContext`cRedPosSoc0Value$$ = 
         1.12, $CellContext`elHeightValue$$ = 
         0.02, $CellContext`elLengthValue$$ = 
         0.004, $CellContext`elWidthValue$$ = 
         0.02, $CellContext`eNeg0Value$$ = -0.6, $CellContext`ePos0Value$$ = 
         0.6, $CellContext`flowRateValue$$ = 
         16, $CellContext`kNegValueLog10$$ = -5, \
$CellContext`kPosValueLog10$$ = -5, $CellContext`molarMassOxNegValue$$ = 
         0.25716, $CellContext`molarMassRedPosValue$$ = 
         0.249803, $CellContext`molarMassSolventValue$$ = 
         0.01801528, $CellContext`soc$$ = 
         0.5, $CellContext`specElSurfAreaValueLog10$$ = 
         5, $CellContext`\[Kappa]sValue$$ = 6}, "ControllerVariables" :> {}, 
       "OtherVariables" :> {
        Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
         Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
         Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
         Typeset`initDone$$, Typeset`skipInitDone$$}, 
       "Body" :> (
        ZeroDimVoltageCurrentSocModel`initModel[{
          ZeroDimVoltageCurrentSocModel`molarMassSolvent -> \
$CellContext`molarMassSolventValue$$, 
           ZeroDimVoltageCurrentSocModel`molarMassOxNeg -> \
$CellContext`molarMassOxNegValue$$, 
           ZeroDimVoltageCurrentSocModel`molarMassRedPos -> \
$CellContext`molarMassRedPosValue$$, 
           ZeroDimVoltageCurrentSocModel`cOxNegSoc0 -> \
$CellContext`cOxNegSoc0Value$$, 
           ZeroDimVoltageCurrentSocModel`cRedPosSoc0 -> \
$CellContext`cRedPosSoc0Value$$, 
           ZeroDimVoltageCurrentSocModel`flowRate -> \
$CellContext`flowRateValue$$, 
           ZeroDimVoltageCurrentSocModel`rCell -> \
$CellContext`cellResistanceValue$$, ZeroDimVoltageCurrentSocModel`kneg -> 
           10^$CellContext`kNegValueLog10$$, 
           ZeroDimVoltageCurrentSocModel`kpos -> 
           10^$CellContext`kPosValueLog10$$, 
           ZeroDimVoltageCurrentSocModel`eNeg0 -> $CellContext`eNeg0Value$$, 
           ZeroDimVoltageCurrentSocModel`ePos0 -> $CellContext`ePos0Value$$, 
           ZeroDimVoltageCurrentSocModel`\[Kappa]s -> \
$CellContext`\[Kappa]sValue$$, 
           ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea -> 
           10^$CellContext`specElSurfAreaValueLog10$$, 
           ZeroDimVoltageCurrentSocModel`elLength -> \
$CellContext`elLengthValue$$, 
           ZeroDimVoltageCurrentSocModel`elWidth -> \
$CellContext`elWidthValue$$, 
           ZeroDimVoltageCurrentSocModel`elHeight -> \
$CellContext`elHeightValue$$}]; Column[{
           Row[{
             
             ZeroDimVoltageCurrentSocModel`plotCellVoltageVsElCurrentDensity[{\
$CellContext`lstSoc -> {$CellContext`soc$$}, PlotLegends -> None, PlotLabel -> 
               "Cell Voltage", ImageSize -> 350, ImageMargins -> None, 
               PlotStyle -> {Full}}], 
             Spacer[10], 
             
             ZeroDimVoltageCurrentSocModel`\
plotCellPowerDensityVsElCurrentDensity[{$CellContext`lstSoc -> \
{$CellContext`soc$$}, PlotLegends -> None, PlotLabel -> "Cell Power Density", 
               ImageSize -> 350, ImageMargins -> None, 
               PlotStyle -> {Full}}]}], 
           Spacer[10], 
           Row[{
             LineLegend[{{
                Part[
                 ColorData[97, "ColorList"], 1], Full}, {Black, Dashed}, 
               Null}, {
              "Discharging El. Current Density", 
               "Limiting El. Current Density"}, LegendLayout -> "Row", 
              LegendFunction -> "Frame"]}]}]), 
       "Specifications" :> {{{$CellContext`soc$$, 0.5, "SoC [-]"}, 0.01, 0.99,
           Appearance -> "Labeled", ControlPlacement -> 
          1}, {{$CellContext`flowRateValue$$, 16, "Flow Rate [ml/min]"}, 
          0.001, 100, Appearance -> "Labeled", ControlPlacement -> 
          2}, {{$CellContext`cOxNegSoc0Value$$, 1.49, 
           "Molar Concentration \!\(\*SubscriptBox[\(c\), \(ox, -\)]\) \
[mol/l]"}, 0.001, 3, Appearance -> "Labeled", ControlPlacement -> 
          3}, {{$CellContext`cRedPosSoc0Value$$, 1.12, 
           "Molar Concentration \!\(\*SubscriptBox[\(c\), \(red, +\)]\) \
[mol/l]"}, 0.001, 3, Appearance -> "Labeled", ControlPlacement -> 
          4}, {{$CellContext`elLengthValue$$, 0.004, 
           "Electrode Length (Through-Plane) [m]"}, 0.001, 0.1, Appearance -> 
          "Labeled", ControlPlacement -> 
          5}, {{$CellContext`elWidthValue$$, 0.02, 
           "Electrode Width (In-Plane) [m]"}, 0.001, 0.1, Appearance -> 
          "Labeled", ControlPlacement -> 
          6}, {{$CellContext`elHeightValue$$, 0.02, 
           "Electrode Height (In-Plane) [m]"}, 0.001, 0.1, Appearance -> 
          "Labeled", ControlPlacement -> 
          7}, {{$CellContext`cellResistanceValue$$, 0.2, 
           "Cell Resistance [\[CapitalOmega]]"}, 0., 1, Appearance -> 
          "Labeled", ControlPlacement -> 
          8}, {{$CellContext`kNegValueLog10$$, -5, 
           "Reaction const. \!\(\*SubscriptBox[\(Log\), \
\(10\)]\)[\!\(\*SubscriptBox[\(k\), \(-\)]\) [m/s]]"}, -10, -2, Appearance -> 
          "Labeled", ControlPlacement -> 
          9}, {{$CellContext`kPosValueLog10$$, -5, 
           "Reaction const. \!\(\*SubscriptBox[\(Log\), \
\(10\)]\)[\!\(\*SubscriptBox[\(k\), \(+\)]\) [m/s]]"}, -10, -2, Appearance -> 
          "Labeled", ControlPlacement -> 
          10}, {{$CellContext`eNeg0Value$$, -0.6, 
           "Standard neg. half-cell potential [V]"}, -2, 2, Appearance -> 
          "Labeled", ControlPlacement -> 
          11}, {{$CellContext`ePos0Value$$, 0.6, 
           "Standard pos. half-cell potential [V]"}, -2, 2, Appearance -> 
          "Labeled", ControlPlacement -> 
          12}, {{$CellContext`\[Kappa]sValue$$, 6, 
           "Osmotic-drag coefficient [-]"}, 0, 30, Appearance -> "Labeled", 
          ControlPlacement -> 
          13}, {{$CellContext`specElSurfAreaValueLog10$$, 5, 
           "Specific el. surface area \!\(\*SubscriptBox[\(Log\), \
\(10\)]\)[\!\(\*SubscriptBox[\(a\), \(s\)]\) [\!\(\*SuperscriptBox[\(m\), \
\(-1\)]\)]]"}, 2, 8, Appearance -> "Labeled", ControlPlacement -> 
          14}, {{$CellContext`molarMassSolventValue$$, 0.01801528, 
           "Molar Mass \!\(\*SubscriptBox[\(M\), \(solvent\)]\) [kg/mol]"}, 
          0.001, 1, Appearance -> "Labeled", ControlPlacement -> 
          15}, {{$CellContext`molarMassOxNegValue$$, 0.25716, 
           "Molar Mass \!\(\*SubscriptBox[\(M\), \(ox, -\)]\) [kg/mol]"}, 
          0.001, 1, Appearance -> "Labeled", ControlPlacement -> 
          16}, {{$CellContext`molarMassRedPosValue$$, 0.249803, 
           "Molar Mass \!\(\*SubscriptBox[\(M\), \(red, +\)]\) [kg/mol]"}, 
          0.001, 1, Appearance -> "Labeled", ControlPlacement -> 17}, 
         Column[{
           Style["Operating Conditions", Bold], 
           Column[{
             Manipulate`Place[1], 
             Manipulate`Place[2]}], 
           OpenerView[{
             Style["Initial Conditions", Bold], 
             Column[{
               Manipulate`Place[3], 
               Manipulate`Place[4]}]}], 
           OpenerView[{
             Style["Cell Geometry", Bold], 
             Column[{
               Manipulate`Place[5], 
               Manipulate`Place[6], 
               Manipulate`Place[7]}]}], 
           OpenerView[{
             Style["Parameters", Bold], 
             Column[{
               Manipulate`Place[8], 
               Manipulate`Place[9], 
               Manipulate`Place[10], 
               Manipulate`Place[11], 
               Manipulate`Place[12], 
               Manipulate`Place[13], 
               Manipulate`Place[14]}]}], 
           OpenerView[{
             Style["Material Properties", Bold], 
             Column[{
               Manipulate`Place[15], 
               Manipulate`Place[16], 
               Manipulate`Place[17]}]}]}, ItemSize -> {50, 2}]}, 
       "Options" :> {ControlPlacement -> Top, FrameLabel -> {"", "", 
           Style["0D U-I-SoC Model", 16, Bold], ""}, FrameMargins -> None, 
         ImageMargins -> None}, "DefaultOptions" :> {}],
      ImageSizeCache->{749., {286., 292.}},
      SingleEvaluation->True],
     Deinitialization:>None,
     DynamicModuleValues:>{},
     Initialization:>({{ZeroDimVoltageCurrentSocModel`initModel[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`opts, 
             OptionsPattern[]]] := 
          Module[{}, 
            ZeroDimVoltageCurrentSocModel`Private`modelOptions = 
             ZeroDimVoltageCurrentSocModel`Private`getUniqueOptions[
               Flatten[{
                 Options[ZeroDimVoltageCurrentSocModel`initModel], 
                 ZeroDimVoltageCurrentSocModel`Private`opts}]]; 
            ZeroDimVoltageCurrentSocModel`Private`electrodeVol = 
             ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`elLength] 
              ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`elWidth] 
              ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`elHeight]; 
            ZeroDimVoltageCurrentSocModel`Private`memArea = 
             ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`elWidth] 
              ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`elHeight]; 
            ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea = 
             ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea] 
              ZeroDimVoltageCurrentSocModel`Private`electrodeVol; 
            ZeroDimVoltageCurrentSocModel`Private`nOxPosSoc0 = 
             ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`cOxPosSoc0] 
              ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0 = 
             ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`cOxNegSoc0] 
              ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`nRedSoc0Neg = 
             ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`cRedNegSoc0] 
              ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0 = 
             ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`cRedPosSoc0] 
              ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`nSolventNegSoc0 = (
               ZeroDimVoltageCurrentSocModel`Private`modelOptions[
                 ZeroDimVoltageCurrentSocModel`\[Rho]MixNegSoc0] 
                ZeroDimVoltageCurrentSocModel`Private`modelOptions[
                 ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0] - 
               ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0 
               ZeroDimVoltageCurrentSocModel`Private`modelOptions[
                ZeroDimVoltageCurrentSocModel`molarMassOxNeg])/
              ZeroDimVoltageCurrentSocModel`Private`modelOptions[
              ZeroDimVoltageCurrentSocModel`molarMassSolvent]; 
            ZeroDimVoltageCurrentSocModel`Private`nSolventPosSoc0 = (
               ZeroDimVoltageCurrentSocModel`Private`modelOptions[
                 ZeroDimVoltageCurrentSocModel`\[Rho]MixPosSoc0] 
                ZeroDimVoltageCurrentSocModel`Private`modelOptions[
                 ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0] - 
               ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0 
               ZeroDimVoltageCurrentSocModel`Private`modelOptions[
                ZeroDimVoltageCurrentSocModel`molarMassRedPos])/
              ZeroDimVoltageCurrentSocModel`Private`modelOptions[
              ZeroDimVoltageCurrentSocModel`molarMassSolvent]; 
            ZeroDimVoltageCurrentSocModel`Private`nOxSoc1Neg = 
             ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0 - Min[
              ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0, 
               ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`nRedSoc1Pos = 
             ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0 - Min[
              ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0, 
               ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`superficialVelocity = 
             ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`flowRate]/(1000 1000 60 
              ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`elLength] 
              ZeroDimVoltageCurrentSocModel`Private`modelOptions[
               ZeroDimVoltageCurrentSocModel`elWidth]); 
            ZeroDimVoltageCurrentSocModel`Private`km = 
             ZeroDimVoltageCurrentSocModel`Private`modelOptions[
              ZeroDimVoltageCurrentSocModel`massTransferCoeffModel][
              ZeroDimVoltageCurrentSocModel`Private`superficialVelocity]; 
            Return[True]; Null], 
          Options[ZeroDimVoltageCurrentSocModel`initModel] = {
           ZeroDimVoltageCurrentSocModel`T -> 298.15, 
            ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0 -> 0.01, 
            ZeroDimVoltageCurrentSocModel`elLength -> 0.004, 
            ZeroDimVoltageCurrentSocModel`elWidth -> 0.02236, 
            ZeroDimVoltageCurrentSocModel`elHeight -> 0.02236, 
            ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea -> 200000, 
            ZeroDimVoltageCurrentSocModel`flowRate -> 16, 
            ZeroDimVoltageCurrentSocModel`rCell -> 0.286, 
            ZeroDimVoltageCurrentSocModel`eNeg0 -> -0.63, 
            ZeroDimVoltageCurrentSocModel`ePos0 -> 0.62, 
            ZeroDimVoltageCurrentSocModel`kneg -> 0.000033, 
            ZeroDimVoltageCurrentSocModel`kpos -> 0.000042000000000000004`, 
            ZeroDimVoltageCurrentSocModel`\[Kappa]s -> 6, 
            ZeroDimVoltageCurrentSocModel`cOxNegSoc0 -> 1.49, 
            ZeroDimVoltageCurrentSocModel`cRedNegSoc0 -> 0., 
            ZeroDimVoltageCurrentSocModel`cOxPosSoc0 -> 0., 
            ZeroDimVoltageCurrentSocModel`cRedPosSoc0 -> 1.12, 
            ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0 -> 0.01, 
            ZeroDimVoltageCurrentSocModel`massTransferCoeffModel -> ((4/
              10^5) #^0.9& ), ZeroDimVoltageCurrentSocModel`molarMassSolvent -> 
            0.01801528, ZeroDimVoltageCurrentSocModel`molarMassOxNeg -> 
            0.25716, ZeroDimVoltageCurrentSocModel`molarMassRedPos -> 
            0.249803, ZeroDimVoltageCurrentSocModel`\[Rho]Solvent -> 1000, 
            ZeroDimVoltageCurrentSocModel`\[Rho]MixNegSoc0 -> 1.098844551, 
            ZeroDimVoltageCurrentSocModel`\[Rho]MixPosSoc0 -> 1.040112348}, 
          TagSet[ZeroDimVoltageCurrentSocModel`initModel, 
           MessageName[ZeroDimVoltageCurrentSocModel`initModel, "usage"], 
           "initModel initializes the model and has to be called before any \
model evaluation can be performed. When called as initModel[] without \
arguments, the default model parameters are used. The default parameters can \
be overwritten by providing a list of rules to initModel, e.g. \
initModel[{elLength->0.01,flowRate-> 20}] sets the electrode length in the \
through-plane direction to 0.01 m and the flow rate to 20 ml/s."], 
          ZeroDimVoltageCurrentSocModel`Private`modelOptions = 
          Association[
           ZeroDimVoltageCurrentSocModel`T -> 298.15, 
            ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0 -> 0.01, 
            ZeroDimVoltageCurrentSocModel`elLength -> 0.004, 
            ZeroDimVoltageCurrentSocModel`elWidth -> 0.02, 
            ZeroDimVoltageCurrentSocModel`elHeight -> 0.02, 
            ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea -> 100000, 
            ZeroDimVoltageCurrentSocModel`flowRate -> 16, 
            ZeroDimVoltageCurrentSocModel`rCell -> 0.2, 
            ZeroDimVoltageCurrentSocModel`eNeg0 -> -0.6, 
            ZeroDimVoltageCurrentSocModel`ePos0 -> 0.6, 
            ZeroDimVoltageCurrentSocModel`kneg -> 1/100000, 
            ZeroDimVoltageCurrentSocModel`kpos -> 1/100000, 
            ZeroDimVoltageCurrentSocModel`\[Kappa]s -> 6, 
            ZeroDimVoltageCurrentSocModel`cOxNegSoc0 -> 1.49, 
            ZeroDimVoltageCurrentSocModel`cRedNegSoc0 -> 0., 
            ZeroDimVoltageCurrentSocModel`cOxPosSoc0 -> 0., 
            ZeroDimVoltageCurrentSocModel`cRedPosSoc0 -> 1.12, 
            ZeroDimVoltageCurrentSocModel`massTransferCoeffModel -> ((4/
              10^5) #^0.9& ), ZeroDimVoltageCurrentSocModel`molarMassSolvent -> 
            0.01801528, ZeroDimVoltageCurrentSocModel`molarMassOxNeg -> 
            0.25716, ZeroDimVoltageCurrentSocModel`molarMassRedPos -> 
            0.249803, ZeroDimVoltageCurrentSocModel`\[Rho]Solvent -> 1000, 
            ZeroDimVoltageCurrentSocModel`\[Rho]MixNegSoc0 -> 1.098844551, 
            ZeroDimVoltageCurrentSocModel`\[Rho]MixPosSoc0 -> 1.040112348], 
          TagSet[ZeroDimVoltageCurrentSocModel`T, 
           MessageName[ZeroDimVoltageCurrentSocModel`T, "usage"], 
           "Constant temperature of the system [K]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0, "usage"], 
           "Initial electrolyte volume per half-cell [l]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`elLength, 
           MessageName[ZeroDimVoltageCurrentSocModel`elLength, "usage"], 
           "Thickness of electrode compartment in the through-plane direction \
[m]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`elWidth, 
           MessageName[ZeroDimVoltageCurrentSocModel`elWidth, "usage"], 
           "Width of electrode compartment in the in-plane direction \
orthogonal to the convective flow direction [m]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`elHeight, 
           MessageName[ZeroDimVoltageCurrentSocModel`elHeight, "usage"], 
           "Height of electrode compartment in the in-plane direction along \
the convective flow direction [m]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea, "usage"], 
           "Specific surface area of the electrodes [m^-1]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`flowRate, 
           MessageName[ZeroDimVoltageCurrentSocModel`flowRate, "usage"], 
           "Flow rate [ml/min]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`rCell, 
           MessageName[ZeroDimVoltageCurrentSocModel`rCell, "usage"], 
           "Total ohmic cell resistance [V/A]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`eNeg0, 
           MessageName[ZeroDimVoltageCurrentSocModel`eNeg0, "usage"], 
           "Standard half-cell potential for MV [V]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`ePos0, 
           MessageName[ZeroDimVoltageCurrentSocModel`ePos0, "usage"], 
           "Standard half-cell potential for TMATEMPO [V]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`kneg, 
           MessageName[ZeroDimVoltageCurrentSocModel`kneg, "usage"], 
           "Reaction constant at negative electrode [m/s]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`kpos, 
           MessageName[ZeroDimVoltageCurrentSocModel`kpos, "usage"], 
           "Reaction constant at positive electrode [m/s]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Kappa]s, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Kappa]s, "usage"], 
           "Transported solvent molecules per transferred ion"], 
          TagSet[ZeroDimVoltageCurrentSocModel`cOxNegSoc0, 
           MessageName[ZeroDimVoltageCurrentSocModel`cOxNegSoc0, "usage"], 
           "Initial molar concentration of oxidizes species in negolyte (at \
SoC=0) [mol/l]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`cRedNegSoc0, 
           MessageName[ZeroDimVoltageCurrentSocModel`cRedNegSoc0, "usage"], 
           "Initial molar concentration of reduced species in negolyte (at \
SoC=0) [mol/l]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`cOxPosSoc0, 
           MessageName[ZeroDimVoltageCurrentSocModel`cOxPosSoc0, "usage"], 
           
           "Initial molar concentration of oxidized species in posolyte (at \
SoC=0) [mol/l]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`cRedPosSoc0, 
           MessageName[ZeroDimVoltageCurrentSocModel`cRedPosSoc0, "usage"], 
           "Initial molar concentration of reduzed species in posolyte (at \
SoC=0) [mol/l]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`massTransferCoeffModel, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`massTransferCoeffModel, "usage"], 
           "Mass transfer model function taking as argument the superficial \
velocity, e.g. (a*\!\(\*SuperscriptBox[\(#\), \(b\)]\))& [m/s]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`molarMassSolvent, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`molarMassSolvent, "usage"], 
           "Molar mass of the solvent [kg/mol]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`molarMassOxNeg, 
           MessageName[ZeroDimVoltageCurrentSocModel`molarMassOxNeg, "usage"],
            "Molar mass of the salt in oxidized form in the negolyte \
[kg/mol]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`molarMassRedPos, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`molarMassRedPos, "usage"], 
           "Molar mass of the salt in reduced form in the posolyte [kg/mol]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Rho]Solvent, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Rho]Solvent, "usage"], 
           "Mass density of the solvent [kg/m^3]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Rho]MixNegSoc0, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`\[Rho]MixNegSoc0, "usage"], 
           "Mass density of negolyte at initial state (SoC=0) [kg/l]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Rho]MixPosSoc0, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`\[Rho]MixPosSoc0, "usage"], 
           "Mass density of posolyte at initial state (SoC=0) [kg/l]"], 
          ZeroDimVoltageCurrentSocModel`Private`getUniqueOptions[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`lst, 
             Blank[]]] := 
          Association[ZeroDimVoltageCurrentSocModel`Private`lst], 
          ZeroDimVoltageCurrentSocModel`Private`electrodeVol = 
          1.6000000000000001`*^-6, 
          ZeroDimVoltageCurrentSocModel`Private`memArea = 0.0004, 
          ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea = 0.16, 
          ZeroDimVoltageCurrentSocModel`Private`nOxPosSoc0 = 0., 
          ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0 = 0.0149, 
          ZeroDimVoltageCurrentSocModel`Private`nRedSoc0Neg = 0., 
          ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0 = 
          0.011200000000000002`, 
          ZeroDimVoltageCurrentSocModel`Private`nSolventNegSoc0 = 
          0.39726063153056734`, 
          ZeroDimVoltageCurrentSocModel`Private`nSolventPosSoc0 = 
          0.42204894289736267`, 
          ZeroDimVoltageCurrentSocModel`Private`nOxSoc1Neg = 
          0.0036999999999999984`, 
          ZeroDimVoltageCurrentSocModel`Private`nRedSoc1Pos = 0., 
          ZeroDimVoltageCurrentSocModel`Private`superficialVelocity = 
          0.0033333333333333335`, ZeroDimVoltageCurrentSocModel`Private`km = 
          2.3585813606325677`*^-7, 
          ZeroDimVoltageCurrentSocModel`plotCellVoltageVsElCurrentDensity[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`opts, 
             
             OptionsPattern[{
              ZeroDimVoltageCurrentSocModel`plotCellVoltageVsElCurrentDensity,
                Plot}]]] := 
          Module[{ZeroDimVoltageCurrentSocModel`Private`\
lstLimElCurrentDischarging, 
             ZeroDimVoltageCurrentSocModel`Private`minElCurrentDischarging, 
             ZeroDimVoltageCurrentSocModel`Private`memAreaCM2, 
             ZeroDimVoltageCurrentSocModel`Private`maxVoltage, 
             ZeroDimVoltageCurrentSocModel`Private`lstSocValues}, 
            ZeroDimVoltageCurrentSocModel`Private`lstSocValues = 
             OptionValue[ZeroDimVoltageCurrentSocModel`Private`lstSoc]; 
            ZeroDimVoltageCurrentSocModel`Private`maxVoltage = 
             ZeroDimVoltageCurrentSocModel`cellVoltageOcv[
               Max[ZeroDimVoltageCurrentSocModel`Private`lstSocValues]]; 
            ZeroDimVoltageCurrentSocModel`Private`memAreaCM2 = 
             ZeroDimVoltageCurrentSocModel`Private`memArea 100^2; 
            ZeroDimVoltageCurrentSocModel`Private`lstLimElCurrentDischarging = 
             Table[ZeroDimVoltageCurrentSocModel`limElCurrentDischarging[
                 Part[
                 ZeroDimVoltageCurrentSocModel`Private`lstSocValues, 
                  ZeroDimVoltageCurrentSocModel`Private`i]] (1000/
                ZeroDimVoltageCurrentSocModel`Private`memAreaCM2), {
               ZeroDimVoltageCurrentSocModel`Private`i, 1, 
                Length[ZeroDimVoltageCurrentSocModel`Private`lstSocValues]}]; 
            ZeroDimVoltageCurrentSocModel`Private`minElCurrentDischarging = 
             Min[ZeroDimVoltageCurrentSocModel`Private`\
lstLimElCurrentDischarging]; Plot[
              Evaluate[
               Table[
                ZeroDimVoltageCurrentSocModel`cellVoltage[
                 Part[
                 ZeroDimVoltageCurrentSocModel`Private`lstSocValues, 
                  ZeroDimVoltageCurrentSocModel`Private`i], 
                 ZeroDimVoltageCurrentSocModel`Private`\
elCurrentDensityMilliAmperePerCm2 (
                  ZeroDimVoltageCurrentSocModel`Private`memAreaCM2/1000)], {
                ZeroDimVoltageCurrentSocModel`Private`i, 1, 
                 Length[
                 ZeroDimVoltageCurrentSocModel`Private`lstSocValues]}]], {
              ZeroDimVoltageCurrentSocModel`Private`\
elCurrentDensityMilliAmperePerCm2, 
               ZeroDimVoltageCurrentSocModel`Private`minElCurrentDischarging, 
               0}, Epilog -> Table[
                Style[
                 
                 Line[{{-
                    Part[ZeroDimVoltageCurrentSocModel`Private`\
lstLimElCurrentDischarging, ZeroDimVoltageCurrentSocModel`Private`i], 0}, {-
                    Part[ZeroDimVoltageCurrentSocModel`Private`\
lstLimElCurrentDischarging, ZeroDimVoltageCurrentSocModel`Private`i], 
                    ZeroDimVoltageCurrentSocModel`Private`maxVoltage}}], 
                 Dashed], {ZeroDimVoltageCurrentSocModel`Private`i, 1, 
                 Length[
                 ZeroDimVoltageCurrentSocModel`Private`\
lstLimElCurrentDischarging]}], 
              Evaluate[
               FilterRules[
                Flatten[{ZeroDimVoltageCurrentSocModel`Private`opts}], 
                Options[Plot]], 
               Evaluate[
                FilterRules[
                 Options[
                 ZeroDimVoltageCurrentSocModel`\
plotCellVoltageVsElCurrentDensity], 
                 Options[Plot]]]], 
              PlotRange -> {{
                ZeroDimVoltageCurrentSocModel`Private`minElCurrentDischarging - 
                 10, 0}, {
                0, ZeroDimVoltageCurrentSocModel`Private`maxVoltage}}, 
              PlotLegends -> Table[
                StringJoin["SoC = ", 
                 ToString[
                  Part[
                  ZeroDimVoltageCurrentSocModel`Private`lstSocValues, 
                   ZeroDimVoltageCurrentSocModel`Private`i]]], {
                ZeroDimVoltageCurrentSocModel`Private`i, 1, 
                 Length[
                 ZeroDimVoltageCurrentSocModel`Private`lstSocValues]}]]], 
          Options[ZeroDimVoltageCurrentSocModel`\
plotCellVoltageVsElCurrentDensity] = {
           ZeroDimVoltageCurrentSocModel`Private`lstSoc -> {0.2, 0.5, 0.8}, 
            ZeroDimVoltageCurrentSocModel`Private`maxSoc -> 0.99, PlotLabel -> 
            "Polarization Plot", 
            FrameLabel -> {
             "El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]",
               "Voltage [V]"}, ScalingFunctions -> {"Reverse", None}, 
            PlotStyle -> {Full, 
              Dashing[{Small, Small}], 
              Dashing[{0, Small}], 
              Dashing[{0, Small, Small, Small}]}}, 
          TagSet[
          ZeroDimVoltageCurrentSocModel`plotCellVoltageVsElCurrentDensity, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`plotCellVoltageVsElCurrentDensity, 
            "usage"], 
           "plotCellVoltageVsElCurrentDensity returns a plot showing the \
total cell voltage vs the electric current density for the specified SoC \
values, e.g. plotCellVoltageVsElCurrentDensity[{lstSoc\[Rule] {0.2,0.3,0.4}}] \
shows 3 graphs corresponding to the cell voltage at the SoC values 0.2, 0.3 \
and 0.4"], ZeroDimVoltageCurrentSocModel`cellVoltageOcv[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`eNernstPos[
            ZeroDimVoltageCurrentSocModel`Private`soc] - 
           ZeroDimVoltageCurrentSocModel`Private`eNernstNeg[
           ZeroDimVoltageCurrentSocModel`Private`soc], 
          TagSet[ZeroDimVoltageCurrentSocModel`cellVoltageOcv, 
           MessageName[ZeroDimVoltageCurrentSocModel`cellVoltageOcv, "usage"],
            "cellVoltageOcv evaluates the open circuit potential for a given \
state-of-charge. Example: cellVoltage[0.9] yields the OCV at SoC=0.9."], 
          ZeroDimVoltageCurrentSocModel`Private`eNernstPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`ePos0Formal[
            ZeroDimVoltageCurrentSocModel`Private`soc] - 
           ZeroDimVoltageCurrentSocModel`Private`fInv 
           Log[ZeroDimVoltageCurrentSocModel`Private`bRedPos[
              ZeroDimVoltageCurrentSocModel`Private`soc]/
             ZeroDimVoltageCurrentSocModel`Private`bOxPos[
             ZeroDimVoltageCurrentSocModel`Private`soc]], 
          ZeroDimVoltageCurrentSocModel`Private`ePos0Formal[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`modelOptions[
           ZeroDimVoltageCurrentSocModel`ePos0], 
          ZeroDimVoltageCurrentSocModel`Private`fInv = 0.025691238016271958`, 
          ZeroDimVoltageCurrentSocModel`Private`bRedPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nRedPos[
            ZeroDimVoltageCurrentSocModel`Private`soc]/(
           ZeroDimVoltageCurrentSocModel`Private`nSolventPos[
            ZeroDimVoltageCurrentSocModel`Private`soc] 
           ZeroDimVoltageCurrentSocModel`Private`modelOptions[
            ZeroDimVoltageCurrentSocModel`molarMassSolvent]), 
          ZeroDimVoltageCurrentSocModel`Private`nRedPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0 + 
           ZeroDimVoltageCurrentSocModel`Private`soc (
             ZeroDimVoltageCurrentSocModel`Private`nRedSoc1Pos - 
             ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0), 
          ZeroDimVoltageCurrentSocModel`Private`nSolventPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nSolventPosSoc0 - 
           ZeroDimVoltageCurrentSocModel`Private`modelOptions[
            ZeroDimVoltageCurrentSocModel`\[Kappa]s] (
            ZeroDimVoltageCurrentSocModel`Private`nRedPos[
             ZeroDimVoltageCurrentSocModel`Private`soc] - 
            ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0), 
          ZeroDimVoltageCurrentSocModel`Private`bOxPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nOxPos[
            ZeroDimVoltageCurrentSocModel`Private`soc]/(
           ZeroDimVoltageCurrentSocModel`Private`nSolventPos[
            ZeroDimVoltageCurrentSocModel`Private`soc] 
           ZeroDimVoltageCurrentSocModel`Private`modelOptions[
            ZeroDimVoltageCurrentSocModel`molarMassSolvent]), 
          ZeroDimVoltageCurrentSocModel`Private`nOxPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nOxPosSoc0 - (
           ZeroDimVoltageCurrentSocModel`Private`nRedPos[
            ZeroDimVoltageCurrentSocModel`Private`soc] - 
           ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0), 
          ZeroDimVoltageCurrentSocModel`Private`eNernstNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`eNeg0Formal[
            ZeroDimVoltageCurrentSocModel`Private`soc] - 
           ZeroDimVoltageCurrentSocModel`Private`fInv 
           Log[ZeroDimVoltageCurrentSocModel`Private`bRedNeg[
              ZeroDimVoltageCurrentSocModel`Private`soc]/
             ZeroDimVoltageCurrentSocModel`Private`bOxNeg[
             ZeroDimVoltageCurrentSocModel`Private`soc]], 
          ZeroDimVoltageCurrentSocModel`Private`eNeg0Formal[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`modelOptions[
           ZeroDimVoltageCurrentSocModel`eNeg0], 
          ZeroDimVoltageCurrentSocModel`Private`bRedNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nRedNeg[
            ZeroDimVoltageCurrentSocModel`Private`soc]/(
           ZeroDimVoltageCurrentSocModel`Private`nSolventNeg[
            ZeroDimVoltageCurrentSocModel`Private`soc] 
           ZeroDimVoltageCurrentSocModel`Private`modelOptions[
            ZeroDimVoltageCurrentSocModel`molarMassSolvent]), 
          ZeroDimVoltageCurrentSocModel`Private`nRedNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nRedSoc0Neg - (
           ZeroDimVoltageCurrentSocModel`Private`nOxNeg[
            ZeroDimVoltageCurrentSocModel`Private`soc] - 
           ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0), 
          ZeroDimVoltageCurrentSocModel`Private`nOxNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0 + 
           ZeroDimVoltageCurrentSocModel`Private`soc (
             ZeroDimVoltageCurrentSocModel`Private`nOxSoc1Neg - 
             ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0), 
          ZeroDimVoltageCurrentSocModel`Private`nSolventNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nSolventNegSoc0 + 
           ZeroDimVoltageCurrentSocModel`Private`modelOptions[
             ZeroDimVoltageCurrentSocModel`\[Kappa]s] (
             ZeroDimVoltageCurrentSocModel`Private`nRedPos[
              ZeroDimVoltageCurrentSocModel`Private`soc] - 
             ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0), 
          ZeroDimVoltageCurrentSocModel`Private`bOxNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nOxNeg[
            ZeroDimVoltageCurrentSocModel`Private`soc]/(
           ZeroDimVoltageCurrentSocModel`Private`nSolventNeg[
            ZeroDimVoltageCurrentSocModel`Private`soc] 
           ZeroDimVoltageCurrentSocModel`Private`modelOptions[
            ZeroDimVoltageCurrentSocModel`molarMassSolvent]), 
          ZeroDimVoltageCurrentSocModel`limElCurrentDischarging[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          Max[ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityPosDischarging[ZeroDimVoltageCurrentSocModel`Private`soc] 
            ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea, 
            ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityNegDischarging[ZeroDimVoltageCurrentSocModel`Private`soc] 
            ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea], 
          TagSet[ZeroDimVoltageCurrentSocModel`limElCurrentDischarging, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`limElCurrentDischarging, "usage"], 
           "limElCurrentDischarging yields the limiting electric \
(discharging) current at a specified SoC, e.g. limElCurrentDischarging[0.5] \
yields the limiting electric current (in Ampere) at SoC=0.5"], 
          ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityPosDischarging[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := (-(ZeroDimVoltageCurrentSocModel`Private`km 
             ZeroDimVoltageCurrentSocModel`Private`modelOptions[
              ZeroDimVoltageCurrentSocModel`\[Rho]Solvent] 
             ZeroDimVoltageCurrentSocModel`Private`F)) 
           ZeroDimVoltageCurrentSocModel`Private`bOxPos[
            ZeroDimVoltageCurrentSocModel`Private`soc], 
          ZeroDimVoltageCurrentSocModel`Private`F = 96485, 
          ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityNegDischarging[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := (-(ZeroDimVoltageCurrentSocModel`Private`km 
             ZeroDimVoltageCurrentSocModel`Private`modelOptions[
              ZeroDimVoltageCurrentSocModel`\[Rho]Solvent] 
             ZeroDimVoltageCurrentSocModel`Private`F)) 
           ZeroDimVoltageCurrentSocModel`Private`bRedNeg[
            ZeroDimVoltageCurrentSocModel`Private`soc], 
          ZeroDimVoltageCurrentSocModel`cellVoltage[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`cellVoltageOcv[
            ZeroDimVoltageCurrentSocModel`Private`soc] + 
           ZeroDimVoltageCurrentSocModel`\[Eta]Bv[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`elCurrent] + 
           ZeroDimVoltageCurrentSocModel`\[Eta]ElRes[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`elCurrent], 
          TagSet[ZeroDimVoltageCurrentSocModel`cellVoltage, 
           MessageName[ZeroDimVoltageCurrentSocModel`cellVoltage, "usage"], 
           "cellVoltage evaluates the total cell voltage for a given \
state-of-charge and electric current. Example: cellVoltage[0.4,-0.1] yields \
the cell voltage at SoC=0.4 and a discharging el. current of -0.1 A"], 
          ZeroDimVoltageCurrentSocModel`\[Eta]Bv[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`\[Eta]BvPos[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`elCurrent] - 
           ZeroDimVoltageCurrentSocModel`Private`\[Eta]BvNeg[
           ZeroDimVoltageCurrentSocModel`Private`soc, 
            ZeroDimVoltageCurrentSocModel`Private`elCurrent], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Eta]Bv, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Eta]Bv, "usage"], 
           "Activation and concentration overpotential [V]"], 
          ZeroDimVoltageCurrentSocModel`Private`\[Eta]BvPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`\[Eta]BvPosImpl[
           ZeroDimVoltageCurrentSocModel`Private`soc, 
            
            ZeroDimVoltageCurrentSocModel`Private`\
elCurrentToElCurrentDensityPos[
            ZeroDimVoltageCurrentSocModel`Private`elCurrent]], 
          ZeroDimVoltageCurrentSocModel`Private`\[Eta]BvPosImpl[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity, 
             Blank[]]] := 
          2 ZeroDimVoltageCurrentSocModel`Private`fInv 
           Log[(ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity + 
              Sqrt[ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity^2 + 
                4 ZeroDimVoltageCurrentSocModel`Private`gOxPos[
                  ZeroDimVoltageCurrentSocModel`Private`soc, 
                   ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity] 
                 ZeroDimVoltageCurrentSocModel`Private`gRedPos[
                  ZeroDimVoltageCurrentSocModel`Private`soc, 
                   ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity] 
                 ZeroDimVoltageCurrentSocModel`Private`elExchangeCurrentPos[
                   ZeroDimVoltageCurrentSocModel`Private`soc]^2])/(2 
             ZeroDimVoltageCurrentSocModel`Private`gRedPos[
              ZeroDimVoltageCurrentSocModel`Private`soc, 
               ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity] 
             ZeroDimVoltageCurrentSocModel`Private`elExchangeCurrentPos[
              ZeroDimVoltageCurrentSocModel`Private`soc])], 
          ZeroDimVoltageCurrentSocModel`Private`gOxPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity, 
             Blank[]]] := (
            ZeroDimVoltageCurrentSocModel`Private`bOxPos[
             ZeroDimVoltageCurrentSocModel`Private`soc] + 
            ZeroDimVoltageCurrentSocModel`Private`\[CapitalDelta]b[
             ZeroDimVoltageCurrentSocModel`Private`soc, 
              ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity])/
           ZeroDimVoltageCurrentSocModel`Private`bOxPos[
           ZeroDimVoltageCurrentSocModel`Private`soc], 
          ZeroDimVoltageCurrentSocModel`Private`\[CapitalDelta]b[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity/(
           ZeroDimVoltageCurrentSocModel`Private`km 
           ZeroDimVoltageCurrentSocModel`Private`F 
           ZeroDimVoltageCurrentSocModel`Private`modelOptions[
            ZeroDimVoltageCurrentSocModel`\[Rho]Solvent]), 
          ZeroDimVoltageCurrentSocModel`Private`gRedPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity, 
             Blank[]]] := (
            ZeroDimVoltageCurrentSocModel`Private`bRedPos[
             ZeroDimVoltageCurrentSocModel`Private`soc] - 
            ZeroDimVoltageCurrentSocModel`Private`\[CapitalDelta]b[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity])/
           ZeroDimVoltageCurrentSocModel`Private`bRedPos[
           ZeroDimVoltageCurrentSocModel`Private`soc], 
          ZeroDimVoltageCurrentSocModel`Private`elExchangeCurrentPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`F 
           ZeroDimVoltageCurrentSocModel`Private`modelOptions[
            ZeroDimVoltageCurrentSocModel`kpos] 10^3 
           Sqrt[ZeroDimVoltageCurrentSocModel`Private`bRedPos[
              ZeroDimVoltageCurrentSocModel`Private`soc] 
             ZeroDimVoltageCurrentSocModel`Private`bOxPos[
              ZeroDimVoltageCurrentSocModel`Private`soc]], 
          ZeroDimVoltageCurrentSocModel`Private`elCurrentToElCurrentDensityPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`elCurrent/
           ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea, 
          ZeroDimVoltageCurrentSocModel`Private`\[Eta]BvNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`\[Eta]BvNegImpl[
           ZeroDimVoltageCurrentSocModel`Private`soc, 
            
            ZeroDimVoltageCurrentSocModel`Private`\
elCurrentToElCurrentDensityNeg[
            ZeroDimVoltageCurrentSocModel`Private`elCurrent]], 
          ZeroDimVoltageCurrentSocModel`Private`\[Eta]BvNegImpl[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity, 
             Blank[]]] := 
          2 ZeroDimVoltageCurrentSocModel`Private`fInv 
           Log[(ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity + 
              Sqrt[ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity^2 + 
                4 ZeroDimVoltageCurrentSocModel`Private`gOxNeg[
                  ZeroDimVoltageCurrentSocModel`Private`soc, 
                   ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity] 
                 ZeroDimVoltageCurrentSocModel`Private`gRedNeg[
                  ZeroDimVoltageCurrentSocModel`Private`soc, 
                   ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity] 
                 ZeroDimVoltageCurrentSocModel`Private`elExchangeCurrentNeg[
                   ZeroDimVoltageCurrentSocModel`Private`soc]^2])/(2 
             ZeroDimVoltageCurrentSocModel`Private`gRedNeg[
              ZeroDimVoltageCurrentSocModel`Private`soc, 
               ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity] 
             ZeroDimVoltageCurrentSocModel`Private`elExchangeCurrentNeg[
              ZeroDimVoltageCurrentSocModel`Private`soc])], 
          ZeroDimVoltageCurrentSocModel`Private`gOxNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity, 
             Blank[]]] := (
            ZeroDimVoltageCurrentSocModel`Private`bOxNeg[
             ZeroDimVoltageCurrentSocModel`Private`soc] + 
            ZeroDimVoltageCurrentSocModel`Private`\[CapitalDelta]b[
             ZeroDimVoltageCurrentSocModel`Private`soc, 
              ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity])/
           ZeroDimVoltageCurrentSocModel`Private`bOxNeg[
           ZeroDimVoltageCurrentSocModel`Private`soc], 
          ZeroDimVoltageCurrentSocModel`Private`gRedNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity, 
             Blank[]]] := (
            ZeroDimVoltageCurrentSocModel`Private`bRedNeg[
             ZeroDimVoltageCurrentSocModel`Private`soc] - 
            ZeroDimVoltageCurrentSocModel`Private`\[CapitalDelta]b[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity])/
           ZeroDimVoltageCurrentSocModel`Private`bRedNeg[
           ZeroDimVoltageCurrentSocModel`Private`soc], 
          ZeroDimVoltageCurrentSocModel`Private`elExchangeCurrentNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`F 
           ZeroDimVoltageCurrentSocModel`Private`modelOptions[
            ZeroDimVoltageCurrentSocModel`kneg] 10^3 
           Sqrt[ZeroDimVoltageCurrentSocModel`Private`bRedNeg[
              ZeroDimVoltageCurrentSocModel`Private`soc] 
             ZeroDimVoltageCurrentSocModel`Private`bOxNeg[
              ZeroDimVoltageCurrentSocModel`Private`soc]], 
          ZeroDimVoltageCurrentSocModel`Private`elCurrentToElCurrentDensityNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]]] := (-ZeroDimVoltageCurrentSocModel`Private`elCurrent)/
           ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea, 
          ZeroDimVoltageCurrentSocModel`\[Eta]ElRes[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`elCurrent 
           ZeroDimVoltageCurrentSocModel`Private`modelOptions[
            ZeroDimVoltageCurrentSocModel`rCell], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Eta]ElRes, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Eta]ElRes, "usage"], 
           "Ohmic losses [V]"], 
          ZeroDimVoltageCurrentSocModel`plotCellPowerDensityVsElCurrentDensity[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`opts, 
             
             OptionsPattern[{
              ZeroDimVoltageCurrentSocModel`\
plotCellPowerDensityVsElCurrentDensity, Plot}]]] := 
          Module[{ZeroDimVoltageCurrentSocModel`Private`\
lstLimElCurrentDischarging, 
             ZeroDimVoltageCurrentSocModel`Private`minElCurrentDischarging, 
             ZeroDimVoltageCurrentSocModel`Private`memAreaCM2, 
             ZeroDimVoltageCurrentSocModel`Private`maxVoltage, 
             ZeroDimVoltageCurrentSocModel`Private`lstSocValues}, 
            ZeroDimVoltageCurrentSocModel`Private`lstSocValues = 
             OptionValue[ZeroDimVoltageCurrentSocModel`Private`lstSoc]; 
            ZeroDimVoltageCurrentSocModel`Private`maxVoltage = 
             ZeroDimVoltageCurrentSocModel`cellVoltageOcv[
               Max[ZeroDimVoltageCurrentSocModel`Private`lstSocValues]]; 
            ZeroDimVoltageCurrentSocModel`Private`memAreaCM2 = 
             ZeroDimVoltageCurrentSocModel`Private`memArea 100^2; 
            ZeroDimVoltageCurrentSocModel`Private`lstLimElCurrentDischarging = 
             Table[ZeroDimVoltageCurrentSocModel`limElCurrentDischarging[
                 Part[
                 ZeroDimVoltageCurrentSocModel`Private`lstSocValues, 
                  ZeroDimVoltageCurrentSocModel`Private`i]] (1000/
                ZeroDimVoltageCurrentSocModel`Private`memAreaCM2), {
               ZeroDimVoltageCurrentSocModel`Private`i, 1, 
                Length[ZeroDimVoltageCurrentSocModel`Private`lstSocValues]}]; 
            ZeroDimVoltageCurrentSocModel`Private`minElCurrentDischarging = 
             Min[ZeroDimVoltageCurrentSocModel`Private`\
lstLimElCurrentDischarging]; Plot[
              Evaluate[
               Table[ZeroDimVoltageCurrentSocModel`cellVoltage[
                  Part[
                  ZeroDimVoltageCurrentSocModel`Private`lstSocValues, 
                   ZeroDimVoltageCurrentSocModel`Private`i], 
                  ZeroDimVoltageCurrentSocModel`Private`\
elCurrentDensityMilliAmperePerCm2 (
                   ZeroDimVoltageCurrentSocModel`Private`memAreaCM2/1000)] 
                Abs[ZeroDimVoltageCurrentSocModel`Private`\
elCurrentDensityMilliAmperePerCm2], {
                ZeroDimVoltageCurrentSocModel`Private`i, 1, 
                 Length[
                 ZeroDimVoltageCurrentSocModel`Private`lstSocValues]}]], {
              ZeroDimVoltageCurrentSocModel`Private`\
elCurrentDensityMilliAmperePerCm2, 
               ZeroDimVoltageCurrentSocModel`Private`minElCurrentDischarging, 
               0}, Epilog -> Table[
                Style[
                 
                 Line[{{-
                    Part[ZeroDimVoltageCurrentSocModel`Private`\
lstLimElCurrentDischarging, ZeroDimVoltageCurrentSocModel`Private`i], 0}, {-
                    Part[ZeroDimVoltageCurrentSocModel`Private`\
lstLimElCurrentDischarging, ZeroDimVoltageCurrentSocModel`Private`i], 
                    ZeroDimVoltageCurrentSocModel`Private`maxVoltage (-
                    ZeroDimVoltageCurrentSocModel`Private`\
minElCurrentDischarging)}}], Dashed], {
                ZeroDimVoltageCurrentSocModel`Private`i, 1, 
                 Length[
                 ZeroDimVoltageCurrentSocModel`Private`\
lstLimElCurrentDischarging]}], 
              Evaluate[
               FilterRules[
                Flatten[{ZeroDimVoltageCurrentSocModel`Private`opts}], 
                Options[Plot]], 
               Evaluate[
                FilterRules[
                 Options[
                 ZeroDimVoltageCurrentSocModel`\
plotCellPowerDensityVsElCurrentDensity], 
                 Options[Plot]]]], 
              PlotRange -> {{
                ZeroDimVoltageCurrentSocModel`Private`minElCurrentDischarging - 
                 10, 0}, {0, All}}, PlotLegends -> Table[
                StringJoin["SoC = ", 
                 ToString[
                  Part[
                  ZeroDimVoltageCurrentSocModel`Private`lstSocValues, 
                   ZeroDimVoltageCurrentSocModel`Private`i]]], {
                ZeroDimVoltageCurrentSocModel`Private`i, 1, 
                 Length[
                 ZeroDimVoltageCurrentSocModel`Private`lstSocValues]}]]], 
          Options[ZeroDimVoltageCurrentSocModel`\
plotCellPowerDensityVsElCurrentDensity] = {
           ZeroDimVoltageCurrentSocModel`Private`lstSoc -> {0.2, 0.5, 0.8}, 
            ZeroDimVoltageCurrentSocModel`Private`maxSoc -> 0.99, PlotLabel -> 
            "Polarization Plot", 
            FrameLabel -> {
             "El. Current Density [mA/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]",
               "Power Density [mW/\!\(\*SuperscriptBox[\(cm\), \(2\)]\)]"}, 
            ScalingFunctions -> {"Reverse", None}, PlotStyle -> {Full, 
              Dashing[{Small, Small}], 
              Dashing[{0, Small}], 
              Dashing[{0, Small, Small, Small}]}}, 
          TagSet[
          ZeroDimVoltageCurrentSocModel`\
plotCellPowerDensityVsElCurrentDensity, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`\
plotCellPowerDensityVsElCurrentDensity, "usage"], 
           "plotCellVoltageVsElCurrentDensity returns a plot showing the \
power density vs the electric current density for the specified SoC values \
analogous to plotCellVoltageVsElCurrentDensity"]}; (SetDirectory[
           NotebookDirectory[]]; Needs["ZeroDimVoltageCurrentSocModel`", 
           StringJoin[
            NotebookDirectory[], 
            "ZeroDimVoltageCurrentSocModel.wl"]]; \
$CellContext`\[Rho]MixNegInitFun[
            Pattern[$CellContext`cOxNeg, 
             Blank[]]] := 
          0.9970479 + 
           0.0683199 $CellContext`cOxNeg; $CellContext`\[Rho]MixPosInitFun[
            Pattern[$CellContext`cRedPos, 
             Blank[]]] := 
          0.9970479 + 
           0.0384504 $CellContext`cRedPos; $CellContext`cOxNegSoc0Value$$ = 
          1.49; $CellContext`cRedPosSoc0Value$$ = 
          1.12; $CellContext`molarMassOxNegValue$$ = 
          0.25716; $CellContext`molarMassRedPosValue$$ = 
          0.249803; $CellContext`molarMassSolventValue$$ = 18.01528/1000; 
         ZeroDimVoltageCurrentSocModel`initModel[{
           ZeroDimVoltageCurrentSocModel`\[Rho]MixNegSoc0 -> $CellContext`\
\[Rho]MixNegInitFun[$CellContext`cOxNegSoc0Value$$], 
            ZeroDimVoltageCurrentSocModel`\[Rho]MixPosSoc0 -> $CellContext`\
\[Rho]MixPosInitFun[$CellContext`cRedPosSoc0Value$$], 
            ZeroDimVoltageCurrentSocModel`cOxNegSoc0 -> \
$CellContext`cOxNegSoc0Value$$, 
            
            ZeroDimVoltageCurrentSocModel`cRedPosSoc0 -> \
$CellContext`cRedPosSoc0Value$$, 
            ZeroDimVoltageCurrentSocModel`molarMassOxNeg -> \
$CellContext`molarMassOxNegValue$$, 
            ZeroDimVoltageCurrentSocModel`molarMassRedPos -> \
$CellContext`molarMassRedPosValue$$, 
            ZeroDimVoltageCurrentSocModel`molarMassSolvent -> \
$CellContext`molarMassSolventValue$$}]; 
         SetOptions[
          Plot, Frame -> True, Axes -> True, PlotTheme -> "Detailed", 
           AxesStyle -> {
             Directive[Black, 14], Black}, LabelStyle -> {
             Directive[14]}, PlotStyle -> {Full, Dashed, Dotted, DotDashed}]; 
         SetOptions[
          ListPlot, Frame -> True, Axes -> True, PlotTheme -> "Detailed", 
           AxesStyle -> {
             Directive[Black, 14], Black}, LabelStyle -> {
             Directive[14]}, PlotStyle -> {Full, Dashed, Dotted, DotDashed}]; 
         Null)}; Typeset`initDone$$ = True),
     SynchronousInitialization->True,
     UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
     UnsavedVariables:>{Typeset`initDone$$},
     UntrackedVariables:>{Typeset`size$$}], "Manipulate",
    Deployed->True,
    StripOnInput->False],
   Manipulate`InterpretManipulate[1]],
  DynamicModuleValues:>{}]],ExpressionUUID->"efa9e382-c913-40a7-aa76-\
fcdd405ddcd7"]
},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"b66bf0f6-5f54-45f1-b5c4-4684aa0e2721"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1488, 33, 62972, 1139, 24, InheritFromParent,ExpressionUUID->"efa9e382-c913-40a7-aa76-fcdd405ddcd7"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature VxpnNQpbYaAnQCwXhcu0paWZ *)
