git init
git checkout -b sperimentale
git add STemWin_HelloWorld
git add STemWin_JNS
git add Documentazione
git add push.bat
git add push_sperimentale.bat
git commit -m "Sperimentale"
git remote add origin https://github.com/snsluca/STM.git
git remote -v
git push -u origin sperimentale
PAUSE