# User Guide

## Short Overview of the 0D-U-I-SoC Model

The physics-based 0D-U-I-SoC model allows for fast evaluations of the cell voltage of a redox flow battery. 

The model assumes the electrolyte in each half-cell to contain the following species:
- S_{ox}: oxidized electroactive species (specific to each half-cell)
- S_{red}: reduzed electroactive species (specific to each half-cell)
- S_{ex}: ion that is exchange through the separator to maintain charge balance
- S_{supp}: supporting electrolyte ion that forms a salt together with S_{ex}

**Important:** The species S_{supp} is only considered if it forms a salt together with the exchanged ion species S_{ex}. E.g., in the TEMPOL system, chloride ions are exchanged through a semipermeable membrane and NaCl is used as a supporting electrolyte, so that S_{supp} = Na.

The model assumes the reversible electrochemical reactions in each half-cell to be of the form

S_{ox} + n_e e^{-} + n_{ex} S_{ex} <-> S_{red},

where n_e denotes the number of exchanged electrons and n_{ex} is the number of exchanged ions participating in the reaction.

## Running the model from a JSON configuration string

The JSON input configuration string allows setting the model input parameters and specifying which model output parameters to evaluate by setting "model_parameters" and "study_parameters", respectively:

```
{
    "model_parameters":
    {
        ...
    }
    "study_parameters":
    {
        ...
    }
}
```

### Model Parameters

The following table provides a list of all model_parameters, the corresponding physical unit and a short description.

Model parameter | Unit | Description
---|---|---
charge_number_ox_pos | - | Charge number of oxidized electroactive species in posolyte
charge_number_red_pos | - | Charge number of reduzed electroactive species in posolyte
charge_number_ox_neg | - | Charge number of oxidized electroactive species in negolyte
charge_number_red_neg | - | Charge number of reduzed electroactive species in negolyte
charge_number_exchanged_ion | - | Charge number of ion that is exchanged through the separator
charge_number_supporting_electrolyte_ion | - | Charge number of supporting electrolyte ion that forms a salt with the exchanged ion
stoichiometric_coefficient_exchanged_ion_pos | - | Stoichiometric coefficient of the exchanged ion in the electrochemical reaction at the positive electrode
number_electron_transfer_pos | - | Number of electrons transferred in electrochemical reaction at the positive electrode
stoichiometric_coefficient_exchanged_ion_neg | - | Stoichiometric coefficient of the exchanged ion in the electrochemical reaction at the negative electrode
number_electron_transfer_neg  | - | Number of electrons transferred in electrochemical reaction at the negative electrode
ohmic_cell_resistance | V | Total ohmic cell resistance
temperature | K | Temperature
electrolyte_volume | m^3 | Electrolyte volume
electrode_length | m | Electrode length in the through-plane direction of the electrode membrane assembly
electrode_width | m | Electrode width in the in-plane direction and orthogonal to mean electrolyte flow direction
electrode_height | m | Electrode height in the in-plane direction and parallel to mean electrolyte flow direction
specific_surface_area | m^{-1} | Specific surface area of the porous electrode materials
volumetric_flow_rate | m^3/s | Volumetric flow rate
formal_potential_neg | V | Formal potential of negative half-cell
formal_potential_pos | V | Formal potential of positive half-cell
reaction_rate_constant_neg | m/s | Reaction rate constant of electrochemical reaction in negative electrode
reaction_rate_constant_pos | m/s | Reaction rate constant of electrochemical reaction in positive electrode
electro_osmotic_drag_coefficient | - | Electro-osmotic drag coefficient
molar_concentration_supporting_electrolyte_ion_neg | mol/m^3 | Molar concentration of supporting electrolyte in negolyte
molar_concentration_supporting_electrolyte_ion_pos | mol/m^3 | Molar concentration of supporting electrolyte in posolyte 
molar_concentration_ox_neg_soc0 - | mol/m^3 | Molar concentration of oxidized electroactive species in negolyte at SoC = 0%
molar_concentration_red_pos_soc0  - | mol/m^3 | Molar concentration of reduzed electroactive species in posolyte at SoC = 0%
mass_transfer_coefficient_a | (m/s)^{1-mass_transfer_coefficient_b} | Mass transfer coefficient a
mass_transfer_coefficient_b | - | Mass transfer coefficient b
molar_mass_solvent | kg/m^3 | Molar mass of solvent 
molar_mass_ox_neg | kg/m^3 | Molar mass of oxidized electroactive species in negolyte
molar_mass_red_neg | kg/m^3 | Molar mass of reduzed electroactive species in negolyte
molar_mass_ox_pos | kg/m^3 | Molar mass of oxidized electroactive species in posolyte
molar_mass_red_pos | kg/m^3  | Molar mass of reduzed electroactive species in posolyte
molar_mass_supporting_electrolyte | kg/m^3 | Molar mass of supporting electrolyte species
partial_molar_volume_solvent | m^3/mol | Partial molar volume of solvent
partial_molar_volume_ox_neg | m^3/mol | Partial molar volume of oxidized species in negolyte
partial_molar_volume_red_neg | m^3/mol | Partial molar volume of reduzed species in negolyte
partial_molar_volume_ox_pos | m^3/mol | Partial molar volume of oxidized species in posolyte
partial_molar_volume_red_pos | m^3/mol | Partial molar volume of reduzed species in posolyte
partial_molar_volume_supporting_electrolyte_neg | m^3/mol | Partial molar volume of supporting electrolyte in negolyte
partial_molar_volume_supporting_electrolyte_pos | m^3/mol | Partial molar volume of supporting electrolyte in posolyte
membrane_potential | -/V | Specification of membrane model (see explanation below)

**Important Notes**

- The supporting electrolyte is assumed to be of the form S_{supp} S_{ex}. The corresponding parameter *charge_number_supporting_electrolyte_ion* specifies the charge number of S_{supp}.
- The mass transfer coefficient is modelled by the empirical relation k_m = a_m v^{b_m}, where v is the superficial velocity of the electrolyte in the porous electrode. The parameters a_m and b_m can be set with mass_transfer_coefficient_a and mass_transfer_coefficient_b, respectively.
- The molar masses of the ionic species, e.g. molar_mass_ox_pos, are to be specified for the corresponding neutral salt (e.g. TCl in case of TEMPTMA).
- The partial molar volumes for the ionic species, e.g. partial_molar_volume_supporting_electrolyte_neg, have to be specified for the corresponding neutral salt (e.g. NaCl in case of the MV/TEMPOL system).
- The membrane_potential can either be evaluated according to a thermodynamics based model with "thermodynamics" or set to a user-defined constant potential.


### Study Parameters

The model supports the following studies:

- open_circuit_voltage: evaluate open circuit voltage at a specific SoC
- maximum_power_density: evaluate maximum power density at a specific SoC
- voltage_efficiency: evaluate voltage efficiency at a specific electric current density
- sensitivity_analysis: perform sensitivity analysis over all specified model parameters

**Important Notes**
- The sensitivity analysis is performed with a Monte-Carlo sampling method. Thus, the sensitivity results are affected by statistical noise, which can be controlled by the number of samples used. 

See *mv_tmatempo_example.json* for a usage example.