git init
git add -A
read -e -p "Testo del commit?: " i "Push" testoCommit
git commit -m $testoCommit
git remote add origin https://github.com/snsluca/STM.git
git remote -v
git push -u origin sperimentale
PAUSE