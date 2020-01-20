@echo off  

set /p pass=< pass.txt
cd proj  
7z a proj.7z -p%pass%  
move proj.7z ../proj_backup/  

cd ../proj_backup
git add * 
git commit -m "commit"
git push origin master
