@echo off

:BEGIN_LOOP

cls
timeout /NOBREAK /T 1800
start backup_push
echo push sln to git

goto BEGIN_LOOP