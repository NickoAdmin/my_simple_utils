goto start

--------------------------------------
Utility for automatic weekly backup
--------------------------------------

:start
chcp 65001 
@echo off
rem determines the source folder for the backup
set "backup_directory=C:\Users\%USERNAME%\Desktop\backup_test"
rem determines the destination folder for the backup
set "target_directory=C:\Users\%USERNAME%\Desktop\backup_test"
rem replaces slashes with hyphens to create a filename from the current date
set "date=%date:/=-%"
rem replaces colon characters with a hyphen to create a filename from the current date
set "time=%time::=-%"
rem determines file name for backup from current datetime value
set "filename=%date%_%time%"
rem creates logfile for backup
set "logfile=%target_directory%\backup_log.txt"
echo Starting backup at %date% %time% » %logfile%
rem copy all files and directories from source directory to target directory. And writes log from coping process into log file
robocopy %backup_directory% %target_directory%\%filename% /E /V /LOG+:%logfile%
echo Backup completed at %date% %time% » %logfile%
pause