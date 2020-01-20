@echo off

md proj
md proj_backup

set /p pass=< pass.txt

git clone "https://github.com/VladimirEfremov/proj_SI" proj_backup

cd proj_backup
7z x proj.7z -oServiceMoq -p%pass%
move ServiceMoq ../proj
rmdir ServiceMoq
