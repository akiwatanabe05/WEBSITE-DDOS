@ECHO OFF
CLS
ECHO ######################################
ECHO # Fast delete folder and sub-folders #
ECHO ######################################
ECHO.
ECHO.
set /P c=Delete %CD% [Y/N]?
if /I "%c%" EQU "Y" goto :DELETE
if /I "%c%" EQU "J" goto :DELETE
EXIT

:DELETE
ECHO ########################################################
ECHO Start deleting... don't close this window until finished
SET DIR=%CD%
CD /
DEL /F/Q/S "%DIR%" > NUL
RMDIR /Q/S "%DIR%"
ECHO Finished deleting %DIR%. 
ECHO Hope you were sure what you did there...
ECHO ########################################################
PAUSE
EXIT