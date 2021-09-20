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
NotebookDataLength[    122165,       2192]
NotebookOptionsPosition[    122647,       2187]
NotebookOutlinePosition[    123128,       2207]
CellTagsIndexPosition[    123085,       2204]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 DynamicModuleBox[{$CellContext`cOxNegSoc0Value$$, \
$CellContext`cRedPosSoc0Value$$, $CellContext`flowRateValue$$, \
$CellContext`ohmicCellResistanceValue$$, $CellContext`kNegValue$$, \
$CellContext`kPosValue$$, $CellContext`eNeg0Value$$, \
$CellContext`ePos0Value$$, $CellContext`\[Kappa]sValue$$, \
$CellContext`specElSurfAreaValue$$, $CellContext`elLengthValue$$, \
$CellContext`elWidthValue$$, $CellContext`elHeightValue$$, \
$CellContext`nElNegValue$$, $CellContext`nElPosValue$$, \
$CellContext`zOxPosValue$$, $CellContext`zRedPosValue$$, \
$CellContext`zOxNegValue$$, $CellContext`zRedNegValue$$, \
$CellContext`partialMolarVolSolventValue$$, \
$CellContext`partialMolarVolOxPosValue$$, \
$CellContext`partialMolarVolRedPosValue$$, \
$CellContext`partialMolarVolOxNegValue$$, \
$CellContext`partialMolarVolRedNegValue$$, \
$CellContext`partialMolarVolSupportingElectrolytePosValue$$, \
$CellContext`partialMolarVolSupportingElectrolyteNegValue$$, \
$CellContext`zExchangedIonValue$$, $CellContext`zSuppElectrolyteIonValue$$, \
$CellContext`\[Nu]ExchangedIonNegValue$$, \
$CellContext`\[Nu]ExchangedIonPosValue$$, \
$CellContext`cSuppElectrolyteIonNegValue$$, \
$CellContext`cSuppElectrolyteIonPosValue$$, $CellContext`tempValue$$, \
$CellContext`massTransferCoeff1Value$$, \
$CellContext`massTransferCoeff2Value$$, \
$CellContext`electrolyteVolSoc0Value$$ = Rational[1, 100000]}, 
  TagBox[
   StyleBox[
    DynamicModuleBox[{$CellContext`cOxNegSoc0Value$$ = 
     1.49, $CellContext`cRedPosSoc0Value$$ = 
     1.12, $CellContext`cSuppElectrolyteIonNegValue$$ = 
     0, $CellContext`cSuppElectrolyteIonPosValue$$ = 
     0, $CellContext`elHeightValue$$ = 0.02236, $CellContext`elLengthValue$$ =
      0.004, $CellContext`elWidthValue$$ = 
     0.02236, $CellContext`eNeg0Value$$ = -0.66, $CellContext`ePos0Value$$ = 
     0.62, $CellContext`flowRateValue$$ = 16., $CellContext`kNegValue$$ = 
     0.000033, $CellContext`kPosValue$$ = 
     0.000042000000000000004`, $CellContext`massTransferCoeff1Value$$ = 
     0.000033, $CellContext`massTransferCoeff2Value$$ = 
     0.9, $CellContext`nElNegValue$$ = 1, $CellContext`nElPosValue$$ = 
     1, $CellContext`ohmicCellResistanceValue$$ = 
     0.286, $CellContext`partialMolarVolOxNegValue$$ = 
     0.000189, $CellContext`partialMolarVolOxPosValue$$ = 
     0.00023300000000000003`, $CellContext`partialMolarVolRedNegValue$$ = 
     0.000163, $CellContext`partialMolarVolRedPosValue$$ = 
     0.000212, $CellContext`partialMolarVolSolventValue$$ = 
     0.0000180555, \
$CellContext`partialMolarVolSupportingElectrolyteNegValue$$ = 
     0.0001, $CellContext`partialMolarVolSupportingElectrolytePosValue$$ = 
     0.0001, $CellContext`soc$$ = 0.5, $CellContext`specElSurfAreaValue$$ = 
     200000., $CellContext`tempValue$$ = 
     295.15, $CellContext`zExchangedIonValue$$ = -1, \
$CellContext`zOxNegValue$$ = 2, $CellContext`zOxPosValue$$ = 
     2, $CellContext`zRedNegValue$$ = 1, $CellContext`zRedPosValue$$ = 
     1, $CellContext`zSuppElectrolyteIonValue$$ = 
     1, $CellContext`\[Kappa]sValue$$ = 
     6, $CellContext`\[Nu]ExchangedIonNegValue$$ = 
     0, $CellContext`\[Nu]ExchangedIonPosValue$$ = 0, Typeset`show$$ = True, 
     Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
     Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
     "\"untitled\"", Typeset`specs$$ = {{{
        Hold[$CellContext`soc$$], 0.5, "SoC [-]"}, 0.01, 0.99}, {{
        Hold[$CellContext`flowRateValue$$], 16., "Flow rate [ml/min]"}, 0.001,
        100}, {{
        Hold[$CellContext`cOxNegSoc0Value$$], 1.49, 
        "Molar concentration \!\(\*SubscriptBox[\(c\), \(ox, -\)]\) [mol/l]"},
        0.001, 3}, {{
        Hold[$CellContext`cRedPosSoc0Value$$], 1.12, 
        "Molar concentration \!\(\*SubscriptBox[\(c\), \(red, +\)]\) \
[mol/l]"}, 0.001, 3}, {{
        Hold[$CellContext`cSuppElectrolyteIonNegValue$$], 0, 
        "Molar concentration \!\(\*SubscriptBox[\(c\), \(supp, -\)]\) \
[mol/l]"}, 0, 3}, {{
        Hold[$CellContext`cSuppElectrolyteIonPosValue$$], 0, 
        "Molar concentration \!\(\*SubscriptBox[\(c\), \(supp, +\)]\) \
[mol/l]"}, 0, 3}, {{
        Hold[$CellContext`elLengthValue$$], 0.004, 
        "Electrode length (through-plane direction) [m]"}, 0.001, 0.1}, {{
        Hold[$CellContext`elWidthValue$$], 0.02236, 
        "Electrode width (in-plane direction, orthogonal to forced convective \
flow) [m]"}, 0.001, 0.1}, {{
        Hold[$CellContext`elHeightValue$$], 0.02236, 
        "Electrode height (in-plane direction, parallel to forced convective \
flow) [m]"}, 0.001, 0.1}, {{
        Hold[$CellContext`tempValue$$], 295.15, "Temperature [K]"}, 273.15, 
       323.15}, {{
        Hold[$CellContext`ohmicCellResistanceValue$$], 0.286, 
        "Total ohmic cell resistance [\[CapitalOmega]]"}, 0., 1}, {{
        Hold[$CellContext`eNeg0Value$$], -0.66, 
        "Formal negative half-cell potential [V]"}, -2, 2}, {{
        Hold[$CellContext`ePos0Value$$], 0.62, 
        "Formal positive half-cell potential [V]"}, -2, 2}, {{
        Hold[$CellContext`\[Kappa]sValue$$], 6, 
        "Electro-osmotic drag coefficient [-]"}, 0, 30}, {{
        Hold[$CellContext`specElSurfAreaValue$$], 200000., 
        "Specific electric surface area \!\(\*SubscriptBox[\(a\), \(s\)]\) \
[\!\(\*SuperscriptBox[\(m\), \(-1\)]\)]"}, 1, 100000000}, {{
        Hold[$CellContext`massTransferCoeff1Value$$], 0.000033, 
        "Mass transfer parameter \!\(\*SubscriptBox[\(a\), \(m\)]\) [(m/s\!\(\
\*SuperscriptBox[\()\), \(1 - \*SubscriptBox[\(b\), \(m\)]\)]\)]"}, 
       Rational[1, 100000000], 1}, {{
        Hold[$CellContext`massTransferCoeff2Value$$], 0.9, 
        "Mass transfer parameter \!\(\*SubscriptBox[\(b\), \(m\)]\) [-]"}, 0, 
       2}, {{
        Hold[$CellContext`nElNegValue$$], 1, 
        "Transferred electrons \!\(\*SubscriptBox[\(n\), \(e, -\)]\) [-]"}, 1,
        5, 1}, {{
        Hold[$CellContext`nElPosValue$$], 1, 
        "Transferred electrons \!\(\*SubscriptBox[\(n\), \(e, +\)]\) [-]"}, 1,
        5, 1}, {{
        Hold[$CellContext`\[Nu]ExchangedIonNegValue$$], 0, 
        "Stoichiometric coefficient of exchanged ion \!\(\*SubscriptBox[\(\
\[Nu]\), \(ex, -\)]\) [-]"}, -5, 5, 1}, {{
        Hold[$CellContext`\[Nu]ExchangedIonPosValue$$], 0, 
        "Stoichiometric coefficient of exchanged ion \!\(\*SubscriptBox[\(\
\[Nu]\), \(ex, +\)]\) [-]"}, -5, 5, 1}, {{
        Hold[$CellContext`kNegValue$$], 0.000033, 
        "Reaction constant \!\(\*SubscriptBox[\(k\), \(-\)]\) [m/s]"}, 
       Rational[1, 10000000000], 1}, {{
        Hold[$CellContext`kPosValue$$], 0.000042000000000000004`, 
        "Reaction constant \!\(\*SubscriptBox[\(k\), \(+\)]\) [m/s]"}, 
       Rational[1, 10000000000], 1}, {{
        Hold[$CellContext`zOxPosValue$$], 2, 
        "Charge of species \!\(\*SubscriptBox[\(z\), \(ox, +\)]\) [-]"}, -5, 
       5, 1}, {{
        Hold[$CellContext`zRedPosValue$$], 1, 
        "Charge of species \!\(\*SubscriptBox[\(z\), \(red, +\)]\) [-]"}, -5, 
       5, 1}, {{
        Hold[$CellContext`zOxNegValue$$], 2, 
        "Charge of species \!\(\*SubscriptBox[\(z\), \(ox, -\)]\) [-]"}, -5, 
       5, 1}, {{
        Hold[$CellContext`zRedNegValue$$], 1, 
        "Charge of species \!\(\*SubscriptBox[\(z\), \(red, -\)]\) [-]"}, -5, 
       5, 1}, {{
        Hold[$CellContext`zExchangedIonValue$$], -1, 
        "Charge of exchanged ion \!\(\*SubscriptBox[\(z\), \(ex\)]\) [-]"}, \
-5, 5, 1}, {{
        Hold[$CellContext`zSuppElectrolyteIonValue$$], 1, 
        "Charge of supporting electrolyte ion \!\(\*SubscriptBox[\(z\), \
\(supp\)]\) [-]"}, -5, 5, 1}, {{
        Hold[$CellContext`partialMolarVolSolventValue$$], 0.0000180555, 
        "Partial molar volume of solvent \!\(\*SubscriptBox[\(V\), \(m, \
0\)]\) [\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
       Rational[1, 1000000], 
       Rational[1, 100]}, {{
        Hold[$CellContext`partialMolarVolOxPosValue$$], 
        0.00023300000000000003`, 
        "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, ox, +\)]\) [\!\(\
\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
       Rational[1, 1000000], 
       Rational[1, 100]}, {{
        Hold[$CellContext`partialMolarVolRedPosValue$$], 0.000212, 
        "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, red, +\)]\) \
[\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
       Rational[1, 1000000], 
       Rational[1, 100]}, {{
        Hold[$CellContext`partialMolarVolOxNegValue$$], 0.000189, 
        "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, ox, -\)]\) [\!\(\
\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
       Rational[1, 1000000], 
       Rational[1, 100]}, {{
        Hold[$CellContext`partialMolarVolRedNegValue$$], 0.000163, 
        "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, red, -\)]\) \
[\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
       Rational[1, 1000000], 
       Rational[1, 100]}, {{
        Hold[$CellContext`partialMolarVolSupportingElectrolyteNegValue$$], 
        0.0001, "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, supp, \
-\)]\) [\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
       Rational[1, 1000000], 
       Rational[1, 100]}, {{
        Hold[$CellContext`partialMolarVolSupportingElectrolytePosValue$$], 
        0.0001, "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, supp, \
+\)]\) [\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
       Rational[1, 1000000], 
       Rational[1, 100]}, {
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
              Manipulate`Place[4], 
              Manipulate`Place[5], 
              Manipulate`Place[6]}]}], 
          OpenerView[{
            Style["Cell Geometry", Bold], 
            Column[{
              Manipulate`Place[7], 
              Manipulate`Place[8], 
              Manipulate`Place[9]}]}], 
          OpenerView[{
            Style["Parameters", Bold], 
            Column[{
              Manipulate`Place[10], 
              Manipulate`Place[11], 
              Manipulate`Place[12], 
              Manipulate`Place[13], 
              Manipulate`Place[14], 
              Manipulate`Place[15], 
              Manipulate`Place[16], 
              Manipulate`Place[17]}]}], 
          OpenerView[{
            Style["Electrochemical Reactions", Bold], 
            Column[{
              Manipulate`Place[18], 
              Manipulate`Place[19], 
              Manipulate`Place[20], 
              Manipulate`Place[21], 
              Manipulate`Place[22], 
              Manipulate`Place[23]}]}], 
          OpenerView[{
            Style["Species Properties", Bold], 
            Column[{
              Manipulate`Place[24], 
              Manipulate`Place[25], 
              Manipulate`Place[26], 
              Manipulate`Place[27], 
              Manipulate`Place[28], 
              Manipulate`Place[29], 
              Manipulate`Place[30], 
              Manipulate`Place[31], 
              Manipulate`Place[32], 
              Manipulate`Place[33], 
              Manipulate`Place[34], 
              Manipulate`Place[35], 
              Manipulate`Place[36]}]}]}, ItemSize -> {90, 2}]], 
       Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
     750., {168.3544921875, 173.6455078125}}, Typeset`update$$ = 0, 
     Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
     DynamicBox[Manipulate`ManipulateBoxes[
      2, StandardForm, 
       "Variables" :> {$CellContext`cOxNegSoc0Value$$ = 
         1.49, $CellContext`cRedPosSoc0Value$$ = 
         1.12, $CellContext`cSuppElectrolyteIonNegValue$$ = 
         0, $CellContext`cSuppElectrolyteIonPosValue$$ = 
         0, $CellContext`elHeightValue$$ = 
         0.02236, $CellContext`elLengthValue$$ = 
         0.004, $CellContext`elWidthValue$$ = 
         0.02236, $CellContext`eNeg0Value$$ = -0.66, \
$CellContext`ePos0Value$$ = 0.62, $CellContext`flowRateValue$$ = 
         16., $CellContext`kNegValue$$ = 0.000033, $CellContext`kPosValue$$ = 
         0.000042000000000000004`, $CellContext`massTransferCoeff1Value$$ = 
         0.000033, $CellContext`massTransferCoeff2Value$$ = 
         0.9, $CellContext`nElNegValue$$ = 1, $CellContext`nElPosValue$$ = 
         1, $CellContext`ohmicCellResistanceValue$$ = 
         0.286, $CellContext`partialMolarVolOxNegValue$$ = 
         0.000189, $CellContext`partialMolarVolOxPosValue$$ = 
         0.00023300000000000003`, $CellContext`partialMolarVolRedNegValue$$ = 
         0.000163, $CellContext`partialMolarVolRedPosValue$$ = 
         0.000212, $CellContext`partialMolarVolSolventValue$$ = 
         0.0000180555, \
$CellContext`partialMolarVolSupportingElectrolyteNegValue$$ = 
         0.0001, $CellContext`partialMolarVolSupportingElectrolytePosValue$$ = 
         0.0001, $CellContext`soc$$ = 0.5, $CellContext`specElSurfAreaValue$$ = 
         200000., $CellContext`tempValue$$ = 
         295.15, $CellContext`zExchangedIonValue$$ = -1, \
$CellContext`zOxNegValue$$ = 2, $CellContext`zOxPosValue$$ = 
         2, $CellContext`zRedNegValue$$ = 1, $CellContext`zRedPosValue$$ = 
         1, $CellContext`zSuppElectrolyteIonValue$$ = 
         1, $CellContext`\[Kappa]sValue$$ = 
         6, $CellContext`\[Nu]ExchangedIonNegValue$$ = 
         0, $CellContext`\[Nu]ExchangedIonPosValue$$ = 0}, 
       "ControllerVariables" :> {}, 
       "OtherVariables" :> {
        Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
         Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
         Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
         Typeset`initDone$$, Typeset`skipInitDone$$}, 
       "Body" :> (
        ZeroDimVoltageCurrentSocModel`initModel[{
          ZeroDimVoltageCurrentSocModel`cOxNegSoc0 -> \
$CellContext`cOxNegSoc0Value$$ 10^3, 
           ZeroDimVoltageCurrentSocModel`cRedPosSoc0 -> \
$CellContext`cRedPosSoc0Value$$ 10^3, 
           ZeroDimVoltageCurrentSocModel`flowRate -> \
$CellContext`flowRateValue$$/(60 10^6), 
           ZeroDimVoltageCurrentSocModel`ohmicCellResistance -> \
$CellContext`ohmicCellResistanceValue$$, 
           ZeroDimVoltageCurrentSocModel`kneg -> $CellContext`kNegValue$$, 
           ZeroDimVoltageCurrentSocModel`kpos -> $CellContext`kPosValue$$, 
           ZeroDimVoltageCurrentSocModel`eNeg0 -> $CellContext`eNeg0Value$$, 
           ZeroDimVoltageCurrentSocModel`ePos0 -> $CellContext`ePos0Value$$, 
           ZeroDimVoltageCurrentSocModel`\[Kappa]s -> \
$CellContext`\[Kappa]sValue$$, 
           ZeroDimVoltageCurrentSocModel`T -> $CellContext`tempValue$$, 
           ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea -> \
$CellContext`specElSurfAreaValue$$, 
           ZeroDimVoltageCurrentSocModel`elLength -> \
$CellContext`elLengthValue$$, 
           ZeroDimVoltageCurrentSocModel`elWidth -> \
$CellContext`elWidthValue$$, 
           ZeroDimVoltageCurrentSocModel`elHeight -> \
$CellContext`elHeightValue$$, 
           ZeroDimVoltageCurrentSocModel`zOxPos -> $CellContext`zOxPosValue$$,
            ZeroDimVoltageCurrentSocModel`zRedPos -> \
$CellContext`zRedPosValue$$, 
           ZeroDimVoltageCurrentSocModel`zOxNeg -> $CellContext`zOxNegValue$$,
            ZeroDimVoltageCurrentSocModel`zRedNeg -> \
$CellContext`zRedNegValue$$, 
           ZeroDimVoltageCurrentSocModel`zExchangedIon -> \
$CellContext`zExchangedIonValue$$, 
           ZeroDimVoltageCurrentSocModel`zSuppElectrolyteIon -> \
$CellContext`zSuppElectrolyteIonValue$$, 
           ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonNeg -> \
$CellContext`\[Nu]ExchangedIonNegValue$$, 
           ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonPos -> \
$CellContext`\[Nu]ExchangedIonPosValue$$, 
           ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonNeg -> \
$CellContext`cSuppElectrolyteIonNegValue$$ 10^3, 
           ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonPos -> \
$CellContext`cSuppElectrolyteIonPosValue$$ 10^3, 
           ZeroDimVoltageCurrentSocModel`partialMolarVolSolvent -> \
$CellContext`partialMolarVolSolventValue$$, 
           ZeroDimVoltageCurrentSocModel`partialMolarVolOxPos -> \
$CellContext`partialMolarVolOxPosValue$$, 
           
           ZeroDimVoltageCurrentSocModel`partialMolarVolRedPos -> \
$CellContext`partialMolarVolRedPosValue$$, 
           ZeroDimVoltageCurrentSocModel`partialMolarVolOxNeg -> \
$CellContext`partialMolarVolOxNegValue$$, 
           ZeroDimVoltageCurrentSocModel`partialMolarVolRedNeg -> \
$CellContext`partialMolarVolRedNegValue$$, 
           ZeroDimVoltageCurrentSocModel`\
partialMolarVolSupportingElectrolytePos -> \
$CellContext`partialMolarVolSupportingElectrolytePosValue$$, 
           ZeroDimVoltageCurrentSocModel`\
partialMolarVolSupportingElectrolyteNeg -> \
$CellContext`partialMolarVolSupportingElectrolyteNegValue$$, 
           ZeroDimVoltageCurrentSocModel`nElNeg -> $CellContext`nElNegValue$$,
            ZeroDimVoltageCurrentSocModel`nElPos -> \
$CellContext`nElPosValue$$, 
           ZeroDimVoltageCurrentSocModel`massTransferCoeff1 -> \
$CellContext`massTransferCoeff1Value$$, 
           ZeroDimVoltageCurrentSocModel`massTransferCoeff2 -> \
$CellContext`massTransferCoeff2Value$$, 
           ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0 -> \
$CellContext`electrolyteVolSoc0Value$$}]; Column[{
           Row[{
             
             ZeroDimVoltageCurrentSocModel`plotCellVoltageVsElCurrentDensity[{\
$CellContext`lstSoc -> {$CellContext`soc$$}, PlotLegends -> None, PlotLabel -> 
               "Cell Voltage", ImageSize -> 370, ImageMargins -> None, 
               PlotStyle -> {Full}}], 
             Spacer[10], 
             
             ZeroDimVoltageCurrentSocModel`\
plotCellPowerDensityVsElCurrentDensity[{$CellContext`lstSoc -> \
{$CellContext`soc$$}, PlotLegends -> None, PlotLabel -> "Cell Power Density", 
               ImageSize -> 370, ImageMargins -> None, 
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
          1}, {{$CellContext`flowRateValue$$, 16., "Flow rate [ml/min]"}, 
          0.001, 100, Appearance -> "Labeled", ControlPlacement -> 
          2}, {{$CellContext`cOxNegSoc0Value$$, 1.49, 
           "Molar concentration \!\(\*SubscriptBox[\(c\), \(ox, -\)]\) \
[mol/l]"}, 0.001, 3, Appearance -> "Labeled", ControlPlacement -> 
          3}, {{$CellContext`cRedPosSoc0Value$$, 1.12, 
           "Molar concentration \!\(\*SubscriptBox[\(c\), \(red, +\)]\) \
[mol/l]"}, 0.001, 3, Appearance -> "Labeled", ControlPlacement -> 
          4}, {{$CellContext`cSuppElectrolyteIonNegValue$$, 0, 
           "Molar concentration \!\(\*SubscriptBox[\(c\), \(supp, -\)]\) \
[mol/l]"}, 0, 3, Appearance -> "Labeled", ControlPlacement -> 
          5}, {{$CellContext`cSuppElectrolyteIonPosValue$$, 0, 
           "Molar concentration \!\(\*SubscriptBox[\(c\), \(supp, +\)]\) \
[mol/l]"}, 0, 3, Appearance -> "Labeled", ControlPlacement -> 
          6}, {{$CellContext`elLengthValue$$, 0.004, 
           "Electrode length (through-plane direction) [m]"}, 0.001, 0.1, 
          Appearance -> "Labeled", ControlPlacement -> 
          7}, {{$CellContext`elWidthValue$$, 0.02236, 
           "Electrode width (in-plane direction, orthogonal to forced \
convective flow) [m]"}, 0.001, 0.1, Appearance -> "Labeled", ControlPlacement -> 
          8}, {{$CellContext`elHeightValue$$, 0.02236, 
           "Electrode height (in-plane direction, parallel to forced \
convective flow) [m]"}, 0.001, 0.1, Appearance -> "Labeled", ControlPlacement -> 
          9}, {{$CellContext`tempValue$$, 295.15, "Temperature [K]"}, 273.15, 
          323.15, Appearance -> "Labeled", ControlPlacement -> 
          10}, {{$CellContext`ohmicCellResistanceValue$$, 0.286, 
           "Total ohmic cell resistance [\[CapitalOmega]]"}, 0., 1, 
          Appearance -> "Labeled", ControlPlacement -> 
          11}, {{$CellContext`eNeg0Value$$, -0.66, 
           "Formal negative half-cell potential [V]"}, -2, 2, Appearance -> 
          "Labeled", ControlPlacement -> 
          12}, {{$CellContext`ePos0Value$$, 0.62, 
           "Formal positive half-cell potential [V]"}, -2, 2, Appearance -> 
          "Labeled", ControlPlacement -> 
          13}, {{$CellContext`\[Kappa]sValue$$, 6, 
           "Electro-osmotic drag coefficient [-]"}, 0, 30, Appearance -> 
          "Labeled", ControlPlacement -> 
          14}, {{$CellContext`specElSurfAreaValue$$, 200000., 
           "Specific electric surface area \!\(\*SubscriptBox[\(a\), \(s\)]\) \
[\!\(\*SuperscriptBox[\(m\), \(-1\)]\)]"}, 1, 100000000, Appearance -> 
          "Labeled", ControlPlacement -> 
          15}, {{$CellContext`massTransferCoeff1Value$$, 0.000033, 
           "Mass transfer parameter \!\(\*SubscriptBox[\(a\), \(m\)]\) \
[(m/s\!\(\*SuperscriptBox[\()\), \(1 - \*SubscriptBox[\(b\), \(m\)]\)]\)]"}, 
          Rational[1, 100000000], 1, Appearance -> "Labeled", 
          ControlPlacement -> 
          16}, {{$CellContext`massTransferCoeff2Value$$, 0.9, 
           "Mass transfer parameter \!\(\*SubscriptBox[\(b\), \(m\)]\) [-]"}, 
          0, 2, Appearance -> "Labeled", ControlPlacement -> 
          17}, {{$CellContext`nElNegValue$$, 1, 
           "Transferred electrons \!\(\*SubscriptBox[\(n\), \(e, -\)]\) [-]"},
           1, 5, 1, Appearance -> "Labeled", ControlPlacement -> 
          18}, {{$CellContext`nElPosValue$$, 1, 
           "Transferred electrons \!\(\*SubscriptBox[\(n\), \(e, +\)]\) [-]"},
           1, 5, 1, Appearance -> "Labeled", ControlPlacement -> 
          19}, {{$CellContext`\[Nu]ExchangedIonNegValue$$, 0, 
           "Stoichiometric coefficient of exchanged ion \!\(\*SubscriptBox[\(\
\[Nu]\), \(ex, -\)]\) [-]"}, -5, 5, 1, Appearance -> "Labeled", 
          ControlPlacement -> 
          20}, {{$CellContext`\[Nu]ExchangedIonPosValue$$, 0, 
           "Stoichiometric coefficient of exchanged ion \!\(\*SubscriptBox[\(\
\[Nu]\), \(ex, +\)]\) [-]"}, -5, 5, 1, Appearance -> "Labeled", 
          ControlPlacement -> 
          21}, {{$CellContext`kNegValue$$, 0.000033, 
           "Reaction constant \!\(\*SubscriptBox[\(k\), \(-\)]\) [m/s]"}, 
          Rational[1, 10000000000], 1, Appearance -> "Labeled", 
          ControlPlacement -> 
          22}, {{$CellContext`kPosValue$$, 0.000042000000000000004`, 
           "Reaction constant \!\(\*SubscriptBox[\(k\), \(+\)]\) [m/s]"}, 
          Rational[1, 10000000000], 1, Appearance -> "Labeled", 
          ControlPlacement -> 
          23}, {{$CellContext`zOxPosValue$$, 2, 
           "Charge of species \!\(\*SubscriptBox[\(z\), \(ox, +\)]\) [-]"}, \
-5, 5, 1, Appearance -> "Labeled", ControlPlacement -> 
          24}, {{$CellContext`zRedPosValue$$, 1, 
           "Charge of species \!\(\*SubscriptBox[\(z\), \(red, +\)]\) [-]"}, \
-5, 5, 1, Appearance -> "Labeled", ControlPlacement -> 
          25}, {{$CellContext`zOxNegValue$$, 2, 
           "Charge of species \!\(\*SubscriptBox[\(z\), \(ox, -\)]\) [-]"}, \
-5, 5, 1, Appearance -> "Labeled", ControlPlacement -> 
          26}, {{$CellContext`zRedNegValue$$, 1, 
           "Charge of species \!\(\*SubscriptBox[\(z\), \(red, -\)]\) [-]"}, \
-5, 5, 1, Appearance -> "Labeled", ControlPlacement -> 
          27}, {{$CellContext`zExchangedIonValue$$, -1, 
           "Charge of exchanged ion \!\(\*SubscriptBox[\(z\), \(ex\)]\) \
[-]"}, -5, 5, 1, Appearance -> "Labeled", ControlPlacement -> 
          28}, {{$CellContext`zSuppElectrolyteIonValue$$, 1, 
           "Charge of supporting electrolyte ion \!\(\*SubscriptBox[\(z\), \
\(supp\)]\) [-]"}, -5, 5, 1, Appearance -> "Labeled", ControlPlacement -> 
          29}, {{$CellContext`partialMolarVolSolventValue$$, 0.0000180555, 
           "Partial molar volume of solvent \!\(\*SubscriptBox[\(V\), \(m, \
0\)]\) [\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
          Rational[1, 1000000], 
          Rational[1, 100], Appearance -> "Labeled", ControlPlacement -> 
          30}, {{$CellContext`partialMolarVolOxPosValue$$, 
           0.00023300000000000003`, 
           "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, ox, +\)]\) \
[\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
          Rational[1, 1000000], 
          Rational[1, 100], Appearance -> "Labeled", ControlPlacement -> 
          31}, {{$CellContext`partialMolarVolRedPosValue$$, 0.000212, 
           "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, red, +\)]\) [\
\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
          Rational[1, 1000000], 
          Rational[1, 100], Appearance -> "Labeled", ControlPlacement -> 
          32}, {{$CellContext`partialMolarVolOxNegValue$$, 0.000189, 
           "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, ox, -\)]\) \
[\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
          Rational[1, 1000000], 
          Rational[1, 100], Appearance -> "Labeled", ControlPlacement -> 
          33}, {{$CellContext`partialMolarVolRedNegValue$$, 0.000163, 
           "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, red, -\)]\) [\
\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
          Rational[1, 1000000], 
          Rational[1, 100], Appearance -> "Labeled", ControlPlacement -> 
          34}, {{$CellContext`partialMolarVolSupportingElectrolyteNegValue$$, 
           0.0001, "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, supp, \
-\)]\) [\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
          Rational[1, 1000000], 
          Rational[1, 100], Appearance -> "Labeled", ControlPlacement -> 
          35}, {{$CellContext`partialMolarVolSupportingElectrolytePosValue$$, 
           0.0001, "Partial molar volume \!\(\*SubscriptBox[\(V\), \(m, supp, \
+\)]\) [\!\(\*SuperscriptBox[\(m\), \(3\)]\)/mol]"}, 
          Rational[1, 1000000], 
          Rational[1, 100], Appearance -> "Labeled", ControlPlacement -> 36}, 
         
         Column[{
           Style["Operating Conditions", Bold], 
           Column[{
             Manipulate`Place[1], 
             Manipulate`Place[2]}], 
           OpenerView[{
             Style["Initial Conditions", Bold], 
             Column[{
               Manipulate`Place[3], 
               Manipulate`Place[4], 
               Manipulate`Place[5], 
               Manipulate`Place[6]}]}], 
           OpenerView[{
             Style["Cell Geometry", Bold], 
             Column[{
               Manipulate`Place[7], 
               Manipulate`Place[8], 
               Manipulate`Place[9]}]}], 
           OpenerView[{
             Style["Parameters", Bold], 
             Column[{
               Manipulate`Place[10], 
               Manipulate`Place[11], 
               Manipulate`Place[12], 
               Manipulate`Place[13], 
               Manipulate`Place[14], 
               Manipulate`Place[15], 
               Manipulate`Place[16], 
               Manipulate`Place[17]}]}], 
           OpenerView[{
             Style["Electrochemical Reactions", Bold], 
             Column[{
               Manipulate`Place[18], 
               Manipulate`Place[19], 
               Manipulate`Place[20], 
               Manipulate`Place[21], 
               Manipulate`Place[22], 
               Manipulate`Place[23]}]}], 
           OpenerView[{
             Style["Species Properties", Bold], 
             Column[{
               Manipulate`Place[24], 
               Manipulate`Place[25], 
               Manipulate`Place[26], 
               Manipulate`Place[27], 
               Manipulate`Place[28], 
               Manipulate`Place[29], 
               Manipulate`Place[30], 
               Manipulate`Place[31], 
               Manipulate`Place[32], 
               Manipulate`Place[33], 
               Manipulate`Place[34], 
               Manipulate`Place[35], 
               Manipulate`Place[36]}]}]}, ItemSize -> {90, 2}]}, 
       "Options" :> {ControlPlacement -> Top, FrameLabel -> {"", "", 
           Style["0D U-I-SoC Model", 16, Bold], ""}, FrameMargins -> None, 
         ImageMargins -> None}, "DefaultOptions" :> {}],
      ImageSizeCache->{789., {303., 309.}},
      SingleEvaluation->True],
     Deinitialization:>None,
     DynamicModuleValues:>{},
     Initialization:>({{ZeroDimVoltageCurrentSocModel`initModel[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`opts, 
             OptionsPattern[]]] := 
          Module[{}, 
            ZeroDimVoltageCurrentSocModel`Private`modelParams = 
             ZeroDimVoltageCurrentSocModel`Private`getUniqueOptions[
               Flatten[{
                 Options[ZeroDimVoltageCurrentSocModel`initModel], 
                 ZeroDimVoltageCurrentSocModel`Private`opts}]]; 
            ZeroDimVoltageCurrentSocModel`Private`initImpl], 
          Options[ZeroDimVoltageCurrentSocModel`initModel] = {
           ZeroDimVoltageCurrentSocModel`zOxPos -> 2, 
            ZeroDimVoltageCurrentSocModel`zRedPos -> 1, 
            ZeroDimVoltageCurrentSocModel`zOxNeg -> 2, 
            ZeroDimVoltageCurrentSocModel`zRedNeg -> 1, 
            ZeroDimVoltageCurrentSocModel`zExchangedIon -> -1, 
            ZeroDimVoltageCurrentSocModel`zSuppElectrolyteIon -> 1, 
            ZeroDimVoltageCurrentSocModel`\[Nu]RedPos -> 1, 
            ZeroDimVoltageCurrentSocModel`\[Nu]OxPos -> -1, 
            ZeroDimVoltageCurrentSocModel`\[Nu]RedNeg -> 1, 
            ZeroDimVoltageCurrentSocModel`\[Nu]OxNeg -> -1, 
            ZeroDimVoltageCurrentSocModel`nElPos -> 1, 
            ZeroDimVoltageCurrentSocModel`nElNeg -> 1, 
            ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonPos -> 0, 
            ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonNeg -> 0, 
            ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonNeg -> 0, 
            ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonPos -> 0, 
            ZeroDimVoltageCurrentSocModel`T -> 295.15, 
            ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0 -> 0.00001, 
            ZeroDimVoltageCurrentSocModel`elLength -> 0.004, 
            ZeroDimVoltageCurrentSocModel`elWidth -> 0.02236, 
            ZeroDimVoltageCurrentSocModel`elHeight -> 0.02236, 
            ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea -> 200000, 
            ZeroDimVoltageCurrentSocModel`flowRate -> 1/3750000, 
            ZeroDimVoltageCurrentSocModel`ohmicCellResistance -> 0.286, 
            ZeroDimVoltageCurrentSocModel`eNeg0 -> -0.66, 
            ZeroDimVoltageCurrentSocModel`ePos0 -> 0.62, 
            ZeroDimVoltageCurrentSocModel`kneg -> 0.000033, 
            ZeroDimVoltageCurrentSocModel`kpos -> 0.000042000000000000004`, 
            ZeroDimVoltageCurrentSocModel`\[Kappa]s -> 6, 
            ZeroDimVoltageCurrentSocModel`cOxNegSoc0 -> 1490., 
            ZeroDimVoltageCurrentSocModel`cRedNegSoc0 -> 0., 
            ZeroDimVoltageCurrentSocModel`cOxPosSoc0 -> 0., 
            ZeroDimVoltageCurrentSocModel`cRedPosSoc0 -> 1120., 
            ZeroDimVoltageCurrentSocModel`massTransferCoeff1 -> 0.000033, 
            ZeroDimVoltageCurrentSocModel`massTransferCoeff2 -> 0.9, 
            ZeroDimVoltageCurrentSocModel`molarMassSolvent -> 0.01801528, 
            ZeroDimVoltageCurrentSocModel`molarMassOxNeg -> 0.25716, 
            ZeroDimVoltageCurrentSocModel`molarMassRedNeg -> 0.22171, 
            ZeroDimVoltageCurrentSocModel`molarMassOxPos -> 0.285253, 
            ZeroDimVoltageCurrentSocModel`molarMassRedPos -> 0.249803, 
            ZeroDimVoltageCurrentSocModel`partialMolarVolSolvent -> 
            0.0000180555, ZeroDimVoltageCurrentSocModel`partialMolarVolOxNeg -> 
            0.000189, ZeroDimVoltageCurrentSocModel`partialMolarVolRedNeg -> 
            0.000163, ZeroDimVoltageCurrentSocModel`partialMolarVolOxPos -> 
            0.00023300000000000003`, 
            ZeroDimVoltageCurrentSocModel`partialMolarVolRedPos -> 0.000212, 
            ZeroDimVoltageCurrentSocModel`\
partialMolarVolSupportingElectrolyteNeg -> 0., 
            ZeroDimVoltageCurrentSocModel`\
partialMolarVolSupportingElectrolytePos -> 0., 
            ZeroDimVoltageCurrentSocModel`membranePotential -> 
            "thermodynamics"}, 
          TagSet[ZeroDimVoltageCurrentSocModel`initModel, 
           MessageName[ZeroDimVoltageCurrentSocModel`initModel, "usage"], 
           "initModel initializes the model and has to be called before any \
model evaluation can be performed. When called as initModel[] without \
arguments, the default model parameters are used. The default parameters can \
be overwritten by providing a list of rules to initModel, e.g. \
initModel[{elLength->0.01,flowRate-> 20}] sets the electrode length in the \
through-plane direction to 0.01 m and the flow rate to 20 ml/s. Parameters \
that are not passed to initModel are (re-)initialized to their default \
values."], ZeroDimVoltageCurrentSocModel`Private`modelParams = 
          Association[
           ZeroDimVoltageCurrentSocModel`zOxPos -> 2, 
            ZeroDimVoltageCurrentSocModel`zRedPos -> 1, 
            ZeroDimVoltageCurrentSocModel`zOxNeg -> 2, 
            ZeroDimVoltageCurrentSocModel`zRedNeg -> 1, 
            ZeroDimVoltageCurrentSocModel`zExchangedIon -> -1, 
            ZeroDimVoltageCurrentSocModel`zSuppElectrolyteIon -> 1, 
            ZeroDimVoltageCurrentSocModel`\[Nu]RedPos -> 1, 
            ZeroDimVoltageCurrentSocModel`\[Nu]OxPos -> -1, 
            ZeroDimVoltageCurrentSocModel`\[Nu]RedNeg -> 1, 
            ZeroDimVoltageCurrentSocModel`\[Nu]OxNeg -> -1, 
            ZeroDimVoltageCurrentSocModel`nElPos -> 1, 
            ZeroDimVoltageCurrentSocModel`nElNeg -> 1, 
            ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonPos -> 0, 
            ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonNeg -> 0, 
            ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonNeg -> 0, 
            ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonPos -> 0, 
            ZeroDimVoltageCurrentSocModel`T -> 295.15, 
            ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0 -> 1/100000, 
            ZeroDimVoltageCurrentSocModel`elLength -> 0.004, 
            ZeroDimVoltageCurrentSocModel`elWidth -> 0.02236, 
            ZeroDimVoltageCurrentSocModel`elHeight -> 0.02236, 
            ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea -> 200000., 
            ZeroDimVoltageCurrentSocModel`flowRate -> 2.6666666666666667`*^-7,
             ZeroDimVoltageCurrentSocModel`ohmicCellResistance -> 0.286, 
            ZeroDimVoltageCurrentSocModel`eNeg0 -> -0.66, 
            ZeroDimVoltageCurrentSocModel`ePos0 -> 0.62, 
            ZeroDimVoltageCurrentSocModel`kneg -> 0.000033, 
            ZeroDimVoltageCurrentSocModel`kpos -> 0.000042000000000000004`, 
            ZeroDimVoltageCurrentSocModel`\[Kappa]s -> 6, 
            ZeroDimVoltageCurrentSocModel`cOxNegSoc0 -> 1490., 
            ZeroDimVoltageCurrentSocModel`cRedNegSoc0 -> 0., 
            ZeroDimVoltageCurrentSocModel`cOxPosSoc0 -> 0., 
            ZeroDimVoltageCurrentSocModel`cRedPosSoc0 -> 1120., 
            ZeroDimVoltageCurrentSocModel`massTransferCoeff1 -> 0.000033, 
            ZeroDimVoltageCurrentSocModel`massTransferCoeff2 -> 0.9, 
            ZeroDimVoltageCurrentSocModel`molarMassSolvent -> 0.01801528, 
            ZeroDimVoltageCurrentSocModel`molarMassOxNeg -> 0.25716, 
            ZeroDimVoltageCurrentSocModel`molarMassRedNeg -> 0.22171, 
            ZeroDimVoltageCurrentSocModel`molarMassOxPos -> 0.285253, 
            ZeroDimVoltageCurrentSocModel`molarMassRedPos -> 0.249803, 
            ZeroDimVoltageCurrentSocModel`partialMolarVolSolvent -> 
            0.0000180555, ZeroDimVoltageCurrentSocModel`partialMolarVolOxNeg -> 
            0.000189, ZeroDimVoltageCurrentSocModel`partialMolarVolRedNeg -> 
            0.000163, ZeroDimVoltageCurrentSocModel`partialMolarVolOxPos -> 
            0.00023300000000000003`, 
            ZeroDimVoltageCurrentSocModel`partialMolarVolRedPos -> 0.000212, 
            ZeroDimVoltageCurrentSocModel`\
partialMolarVolSupportingElectrolyteNeg -> 0.0001, 
            ZeroDimVoltageCurrentSocModel`\
partialMolarVolSupportingElectrolytePos -> 0.0001, 
            ZeroDimVoltageCurrentSocModel`membranePotential -> 
            "thermodynamics"], 
          TagSet[ZeroDimVoltageCurrentSocModel`zOxPos, 
           MessageName[ZeroDimVoltageCurrentSocModel`zOxPos, "usage"], 
           "Charge number of oxidized form of electro-active ion involved in \
the electrochemical reaction within the positive electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`zRedPos, 
           MessageName[ZeroDimVoltageCurrentSocModel`zRedPos, "usage"], 
           "Charge number of reduzed form of electro-active ion involved in \
the electrochemical reaction within the positive electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`zOxNeg, 
           MessageName[ZeroDimVoltageCurrentSocModel`zOxNeg, "usage"], 
           "Charge number of oxidized form of electro-active ion involved in \
the electrochemical reaction within the negative electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`zRedNeg, 
           MessageName[ZeroDimVoltageCurrentSocModel`zRedNeg, "usage"], 
           "Charge number of reduzed form of electro-active ion involved in \
the electrochemical reaction within the negative electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`zExchangedIon, 
           MessageName[ZeroDimVoltageCurrentSocModel`zExchangedIon, "usage"], 
           "Charge number of the ion that is exchanged through the membrane \
(assuming perfect permselectivity)"], 
          TagSet[ZeroDimVoltageCurrentSocModel`zSuppElectrolyteIon, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`zSuppElectrolyteIon, "usage"], 
           "Let us consider a supporting electrolyte salt that dissociates \
according to M -> z_a A + z_b B, where B is the exchanged ion through the \
perm-selective membrane. Then the variable \
chargeNumberSupportingElectrolyteIon is the charge number of the electrolyte \
species A. Example: In the 4-HO-TEMPO/MV system, NaCl is used as a supporting \
electrolyte. Since in this system chloride ions are exchanged through the \
membrane we have chargeNumberSupportingElectrolyteIon = z_{Na} = 1."], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Nu]RedPos, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Nu]RedPos, "usage"], 
           "Stoichiometric coefficient of reduced species in the positive \
electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Nu]OxPos, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Nu]OxPos, "usage"], 
           "Stoichiometric coefficient of oxidized species in the positive \
electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Nu]RedNeg, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Nu]RedNeg, "usage"], 
           "Stoichiometric coefficient of reduced species in the negative \
electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Nu]OxNeg, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Nu]OxNeg, "usage"], 
           "Stoichiometric coefficient of oxidized species in the negative \
electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`nElPos, 
           MessageName[ZeroDimVoltageCurrentSocModel`nElPos, "usage"], 
           "Number of electrons transferred in the electrochemical reaction \
within the positive electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`nElNeg, 
           MessageName[ZeroDimVoltageCurrentSocModel`nElNeg, "usage"], 
           
           "Number of electrons transferred in the electrochemical reaction \
within the negative electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonPos, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonPos, "usage"], 
           "Stoichiometric coefficient of the exchanged ion species in the \
positive electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonNeg, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonNeg, "usage"], 
           "Stoichiometric coefficient of the exchanged ion species in the \
negative electrode"], 
          TagSet[ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonNeg, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonNeg, "usage"], 
           "Molar concentration of the supporting electrolyte that \
contributes to the concentration of the exchanged ion in the negolyte"], 
          TagSet[ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonPos, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonPos, "usage"], 
           "Molar concentration of the supporting electrolyte that \
contributes to the concentration of the exchanged ion in the posolyte"], 
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
           "Volumetric flow rate [\!\(\*SuperscriptBox[\(m\), \(3\)]\)/s]"], 
          TagSet[ZeroDimVoltageCurrentSocModel`ohmicCellResistance, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`ohmicCellResistance, "usage"], 
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
          TagSet[ZeroDimVoltageCurrentSocModel`massTransferCoeff1, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`massTransferCoeff1, "usage"], 
           "Coefficient in the empirical mass transfer model \
\!\(\*SubscriptBox[\(k\), \
\(m\)]\)=(massTransferCoeff1*\!\(\*SuperscriptBox[\(v\), \(massTransferCoeff2\
\)]\))."], 
          TagSet[ZeroDimVoltageCurrentSocModel`massTransferCoeff2, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`massTransferCoeff2, "usage"], 
           "Coefficient in the empirical mass transfer model \
\!\(\*SubscriptBox[\(k\), \
\(m\)]\)=(massTransferCoeff1*\!\(\*SuperscriptBox[\(v\), \(massTransferCoeff2\
\)]\))."], 
          TagSet[ZeroDimVoltageCurrentSocModel`molarMassSolvent, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`molarMassSolvent, "usage"], 
           "Molar mass of solvent species"], 
          TagSet[ZeroDimVoltageCurrentSocModel`molarMassOxNeg, 
           MessageName[ZeroDimVoltageCurrentSocModel`molarMassOxNeg, "usage"],
            "Molar mass of oxidized salt (e.g. methyl-viologen dichloride \
\!\(\*SubscriptBox[\(MVCl\), \(2\)]\)) in the negative half-cell"], 
          TagSet[ZeroDimVoltageCurrentSocModel`molarMassRedNeg, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`molarMassRedNeg, "usage"], 
           "Molar mass of reduced salt (e.g. methyl-viologen chloride MVCl) \
in the negative half-cell"], 
          TagSet[ZeroDimVoltageCurrentSocModel`molarMassOxPos, 
           MessageName[ZeroDimVoltageCurrentSocModel`molarMassOxPos, "usage"],
            "Molar mass of oxidized salt (e.g. TMATEMPO dichloride \
\!\(\*SubscriptBox[\(TCl\), \(2\)]\)) in the positive half-cell"], 
          TagSet[ZeroDimVoltageCurrentSocModel`molarMassRedPos, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`molarMassRedPos, "usage"], 
           "Molar mass of reduzed salt (e.g. TMATEMPO chloride TCl) in the \
positive half-cell"], 
          TagSet[ZeroDimVoltageCurrentSocModel`partialMolarVolSolvent, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`partialMolarVolSolvent, "usage"], 
           "Molar volume of solvent species"], 
          TagSet[ZeroDimVoltageCurrentSocModel`partialMolarVolOxNeg, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`partialMolarVolOxNeg, "usage"], 
           "Molar volume of oxidized salt in the negative half-cell"], 
          TagSet[ZeroDimVoltageCurrentSocModel`partialMolarVolRedNeg, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`partialMolarVolRedNeg, "usage"], 
           "Molar volume of the reduzed salt in the negative half-cell"], 
          TagSet[ZeroDimVoltageCurrentSocModel`partialMolarVolOxPos, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`partialMolarVolOxPos, "usage"], 
           "Molar volume of the oxidized salt in the positive half-cell"], 
          TagSet[ZeroDimVoltageCurrentSocModel`partialMolarVolRedPos, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`partialMolarVolRedPos, "usage"], 
           "Molar volume of the reduced salt in the negative half-cell"], 
          TagSet[
          ZeroDimVoltageCurrentSocModel`\
partialMolarVolSupportingElectrolyteNeg, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`\
partialMolarVolSupportingElectrolyteNeg, "usage"], 
           "Molar volume of the supporting electrolyte in the negative \
half-cell"], 
          TagSet[
          ZeroDimVoltageCurrentSocModel`\
partialMolarVolSupportingElectrolytePos, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`\
partialMolarVolSupportingElectrolytePos, "usage"], 
           "Molar volume of the supporting electrolyte in the positive \
half-cell"], 
          TagSet[ZeroDimVoltageCurrentSocModel`membranePotential, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`membranePotential, "usage"], 
           "Specification of membrane potential (model). The setting \
\"thermodynamics\" evaluates the membrane potential based on a thermodynamic \
model. Alternatively, the membrane potential can be set to a constant \
value."], ZeroDimVoltageCurrentSocModel`Private`getUniqueOptions[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`lst, 
             Blank[]]] := 
          Association[ZeroDimVoltageCurrentSocModel`Private`lst], 
          ZeroDimVoltageCurrentSocModel`Private`initImpl := 
          Module[{}, 
            ZeroDimVoltageCurrentSocModel`Private`electrodeVol = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`elLength] 
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`elWidth] 
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`elHeight]; 
            ZeroDimVoltageCurrentSocModel`Private`memArea = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`elWidth] 
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`elHeight]; 
            ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea] 
              ZeroDimVoltageCurrentSocModel`Private`electrodeVol; 
            ZeroDimVoltageCurrentSocModel`Private`nOxPosSoc0 = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`cOxPosSoc0] 
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0 = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`cOxNegSoc0] 
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`nRedNegSoc0 = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`cRedNegSoc0] 
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0 = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`cRedPosSoc0] 
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`nSolventNegSoc0 = (
               ZeroDimVoltageCurrentSocModel`Private`modelParams[
                ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0] - 
               ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0 
               ZeroDimVoltageCurrentSocModel`Private`modelParams[
                ZeroDimVoltageCurrentSocModel`partialMolarVolOxNeg])/
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
              ZeroDimVoltageCurrentSocModel`partialMolarVolSolvent]; 
            ZeroDimVoltageCurrentSocModel`Private`nSolventPosSoc0 = (
               ZeroDimVoltageCurrentSocModel`Private`modelParams[
                ZeroDimVoltageCurrentSocModel`electrolyteVolSoc0] - 
               ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0 
               ZeroDimVoltageCurrentSocModel`Private`modelParams[
                ZeroDimVoltageCurrentSocModel`partialMolarVolRedPos])/
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
              ZeroDimVoltageCurrentSocModel`partialMolarVolSolvent]; 
            ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc1 = 
             ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0 - Min[
              ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0, 
               ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc1 = 
             ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0 - Min[
              ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0, 
               ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0]; 
            ZeroDimVoltageCurrentSocModel`Private`superficialVelocity = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`flowRate]/(
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`elLength] 
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`elWidth]); 
            ZeroDimVoltageCurrentSocModel`Private`km = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`massTransferCoeff1] 
              ZeroDimVoltageCurrentSocModel`Private`superficialVelocity^
               ZeroDimVoltageCurrentSocModel`Private`modelParams[
                ZeroDimVoltageCurrentSocModel`massTransferCoeff2]; 
            ZeroDimVoltageCurrentSocModel`Private`initCharacteristicScales[]; 
            ZeroDimVoltageCurrentSocModel`Private`initDimensionlessParameters[\
]; Return[True]], ZeroDimVoltageCurrentSocModel`Private`electrodeVol = 
          1.9998784000000005`*^-6, 
          ZeroDimVoltageCurrentSocModel`Private`memArea = 0.0004999696, 
          ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea = 
          0.3999756800000001, 
          ZeroDimVoltageCurrentSocModel`Private`nOxPosSoc0 = 0., 
          ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0 = 
          0.014900000000000002`, 
          ZeroDimVoltageCurrentSocModel`Private`nRedNegSoc0 = 0., 
          ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0 = 
          0.011200000000000002`, 
          ZeroDimVoltageCurrentSocModel`Private`nSolventNegSoc0 = 
          0.3978787627038853, 
          ZeroDimVoltageCurrentSocModel`Private`nSolventPosSoc0 = 
          0.42234222259145415`, 
          ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc1 = 0.0037, 
          ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc1 = 0., 
          ZeroDimVoltageCurrentSocModel`Private`superficialVelocity = 
          0.002981514609421586, ZeroDimVoltageCurrentSocModel`Private`km = 
          1.759977790630202*^-7, 
          ZeroDimVoltageCurrentSocModel`Private`initCharacteristicScales[] := 
          Module[{}, ZeroDimVoltageCurrentSocModel`Private`\[Nu]Ox = -1; 
            ZeroDimVoltageCurrentSocModel`Private`\[Nu]Red = 1; 
            ZeroDimVoltageCurrentSocModel`\[Eta]0 = 
             ZeroDimVoltageCurrentSocModel`Private`fInv; 
            ZeroDimVoltageCurrentSocModel`c0 = 10^3; 
            ZeroDimVoltageCurrentSocModel`\[Rho]0 = 10^3; 
            ZeroDimVoltageCurrentSocModel`b0 = 
             ZeroDimVoltageCurrentSocModel`c0/
              ZeroDimVoltageCurrentSocModel`\[Rho]0; 
            ZeroDimVoltageCurrentSocModel`d0 = 10^(-9); 
            ZeroDimVoltageCurrentSocModel`L0 = 10^(-2); 
            ZeroDimVoltageCurrentSocModel`l0 = 10^(-5); 
            ZeroDimVoltageCurrentSocModel`i0 = (
               ZeroDimVoltageCurrentSocModel`Private`F 
               ZeroDimVoltageCurrentSocModel`d0 
               ZeroDimVoltageCurrentSocModel`c0)/
              ZeroDimVoltageCurrentSocModel`l0; 
            ZeroDimVoltageCurrentSocModel`I0 = (
               ZeroDimVoltageCurrentSocModel`Private`F 
               ZeroDimVoltageCurrentSocModel`c0 
               ZeroDimVoltageCurrentSocModel`d0 
               ZeroDimVoltageCurrentSocModel`L0^3)/
              ZeroDimVoltageCurrentSocModel`l0^2; 
            ZeroDimVoltageCurrentSocModel`k0 = 
             ZeroDimVoltageCurrentSocModel`d0/
              ZeroDimVoltageCurrentSocModel`l0; 
            ZeroDimVoltageCurrentSocModel`km0 = 
             ZeroDimVoltageCurrentSocModel`d0/
              ZeroDimVoltageCurrentSocModel`l0; 
            ZeroDimVoltageCurrentSocModel`v0 = 
             ZeroDimVoltageCurrentSocModel`d0/
              ZeroDimVoltageCurrentSocModel`l0; 
            ZeroDimVoltageCurrentSocModel`Private`specElectrodeSurfArea0 = 
             1/ZeroDimVoltageCurrentSocModel`l0; 
            ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea0 = 
             ZeroDimVoltageCurrentSocModel`L0^3/
              ZeroDimVoltageCurrentSocModel`l0; Return[True]; Null], 
          ZeroDimVoltageCurrentSocModel`Private`\[Nu]Ox = -1, 
          ZeroDimVoltageCurrentSocModel`Private`\[Nu]Red = 1, 
          ZeroDimVoltageCurrentSocModel`\[Eta]0 = 0.02543273151267036, 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Eta]0, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Eta]0, "usage"], 
           "Characteristic overpotential"], 
          ZeroDimVoltageCurrentSocModel`Private`fInv = 0.02543273151267036, 
          ZeroDimVoltageCurrentSocModel`c0 = 1000, 
          TagSet[ZeroDimVoltageCurrentSocModel`c0, 
           MessageName[ZeroDimVoltageCurrentSocModel`c0, "usage"], 
           "Characteristic molar concentration"], 
          ZeroDimVoltageCurrentSocModel`\[Rho]0 = 1000, 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Rho]0, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Rho]0, "usage"], 
           "Characteristic mass density"], ZeroDimVoltageCurrentSocModel`b0 = 
          1, 
          TagSet[ZeroDimVoltageCurrentSocModel`b0, 
           MessageName[ZeroDimVoltageCurrentSocModel`b0, "usage"], 
           "Characteristic molal concentration"], 
          ZeroDimVoltageCurrentSocModel`d0 = 1/1000000000, 
          TagSet[ZeroDimVoltageCurrentSocModel`d0, 
           MessageName[ZeroDimVoltageCurrentSocModel`d0, "usage"], 
           "Characteristic diffusion coefficient"], 
          ZeroDimVoltageCurrentSocModel`L0 = 1/100, 
          TagSet[ZeroDimVoltageCurrentSocModel`L0, 
           MessageName[ZeroDimVoltageCurrentSocModel`L0, "usage"], 
           "Characteristic macroscopic length scale"], 
          ZeroDimVoltageCurrentSocModel`l0 = 1/100000, 
          TagSet[ZeroDimVoltageCurrentSocModel`l0, 
           MessageName[ZeroDimVoltageCurrentSocModel`l0, "usage"], 
           "Characteristic pore-scale length scale"], 
          ZeroDimVoltageCurrentSocModel`i0 = 19297/2, 
          TagSet[ZeroDimVoltageCurrentSocModel`i0, 
           MessageName[ZeroDimVoltageCurrentSocModel`i0, "usage"], 
           "Characteristic electric current density"], 
          ZeroDimVoltageCurrentSocModel`Private`F = 96485, 
          ZeroDimVoltageCurrentSocModel`I0 = 19297/20, 
          TagSet[ZeroDimVoltageCurrentSocModel`I0, 
           MessageName[ZeroDimVoltageCurrentSocModel`I0, "usage"], 
           "Characteristic electric current"], 
          ZeroDimVoltageCurrentSocModel`k0 = 1/10000, 
          TagSet[ZeroDimVoltageCurrentSocModel`k0, 
           MessageName[ZeroDimVoltageCurrentSocModel`k0, "usage"], 
           "Characteristic reaction constant"], 
          ZeroDimVoltageCurrentSocModel`km0 = 1/10000, 
          TagSet[ZeroDimVoltageCurrentSocModel`km0, 
           MessageName[ZeroDimVoltageCurrentSocModel`km0, "usage"], 
           "Characteristic mass-transfer rate"], 
          ZeroDimVoltageCurrentSocModel`v0 = 1/10000, 
          TagSet[ZeroDimVoltageCurrentSocModel`v0, 
           MessageName[ZeroDimVoltageCurrentSocModel`v0, "usage"], 
           "Characteristic superficial velocity"], 
          ZeroDimVoltageCurrentSocModel`Private`specElectrodeSurfArea0 = 
          100000, ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea0 = 
          1/10, ZeroDimVoltageCurrentSocModel`Private`\
initDimensionlessParameters[] := 
          Module[{}, 
            ZeroDimVoltageCurrentSocModel`Private`specElectrodeSurfAreaND = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea]/
              ZeroDimVoltageCurrentSocModel`Private`specElectrodeSurfArea0; 
            ZeroDimVoltageCurrentSocModel`Private`totElectrodeAreaND = 
             ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea/
              ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea0; 
            ZeroDimVoltageCurrentSocModel`Private`vyND = 
             ZeroDimVoltageCurrentSocModel`Private`superficialVelocity/
              ZeroDimVoltageCurrentSocModel`v0; 
            ZeroDimVoltageCurrentSocModel`Private`kNegND = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`kneg]/
              ZeroDimVoltageCurrentSocModel`k0; 
            ZeroDimVoltageCurrentSocModel`Private`kPosND = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`kpos]/
              ZeroDimVoltageCurrentSocModel`k0; 
            ZeroDimVoltageCurrentSocModel`Private`kmND = 
             ZeroDimVoltageCurrentSocModel`Private`km/
              ZeroDimVoltageCurrentSocModel`km0; 
            ZeroDimVoltageCurrentSocModel`elLengthND = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`elLength]/
              ZeroDimVoltageCurrentSocModel`L0; 
            ZeroDimVoltageCurrentSocModel`elWidthND = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`elWidth]/
              ZeroDimVoltageCurrentSocModel`L0; 
            ZeroDimVoltageCurrentSocModel`elHeightND = 
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`elHeight]/
              ZeroDimVoltageCurrentSocModel`L0; 
            ZeroDimVoltageCurrentSocModel`Private`superficialVelocityND = 
             ZeroDimVoltageCurrentSocModel`Private`superficialVelocity/
              ZeroDimVoltageCurrentSocModel`v0; 
            ZeroDimVoltageCurrentSocModel`Private`sh = 
             ZeroDimVoltageCurrentSocModel`Private`km (
               ZeroDimVoltageCurrentSocModel`l0/
               ZeroDimVoltageCurrentSocModel`d0); 
            ZeroDimVoltageCurrentSocModel`Private`ki = {
              ZeroDimVoltageCurrentSocModel`Private`kNegND, 
               ZeroDimVoltageCurrentSocModel`Private`kPosND}; 
            ZeroDimVoltageCurrentSocModel`Private`nEl = {
               ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`nElNeg], 
               ZeroDimVoltageCurrentSocModel`Private`modelParams[
               ZeroDimVoltageCurrentSocModel`nElPos]}; Return[True]; Null], 
          ZeroDimVoltageCurrentSocModel`Private`specElectrodeSurfAreaND = 2., 
          ZeroDimVoltageCurrentSocModel`Private`totElectrodeAreaND = 
          3.999756800000001, ZeroDimVoltageCurrentSocModel`Private`vyND = 
          29.81514609421586, ZeroDimVoltageCurrentSocModel`Private`kNegND = 
          0.33, ZeroDimVoltageCurrentSocModel`Private`kPosND = 
          0.42000000000000004`, ZeroDimVoltageCurrentSocModel`Private`kmND = 
          0.0017599777906302022`, ZeroDimVoltageCurrentSocModel`elLengthND = 
          0.4, 
          TagSet[ZeroDimVoltageCurrentSocModel`elLengthND, 
           MessageName[ZeroDimVoltageCurrentSocModel`elLengthND, "usage"], 
           "Dimensionless length of the porous electrode in the through-plane \
direction"], ZeroDimVoltageCurrentSocModel`elWidthND = 2.236, 
          TagSet[ZeroDimVoltageCurrentSocModel`elWidthND, 
           MessageName[ZeroDimVoltageCurrentSocModel`elWidthND, "usage"], 
           "Dimensionless width"], ZeroDimVoltageCurrentSocModel`elHeightND = 
          2.236, 
          TagSet[ZeroDimVoltageCurrentSocModel`elHeightND, 
           MessageName[ZeroDimVoltageCurrentSocModel`elHeightND, "usage"], 
           "Dimensionless height"], 
          ZeroDimVoltageCurrentSocModel`Private`superficialVelocityND = 
          29.81514609421586, ZeroDimVoltageCurrentSocModel`Private`sh = 
          0.0017599777906302022`, 
          ZeroDimVoltageCurrentSocModel`Private`ki = {0.33, 
           0.42000000000000004`}, 
          ZeroDimVoltageCurrentSocModel`Private`nEl = {1, 1}, 
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
          ZeroDimVoltageCurrentSocModel`cellVoltageOcv[
           ZeroDimVoltageCurrentSocModel`Private`soc, 0], 
          ZeroDimVoltageCurrentSocModel`cellVoltageOcv[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]]] := Module[{}, 
            If[Abs[ZeroDimVoltageCurrentSocModel`Private`elCurrent] < Abs[
               ZeroDimVoltageCurrentSocModel`limElCurrent[
               ZeroDimVoltageCurrentSocModel`Private`soc, 
                ZeroDimVoltageCurrentSocModel`Private`elCurrent]], 
             ZeroDimVoltageCurrentSocModel`Private`fInv 
             ZeroDimVoltageCurrentSocModel`Private`cellVoltageOcvND[
              ZeroDimVoltageCurrentSocModel`Private`soc, 
               ZeroDimVoltageCurrentSocModel`Private`elCurrent/(
               ZeroDimVoltageCurrentSocModel`Private`modelParams[
                ZeroDimVoltageCurrentSocModel`specElectrodeSurfArea] 
               ZeroDimVoltageCurrentSocModel`Private`electrodeVol 
               ZeroDimVoltageCurrentSocModel`i0)], 
             Sign[ZeroDimVoltageCurrentSocModel`Private`elCurrent] 10^10]], 
          TagSet[ZeroDimVoltageCurrentSocModel`cellVoltageOcv, 
           MessageName[ZeroDimVoltageCurrentSocModel`cellVoltageOcv, "usage"],
            "cellVoltageOcv evaluates the open circuit potential including \
the membrane potential for a given state-of-charge. Example: cellVoltage[0.9] \
yields the OCV at SoC=0.9."], ZeroDimVoltageCurrentSocModel`limElCurrent[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity, 
             Blank[]]] := 
          If[ZeroDimVoltageCurrentSocModel`Private`elCurrentDensity > 0, 
            ZeroDimVoltageCurrentSocModel`limElCurrentCharging[
            ZeroDimVoltageCurrentSocModel`Private`soc], 
            ZeroDimVoltageCurrentSocModel`limElCurrentDischarging[
            ZeroDimVoltageCurrentSocModel`Private`soc]], 
          TagSet[ZeroDimVoltageCurrentSocModel`limElCurrent, 
           MessageName[ZeroDimVoltageCurrentSocModel`limElCurrent, "usage"], 
           "limElCurrent yields the limiting electric current at a specified \
SoC, e.g. limElCurrent[0.3,I] yields the limiting charging electric current \
(in Ampere) at SoC=0.3 if I>0, else the limiting discharging current is \
returned"], ZeroDimVoltageCurrentSocModel`limElCurrentCharging[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea Min[
             
             ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityCharging[
             ZeroDimVoltageCurrentSocModel`Private`soc, 
              ZeroDimVoltageCurrentSocModel`idPos], 
             
             ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityCharging[
             ZeroDimVoltageCurrentSocModel`Private`soc, 
              ZeroDimVoltageCurrentSocModel`idNeg]], 
          TagSet[ZeroDimVoltageCurrentSocModel`limElCurrentCharging, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`limElCurrentCharging, "usage"], 
           "limElCurrentCharging yields the limiting electric (charging) \
current at a specified SoC, e.g. limElCurrentCharging[0.7] yields the \
limiting electric current (in Ampere) at SoC=0.7"], 
          ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensityCharging[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`id, 
             Blank[]]] := 
          Module[{ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensityND}\
, If[ZeroDimVoltageCurrentSocModel`Private`id == 
              ZeroDimVoltageCurrentSocModel`idPos, 
              ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensityND = 
               Part[
                 Solve[
                  
                  Rationalize[(ZeroDimVoltageCurrentSocModel`Private`km/(
                    ZeroDimVoltageCurrentSocModel`d0/
                    ZeroDimVoltageCurrentSocModel`l0)) 
                    ZeroDimVoltageCurrentSocModel`cRedAvgND[
                    ZeroDimVoltageCurrentSocModel`Private`soc, 
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                    ZeroDimVoltageCurrentSocModel`idPos] == 
                   ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND], 
                  ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND], 
                 1, 1, 2]; 
              If[ZeroDimVoltageCurrentSocModel`Private`cRedOutND[
                 ZeroDimVoltageCurrentSocModel`Private`soc, 
                  ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensityND,
                   ZeroDimVoltageCurrentSocModel`Private`id] < 0, 
                ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensityND = 
                 Part[
                   Solve[
                   ZeroDimVoltageCurrentSocModel`Private`cRedOutND[
                    ZeroDimVoltageCurrentSocModel`Private`soc, 
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                    ZeroDimVoltageCurrentSocModel`Private`id] == 0, 
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND],
                    1, 1, 2]; Null], 
              ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensityND = 
               Part[
                 Solve[
                  
                  Rationalize[(ZeroDimVoltageCurrentSocModel`Private`km/(
                    ZeroDimVoltageCurrentSocModel`d0/
                    ZeroDimVoltageCurrentSocModel`l0)) 
                    ZeroDimVoltageCurrentSocModel`cOxAvgND[
                    ZeroDimVoltageCurrentSocModel`Private`soc, 
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                    ZeroDimVoltageCurrentSocModel`idNeg] == 
                   ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND], 
                  ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND], 
                 1, 1, 2]; 
              If[ZeroDimVoltageCurrentSocModel`Private`cOxOutND[
                 ZeroDimVoltageCurrentSocModel`Private`soc, 
                  ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                  ZeroDimVoltageCurrentSocModel`Private`id] < 0, 
                ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensityND = 
                 Part[
                   Solve[
                   ZeroDimVoltageCurrentSocModel`Private`cOxOutND[
                    ZeroDimVoltageCurrentSocModel`Private`soc, 
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                    ZeroDimVoltageCurrentSocModel`Private`id] == 0, 
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND],
                    1, 1, 2]; Null]]; 
            Return[ZeroDimVoltageCurrentSocModel`i0 
              ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensityND]; 
            Null], ZeroDimVoltageCurrentSocModel`idPos = 2, 
          TagSet[ZeroDimVoltageCurrentSocModel`idPos, 
           MessageName[ZeroDimVoltageCurrentSocModel`idPos, "usage"], 
           "Identifier of the positive half-cell or posolyte."], 
          ZeroDimVoltageCurrentSocModel`cRedAvgND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[
            ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`domId, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`cRedND[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`domId] - (1/
            2) ((ZeroDimVoltageCurrentSocModel`Private`\[Nu]Red 
             ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND 
             ZeroDimVoltageCurrentSocModel`Private`specElectrodeSurfAreaND 
             ZeroDimVoltageCurrentSocModel`elHeightND (
              ZeroDimVoltageCurrentSocModel`L0/
              ZeroDimVoltageCurrentSocModel`l0))/
            ZeroDimVoltageCurrentSocModel`Private`superficialVelocityND), 
          TagSet[ZeroDimVoltageCurrentSocModel`cRedAvgND, 
           MessageName[ZeroDimVoltageCurrentSocModel`cRedAvgND, "usage"], 
           "Arithmetic average of molar concentration of reduced species \
between the inflow and outflow boundaries. E.g., cRedAvgND[soc, \
elCurrentDensityND, domId] yields the molar concentration for the \
dimensionless geometric el. current in the half-cell specified by domId"], 
          ZeroDimVoltageCurrentSocModel`cRedND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`domId, 
             Blank[]]] := 
          If[ZeroDimVoltageCurrentSocModel`Private`domId == 
            ZeroDimVoltageCurrentSocModel`idNeg, 
            ZeroDimVoltageCurrentSocModel`cRedNeg[
             ZeroDimVoltageCurrentSocModel`Private`soc]/
            ZeroDimVoltageCurrentSocModel`c0, 
            ZeroDimVoltageCurrentSocModel`cRedPos[
             ZeroDimVoltageCurrentSocModel`Private`soc]/
            ZeroDimVoltageCurrentSocModel`c0], 
          TagSet[ZeroDimVoltageCurrentSocModel`cRedND, 
           MessageName[ZeroDimVoltageCurrentSocModel`cRedND, "usage"], 
           "Dimensionless molar concentration of the reduced species. \
Example: cRedND[SoC, idPos] yields the concentration of the reduced species \
in the posolyte."], ZeroDimVoltageCurrentSocModel`idNeg = 1, 
          TagSet[ZeroDimVoltageCurrentSocModel`idNeg, 
           MessageName[ZeroDimVoltageCurrentSocModel`idNeg, "usage"], 
           "Identifier of the negative half-cell or negolyte."], 
          ZeroDimVoltageCurrentSocModel`cRedNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nRedNeg[
            ZeroDimVoltageCurrentSocModel`Private`soc]/
           ZeroDimVoltageCurrentSocModel`Private`volNeg[
           ZeroDimVoltageCurrentSocModel`Private`soc], 
          TagSet[ZeroDimVoltageCurrentSocModel`cRedNeg, 
           MessageName[ZeroDimVoltageCurrentSocModel`cRedNeg, "usage"], 
           "Molar concentration of the reduced species in the negolyte in \
[mol/m^3]."], ZeroDimVoltageCurrentSocModel`Private`nRedNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nRedNegSoc0 - (
           ZeroDimVoltageCurrentSocModel`Private`nOxNeg[
            ZeroDimVoltageCurrentSocModel`Private`soc] - 
           ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0), 
          ZeroDimVoltageCurrentSocModel`Private`nOxNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0 + 
           ZeroDimVoltageCurrentSocModel`Private`soc (
             ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc1 - 
             ZeroDimVoltageCurrentSocModel`Private`nOxNegSoc0), 
          ZeroDimVoltageCurrentSocModel`Private`volNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nSolventNeg[
             ZeroDimVoltageCurrentSocModel`Private`soc] 
            ZeroDimVoltageCurrentSocModel`Private`modelParams[
             ZeroDimVoltageCurrentSocModel`partialMolarVolSolvent] + 
           ZeroDimVoltageCurrentSocModel`Private`nRedNeg[
             ZeroDimVoltageCurrentSocModel`Private`soc] 
            ZeroDimVoltageCurrentSocModel`Private`modelParams[
             ZeroDimVoltageCurrentSocModel`partialMolarVolRedNeg] + 
           ZeroDimVoltageCurrentSocModel`Private`nOxNeg[
             ZeroDimVoltageCurrentSocModel`Private`soc] 
            ZeroDimVoltageCurrentSocModel`Private`modelParams[
             ZeroDimVoltageCurrentSocModel`partialMolarVolOxNeg], 
          ZeroDimVoltageCurrentSocModel`Private`nSolventNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nSolventNegSoc0 + 
           ZeroDimVoltageCurrentSocModel`Private`modelParams[
             ZeroDimVoltageCurrentSocModel`\[Kappa]s] (
             ZeroDimVoltageCurrentSocModel`Private`nRedPos[
              ZeroDimVoltageCurrentSocModel`Private`soc] - 
             ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0), 
          ZeroDimVoltageCurrentSocModel`Private`nRedPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0 + 
           ZeroDimVoltageCurrentSocModel`Private`soc (
             ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc1 - 
             ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0), 
          ZeroDimVoltageCurrentSocModel`cRedPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nRedPos[
            ZeroDimVoltageCurrentSocModel`Private`soc]/
           ZeroDimVoltageCurrentSocModel`Private`volPos[
           ZeroDimVoltageCurrentSocModel`Private`soc], 
          TagSet[ZeroDimVoltageCurrentSocModel`cRedPos, 
           MessageName[ZeroDimVoltageCurrentSocModel`cRedPos, "usage"], 
           "Molar concentration of the reduced species in the posolyte in \
[mol/m^3]."], ZeroDimVoltageCurrentSocModel`Private`volPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nSolventPos[
             ZeroDimVoltageCurrentSocModel`Private`soc] 
            ZeroDimVoltageCurrentSocModel`Private`modelParams[
             ZeroDimVoltageCurrentSocModel`partialMolarVolSolvent] + 
           ZeroDimVoltageCurrentSocModel`Private`nRedPos[
             ZeroDimVoltageCurrentSocModel`Private`soc] 
            ZeroDimVoltageCurrentSocModel`Private`modelParams[
             ZeroDimVoltageCurrentSocModel`partialMolarVolRedPos] + 
           ZeroDimVoltageCurrentSocModel`Private`nOxPos[
             ZeroDimVoltageCurrentSocModel`Private`soc] 
            ZeroDimVoltageCurrentSocModel`Private`modelParams[
             ZeroDimVoltageCurrentSocModel`partialMolarVolOxPos], 
          ZeroDimVoltageCurrentSocModel`Private`nSolventPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nSolventPosSoc0 - 
           ZeroDimVoltageCurrentSocModel`Private`modelParams[
            ZeroDimVoltageCurrentSocModel`\[Kappa]s] (
            ZeroDimVoltageCurrentSocModel`Private`nRedPos[
             ZeroDimVoltageCurrentSocModel`Private`soc] - 
            ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0), 
          ZeroDimVoltageCurrentSocModel`Private`nOxPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nOxPosSoc0 - (
           ZeroDimVoltageCurrentSocModel`Private`nRedPos[
            ZeroDimVoltageCurrentSocModel`Private`soc] - 
           ZeroDimVoltageCurrentSocModel`Private`nRedPosSoc0), 
          ZeroDimVoltageCurrentSocModel`Private`cRedOutND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[
            ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`domId, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`cRedND[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`domId] - (
            ZeroDimVoltageCurrentSocModel`Private`\[Nu]Red 
            ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND 
            ZeroDimVoltageCurrentSocModel`Private`specElectrodeSurfAreaND 
            ZeroDimVoltageCurrentSocModel`elHeightND (
             ZeroDimVoltageCurrentSocModel`L0/
             ZeroDimVoltageCurrentSocModel`l0))/
           ZeroDimVoltageCurrentSocModel`Private`superficialVelocityND, 
          ZeroDimVoltageCurrentSocModel`cOxAvgND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[
            ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`domId, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`cOxND[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`domId] - (1/
            2) ((ZeroDimVoltageCurrentSocModel`Private`\[Nu]Ox 
             ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND 
             ZeroDimVoltageCurrentSocModel`Private`specElectrodeSurfAreaND 
             ZeroDimVoltageCurrentSocModel`elHeightND (
              ZeroDimVoltageCurrentSocModel`L0/
              ZeroDimVoltageCurrentSocModel`l0))/
            ZeroDimVoltageCurrentSocModel`Private`superficialVelocityND), 
          TagSet[ZeroDimVoltageCurrentSocModel`cOxAvgND, 
           MessageName[ZeroDimVoltageCurrentSocModel`cOxAvgND, "usage"], 
           "Arithmetic average of molar concentration of oxidized species \
between the inflow and outflow boundaries. E.g., cRedAvgND[soc, \
elCurrentDensityND, domId] yields the molar concentration for the \
dimensionless geometric el. current in the half-cell specified by domId"], 
          ZeroDimVoltageCurrentSocModel`cOxND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`domId, 
             Blank[]]] := 
          If[ZeroDimVoltageCurrentSocModel`Private`domId == 
            ZeroDimVoltageCurrentSocModel`idNeg, 
            ZeroDimVoltageCurrentSocModel`cOxNeg[
             ZeroDimVoltageCurrentSocModel`Private`soc]/
            ZeroDimVoltageCurrentSocModel`c0, 
            ZeroDimVoltageCurrentSocModel`cOxPos[
             ZeroDimVoltageCurrentSocModel`Private`soc]/
            ZeroDimVoltageCurrentSocModel`c0], 
          TagSet[ZeroDimVoltageCurrentSocModel`cOxND, 
           MessageName[ZeroDimVoltageCurrentSocModel`cOxND, "usage"], 
           "Dimensionless molar concentration of the oxidized species. \
Example: cOxND[SoC, idNeg] yields the concentration of the oxidized species \
in the negolyte."], ZeroDimVoltageCurrentSocModel`cOxNeg[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nOxNeg[
            ZeroDimVoltageCurrentSocModel`Private`soc]/
           ZeroDimVoltageCurrentSocModel`Private`volNeg[
           ZeroDimVoltageCurrentSocModel`Private`soc], 
          TagSet[ZeroDimVoltageCurrentSocModel`cOxNeg, 
           MessageName[ZeroDimVoltageCurrentSocModel`cOxNeg, "usage"], 
           "Molar concentration of the oxidized species in the negolyte in \
[mol/m^3]."], ZeroDimVoltageCurrentSocModel`cOxPos[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`nOxPos[
            ZeroDimVoltageCurrentSocModel`Private`soc]/
           ZeroDimVoltageCurrentSocModel`Private`volPos[
           ZeroDimVoltageCurrentSocModel`Private`soc], 
          TagSet[ZeroDimVoltageCurrentSocModel`cOxPos, 
           MessageName[ZeroDimVoltageCurrentSocModel`cOxPos, "usage"], 
           "Molar concentration of the oxidized species in the posolyte in \
[mol/m^3]."], ZeroDimVoltageCurrentSocModel`Private`cOxOutND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[
            ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`domId, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`cOxND[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`domId] - (
            ZeroDimVoltageCurrentSocModel`Private`\[Nu]Ox 
            ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND 
            ZeroDimVoltageCurrentSocModel`Private`specElectrodeSurfAreaND 
            ZeroDimVoltageCurrentSocModel`elHeightND (
             ZeroDimVoltageCurrentSocModel`L0/
             ZeroDimVoltageCurrentSocModel`l0))/
           ZeroDimVoltageCurrentSocModel`Private`superficialVelocityND, 
          ZeroDimVoltageCurrentSocModel`limElCurrentDischarging[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`totElectrodeArea Max[
             
             ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityDischarging[
             ZeroDimVoltageCurrentSocModel`Private`soc, 
              ZeroDimVoltageCurrentSocModel`idPos], 
             
             ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityDischarging[
             ZeroDimVoltageCurrentSocModel`Private`soc, 
              ZeroDimVoltageCurrentSocModel`idNeg]], 
          TagSet[ZeroDimVoltageCurrentSocModel`limElCurrentDischarging, 
           MessageName[
           ZeroDimVoltageCurrentSocModel`limElCurrentDischarging, "usage"], 
           "limElCurrentDischarging yields the limiting electric \
(discharging) current at a specified SoC, e.g. limElCurrentDischarging[0.5] \
yields the limiting electric current (in Ampere) at SoC=0.5"], 
          ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensityDischarging[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`id, 
             Blank[]]] := 
          Module[{ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensity}, 
            If[ZeroDimVoltageCurrentSocModel`Private`id == 
              ZeroDimVoltageCurrentSocModel`idPos, 
              ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensity = Part[
                 Solve[
                  
                  Rationalize[(ZeroDimVoltageCurrentSocModel`Private`km/(
                    ZeroDimVoltageCurrentSocModel`d0/
                    ZeroDimVoltageCurrentSocModel`l0)) 
                    ZeroDimVoltageCurrentSocModel`cOxAvgND[
                    ZeroDimVoltageCurrentSocModel`Private`soc, 
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                    ZeroDimVoltageCurrentSocModel`idPos] == -
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND],
                   ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND], 
                 1, 1, 2]; 
              If[ZeroDimVoltageCurrentSocModel`Private`cOxOutND[
                 ZeroDimVoltageCurrentSocModel`Private`soc, 
                  ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensity, 
                  ZeroDimVoltageCurrentSocModel`Private`id] < 0, 
                ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensity = 
                 Part[
                   Solve[
                   ZeroDimVoltageCurrentSocModel`Private`cOxOutND[
                    ZeroDimVoltageCurrentSocModel`Private`soc, 
                    ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityVar, ZeroDimVoltageCurrentSocModel`Private`id] == 0, 
                    ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityVar], 1, 1, 2]; Null], 
              ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensity = -
                Part[
                  Solve[
                   
                   Rationalize[(ZeroDimVoltageCurrentSocModel`Private`km/(
                    ZeroDimVoltageCurrentSocModel`d0/
                    ZeroDimVoltageCurrentSocModel`l0)) 
                    ZeroDimVoltageCurrentSocModel`cRedAvgND[
                    ZeroDimVoltageCurrentSocModel`Private`soc, 
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                    ZeroDimVoltageCurrentSocModel`idNeg] == 
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND],
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND],
                   1, 1, 2]; 
              If[ZeroDimVoltageCurrentSocModel`Private`cRedOutND[
                 ZeroDimVoltageCurrentSocModel`Private`soc, 
                  ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensity, 
                  ZeroDimVoltageCurrentSocModel`Private`id] < 0, 
                ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensity = 
                 Part[
                   Solve[
                   ZeroDimVoltageCurrentSocModel`Private`cRedOutND[
                    ZeroDimVoltageCurrentSocModel`Private`soc, 
                    ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityVar, ZeroDimVoltageCurrentSocModel`Private`id] == 0, 
                    ZeroDimVoltageCurrentSocModel`Private`\
limElCurrentDensityVar], 1, 1, 2]; Null]]; 
            Return[ZeroDimVoltageCurrentSocModel`i0 
              ZeroDimVoltageCurrentSocModel`Private`limElCurrentDensity]; 
            Null], ZeroDimVoltageCurrentSocModel`Private`cellVoltageOcvND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[
            ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
             Blank[]]] := (
            ZeroDimVoltageCurrentSocModel`Private`eNernstPosND[
             ZeroDimVoltageCurrentSocModel`Private`soc, 
              ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND] - 
            ZeroDimVoltageCurrentSocModel`Private`eNernstNegND[
            ZeroDimVoltageCurrentSocModel`Private`soc, -
             ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND]) + 
           ZeroDimVoltageCurrentSocModel`Private`eMembraneND[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND], 
          ZeroDimVoltageCurrentSocModel`Private`eNernstPosND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[
            ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
             Blank[]]] := 
          Module[{ZeroDimVoltageCurrentSocModel`Private`cRedPosND = 
             ZeroDimVoltageCurrentSocModel`cRedAvgND[
              ZeroDimVoltageCurrentSocModel`Private`soc, 
               ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
               ZeroDimVoltageCurrentSocModel`idPos], 
             ZeroDimVoltageCurrentSocModel`Private`cOxPosND = 
             ZeroDimVoltageCurrentSocModel`cOxAvgND[
              ZeroDimVoltageCurrentSocModel`Private`soc, 
               ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
               ZeroDimVoltageCurrentSocModel`idPos]}, 
            ZeroDimVoltageCurrentSocModel`Private`ePos0FormalND[
             ZeroDimVoltageCurrentSocModel`Private`soc] + ((-1)/
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
              ZeroDimVoltageCurrentSocModel`nElPos]) 
             Log[((
                 ZeroDimVoltageCurrentSocModel`Private`cRedPosND^
                  ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`\[Nu]RedPos] 
                 ZeroDimVoltageCurrentSocModel`Private`cOxPosND^
                  ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`\[Nu]OxPos])/(-
                 ZeroDimVoltageCurrentSocModel`Private`modelParams[
                  ZeroDimVoltageCurrentSocModel`zExchangedIon])^
                ZeroDimVoltageCurrentSocModel`Private`modelParams[
                 ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonPos]) (
                 ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`zRedPos] 
                  ZeroDimVoltageCurrentSocModel`Private`cRedPosND + 
                 ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`zOxPos] 
                  ZeroDimVoltageCurrentSocModel`Private`cOxPosND + 
                 ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`zSuppElectrolyteIon] 
                  ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonPos])^
                ZeroDimVoltageCurrentSocModel`Private`modelParams[
                 ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonNeg]]], 
          ZeroDimVoltageCurrentSocModel`Private`ePos0FormalND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`f 
           ZeroDimVoltageCurrentSocModel`Private`modelParams[
            ZeroDimVoltageCurrentSocModel`ePos0], 
          ZeroDimVoltageCurrentSocModel`Private`f = 39.31941008781573, 
          ZeroDimVoltageCurrentSocModel`Private`eNernstNegND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[
            ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
             Blank[]]] := 
          Module[{ZeroDimVoltageCurrentSocModel`Private`cRedNegND = 
             ZeroDimVoltageCurrentSocModel`cRedAvgND[
              ZeroDimVoltageCurrentSocModel`Private`soc, 
               ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
               ZeroDimVoltageCurrentSocModel`idNeg], 
             ZeroDimVoltageCurrentSocModel`Private`cOxNegND = 
             ZeroDimVoltageCurrentSocModel`cOxAvgND[
              ZeroDimVoltageCurrentSocModel`Private`soc, 
               ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
               ZeroDimVoltageCurrentSocModel`idNeg]}, 
            ZeroDimVoltageCurrentSocModel`Private`eNeg0FormalND[
             ZeroDimVoltageCurrentSocModel`Private`soc] + ((-1)/
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
              ZeroDimVoltageCurrentSocModel`nElNeg]) 
             Log[((ZeroDimVoltageCurrentSocModel`Private`cRedNegND^
                  ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`\[Nu]RedNeg] 
                 ZeroDimVoltageCurrentSocModel`Private`cOxNegND^
                  ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`\[Nu]OxNeg])/(-
                 ZeroDimVoltageCurrentSocModel`Private`modelParams[
                  ZeroDimVoltageCurrentSocModel`zExchangedIon])^
                ZeroDimVoltageCurrentSocModel`Private`modelParams[
                 ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonNeg]) (
                 ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`zRedNeg] 
                  ZeroDimVoltageCurrentSocModel`Private`cRedNegND + 
                 ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`zOxNeg] 
                  ZeroDimVoltageCurrentSocModel`Private`cOxNegND + 
                 ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`zSuppElectrolyteIon] 
                  ZeroDimVoltageCurrentSocModel`Private`modelParams[
                   ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonNeg])^
                ZeroDimVoltageCurrentSocModel`Private`modelParams[
                 ZeroDimVoltageCurrentSocModel`\[Nu]ExchangedIonNeg]]], 
          ZeroDimVoltageCurrentSocModel`Private`eNeg0FormalND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`f 
           ZeroDimVoltageCurrentSocModel`Private`modelParams[
            ZeroDimVoltageCurrentSocModel`eNeg0], 
          ZeroDimVoltageCurrentSocModel`Private`eMembraneND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[
            ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
             Blank[]]] := 
          If[ZeroDimVoltageCurrentSocModel`Private`modelParams[
             ZeroDimVoltageCurrentSocModel`membranePotential] == 
            "thermodynamics", (1/
             ZeroDimVoltageCurrentSocModel`Private`modelParams[
             ZeroDimVoltageCurrentSocModel`zExchangedIon]) 
            Log[(ZeroDimVoltageCurrentSocModel`Private`modelParams[
                 ZeroDimVoltageCurrentSocModel`zRedNeg] 
                ZeroDimVoltageCurrentSocModel`cRedAvgND[
                 ZeroDimVoltageCurrentSocModel`Private`soc, -
                  ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                  ZeroDimVoltageCurrentSocModel`idNeg] + 
               ZeroDimVoltageCurrentSocModel`Private`modelParams[
                 ZeroDimVoltageCurrentSocModel`zOxNeg] 
                ZeroDimVoltageCurrentSocModel`cOxAvgND[
                 ZeroDimVoltageCurrentSocModel`Private`soc, -
                  ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                  ZeroDimVoltageCurrentSocModel`idNeg] + 
               ZeroDimVoltageCurrentSocModel`Private`modelParams[
                 ZeroDimVoltageCurrentSocModel`zSuppElectrolyteIon] 
                ZeroDimVoltageCurrentSocModel`Private`modelParams[
                 ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonNeg])/(
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
                ZeroDimVoltageCurrentSocModel`zRedPos] 
               ZeroDimVoltageCurrentSocModel`cRedAvgND[
                ZeroDimVoltageCurrentSocModel`Private`soc, 
                 ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                 ZeroDimVoltageCurrentSocModel`idPos] + 
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
                ZeroDimVoltageCurrentSocModel`zOxPos] 
               ZeroDimVoltageCurrentSocModel`cOxAvgND[
                ZeroDimVoltageCurrentSocModel`Private`soc, 
                 ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                 ZeroDimVoltageCurrentSocModel`idPos] + 
              ZeroDimVoltageCurrentSocModel`Private`modelParams[
                ZeroDimVoltageCurrentSocModel`zSuppElectrolyteIon] 
               ZeroDimVoltageCurrentSocModel`Private`modelParams[
                ZeroDimVoltageCurrentSocModel`cSuppElectrolyteIonPos])], 
            ZeroDimVoltageCurrentSocModel`Private`modelParams[
             ZeroDimVoltageCurrentSocModel`membranePotential] 
            ZeroDimVoltageCurrentSocModel`Private`f], 
          ZeroDimVoltageCurrentSocModel`cellVoltage[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]]] := Module[{}, 
            If[Abs[ZeroDimVoltageCurrentSocModel`Private`elCurrent] < Abs[
               ZeroDimVoltageCurrentSocModel`limElCurrent[
               ZeroDimVoltageCurrentSocModel`Private`soc, 
                ZeroDimVoltageCurrentSocModel`Private`elCurrent]], 
             ZeroDimVoltageCurrentSocModel`cellVoltageOcv[
              ZeroDimVoltageCurrentSocModel`Private`soc, 
               ZeroDimVoltageCurrentSocModel`Private`elCurrent] + 
             ZeroDimVoltageCurrentSocModel`\[Eta]Bv[
              ZeroDimVoltageCurrentSocModel`Private`soc, 
               ZeroDimVoltageCurrentSocModel`Private`elCurrent] + 
             ZeroDimVoltageCurrentSocModel`\[Eta]Ohmic[
              ZeroDimVoltageCurrentSocModel`Private`soc, 
               ZeroDimVoltageCurrentSocModel`Private`elCurrent], 
             Sign[ZeroDimVoltageCurrentSocModel`Private`elCurrent] 10^10]], 
          TagSet[ZeroDimVoltageCurrentSocModel`cellVoltage, 
           MessageName[ZeroDimVoltageCurrentSocModel`cellVoltage, "usage"], 
           "cellVoltage evaluates the total cell voltage for a given \
state-of-charge and electric current. Example: cellVoltage[0.4,-0.1] yields \
the cell voltage at SoC=0.4 and a discharging el. current of -0.1 A"], 
          ZeroDimVoltageCurrentSocModel`\[Eta]Bv[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`domId, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`\[Eta]BvND[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`elCurrent/
             ZeroDimVoltageCurrentSocModel`I0, 
             ZeroDimVoltageCurrentSocModel`Private`domId] 
           ZeroDimVoltageCurrentSocModel`\[Eta]0, 
          ZeroDimVoltageCurrentSocModel`\[Eta]Bv[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`\[Eta]Bv[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             ZeroDimVoltageCurrentSocModel`idPos] - 
           ZeroDimVoltageCurrentSocModel`\[Eta]Bv[
           ZeroDimVoltageCurrentSocModel`Private`soc, 
            ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
            ZeroDimVoltageCurrentSocModel`idNeg], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Eta]Bv, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Eta]Bv, "usage"], 
           "Total (activation + concentration) overpotential [V]"], 
          ZeroDimVoltageCurrentSocModel`\[Eta]BvND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrentND, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`\[Eta]BvND[
            ZeroDimVoltageCurrentSocModel`Private`soc, 
             ZeroDimVoltageCurrentSocModel`Private`elCurrentND, 
             ZeroDimVoltageCurrentSocModel`idPos] - 
           ZeroDimVoltageCurrentSocModel`\[Eta]BvND[
           ZeroDimVoltageCurrentSocModel`Private`soc, 
            ZeroDimVoltageCurrentSocModel`Private`elCurrentND, 
            ZeroDimVoltageCurrentSocModel`idNeg], 
          ZeroDimVoltageCurrentSocModel`\[Eta]BvND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrentND, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`domId, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`\[Eta]BvImplND[
           ZeroDimVoltageCurrentSocModel`Private`soc, 
            ZeroDimVoltageCurrentSocModel`Private`getDomIdSign[
             ZeroDimVoltageCurrentSocModel`Private`domId] (
             ZeroDimVoltageCurrentSocModel`Private`elCurrentND/
             ZeroDimVoltageCurrentSocModel`Private`totElectrodeAreaND), 
            ZeroDimVoltageCurrentSocModel`Private`domId], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Eta]BvND, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Eta]BvND, "usage"], 
           "Nondimensional total (activation + concentration) overpotential"],
           ZeroDimVoltageCurrentSocModel`Private`\[Eta]BvImplND[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[
            ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`domId, 
             Blank[]]] := 
          Module[{ZeroDimVoltageCurrentSocModel`Private`kiValue = 
             Part[ZeroDimVoltageCurrentSocModel`Private`ki, 
               ZeroDimVoltageCurrentSocModel`Private`domId]}, (1/Part[
             ZeroDimVoltageCurrentSocModel`Private`nEl, 
              ZeroDimVoltageCurrentSocModel`Private`domId]) (
             2 ArcSinh[(
                 ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND 
                 ZeroDimVoltageCurrentSocModel`Private`sh)/(2 
                Part[ZeroDimVoltageCurrentSocModel`Private`nEl, 
                  ZeroDimVoltageCurrentSocModel`Private`domId] 
                ZeroDimVoltageCurrentSocModel`Private`kiValue 
                Sqrt[(ZeroDimVoltageCurrentSocModel`Private`\
elCurrentDensityND + 
                   ZeroDimVoltageCurrentSocModel`cOxAvgND[
                    ZeroDimVoltageCurrentSocModel`Private`soc, 
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                    ZeroDimVoltageCurrentSocModel`Private`domId] 
                    ZeroDimVoltageCurrentSocModel`Private`sh) (
                   ZeroDimVoltageCurrentSocModel`cRedAvgND[
                    ZeroDimVoltageCurrentSocModel`Private`soc, 
                    ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                    ZeroDimVoltageCurrentSocModel`Private`domId] 
                    ZeroDimVoltageCurrentSocModel`Private`sh - 
                   ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND)])\
] - Log[(ZeroDimVoltageCurrentSocModel`cOxAvgND[
                ZeroDimVoltageCurrentSocModel`Private`soc, 
                 ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                 ZeroDimVoltageCurrentSocModel`Private`domId]/
               ZeroDimVoltageCurrentSocModel`cRedAvgND[
               ZeroDimVoltageCurrentSocModel`Private`soc, 
                ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                ZeroDimVoltageCurrentSocModel`Private`domId]) ((
                ZeroDimVoltageCurrentSocModel`cRedAvgND[
                  ZeroDimVoltageCurrentSocModel`Private`soc, 
                   ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                   ZeroDimVoltageCurrentSocModel`Private`domId] 
                 ZeroDimVoltageCurrentSocModel`Private`sh - 
                ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND)/(
               ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND + 
               ZeroDimVoltageCurrentSocModel`cOxAvgND[
                 ZeroDimVoltageCurrentSocModel`Private`soc, 
                  ZeroDimVoltageCurrentSocModel`Private`elCurrentDensityND, 
                  ZeroDimVoltageCurrentSocModel`Private`domId] 
                ZeroDimVoltageCurrentSocModel`Private`sh))])], 
          ZeroDimVoltageCurrentSocModel`Private`getDomIdSign[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`domId, 
             Blank[]]] := 
          If[ZeroDimVoltageCurrentSocModel`Private`domId == 
            ZeroDimVoltageCurrentSocModel`idNeg, -1, 1], 
          ZeroDimVoltageCurrentSocModel`\[Eta]Ohmic[
            Pattern[ZeroDimVoltageCurrentSocModel`Private`soc, 
             Blank[]], 
            Pattern[ZeroDimVoltageCurrentSocModel`Private`elCurrent, 
             Blank[]]] := 
          ZeroDimVoltageCurrentSocModel`Private`elCurrent 
           ZeroDimVoltageCurrentSocModel`Private`modelParams[
            ZeroDimVoltageCurrentSocModel`ohmicCellResistance], 
          TagSet[ZeroDimVoltageCurrentSocModel`\[Eta]Ohmic, 
           MessageName[ZeroDimVoltageCurrentSocModel`\[Eta]Ohmic, "usage"], 
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
            NotebookDirectory[], "ZeroDimVoltageCurrentSocModel.wl"]]; 
         ZeroDimVoltageCurrentSocModel`initModel[]; 
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
  DynamicModuleValues:>{}]],ExpressionUUID->"69d3cee6-a995-40ac-9152-\
bf8d5647adc7"]
},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"12.2 for Mac OS X x86 (64-bit) (December 12, 2020)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"e85a35ca-6814-4807-8fdf-3d8b3ed0b88b"
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
Cell[1488, 33, 121155, 2152, 24, InheritFromParent,ExpressionUUID->"69d3cee6-a995-40ac-9152-bf8d5647adc7"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature @vDC3VsT78BwsDKjLEZegjrz *)
