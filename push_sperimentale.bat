#!/bin/bash  
  
git init
git checkout -b sperimentale
git add LTDC_Paint
git add Documentazione
git add push.bat
git add push_sperimentale.bat

set /p UserInputPath=Inserire la descrizione breve del push: 
git commit -m "%UserInputPath%"
git remote add origin https://github.com/snsluca/STM.git
git remote -v
git push -u origin sperimentale
PAUSE