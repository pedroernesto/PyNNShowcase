#!/bin/bash

####   Regenerating PyNN from NeuroML2 

cd NeuroML2

# Tidy up
rm -rf *.json *.py* *.mod

#------------------------------------
# Convert LEMS_2007One.xml

jnml LEMS_2007One.xml -pynn
mv *.py *.mod ../PyNN

#------------------------------------

rm -rf *.json *.py* 
cd ..

####  Regenerating NeuroML2 from PyNN

cd PyNN

# Tidy up
rm -rf *.xml *.nml


#------------------------------------
# Convert NeuroMLTest_PyNN0.8.py

python NeuroMLTest_PyNN0.8.py neuroml
mv *.xml *.nml ../NeuroML2

#------------------------------------

cd ..



