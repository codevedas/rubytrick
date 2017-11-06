@ECHO OFF
PowerShell.exe -Command "& {Start-Process "chrome.exe" "www.google.com" -Verb RunAs}"
  
 
rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"

rem Start the other program in the same Window
start "" /B cmd
%SendKeys% "echo off{ENTER}"
