@echo off
Echo Depleting DNS
ipconfig /displaydns
Echo This is your DNS history do you want to delete ALL of it
set "reply=y"
set /p "reply=Clean user profile for %USERREG%? [y|n]: "
if /i not "%reply%" == "y" goto :eof
Echo Deleting DNS
ipconfig /flushdns
Echo DNS Deleted
cmd/k