@echo off
Title Get FileName With Date and Time
Call :GetFileNameWithDateTime MyCurrentDate

:: Print out current date and time
set year=%date:~10,4%
set month=%date:~4,2%
set day=%date:~7,2%
echo "Today date and time is: " %MyCurrentDate%
  
:: Get input and store as variable
echo "Please Enter a variable"
SET /P var1=
echo "var1 Entered is: "%gateNo%

:: Get input from external storage drive letter and storing as a variable
echo "Enter Drive: "
SET /P drive=
echo "Drive Entered is :"%drive%
echo "Year :"%year% "Month: "%month% "Day: "%day%

:: Create a folder with the current date and time in the external storage to store the logs
if not exist %drive%"\%MyCurrentDate%" (
MkDir %drive%:\%MyCurrentDate%

:: copy 2 files from the pc to the newly created folder in external storage
xcopy "C:\notepad" %drive%:\%MyCurrentDate%
xcopy C:\log\logs.txt %drive%:\%MyCurrentDate%

) else (  
echo File Exist   
)
timeout 10
pause & exit
::----------------------------------------------------------------------------------
:GetFileNameWithDateTime <FileName>
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set "MyDate=%%x"
set "%1=%MyDate:~0,4%-%MyDate:~4,2%-%MyDate:~6,2%-%MyDate:~8,2%-%MyDate:~10,2%"
Exit /B
::----------------------------------------------------------------------------------
