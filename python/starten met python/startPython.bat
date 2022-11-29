 @if (@CodeSection == @Batch) @then
 
 @echo off
 
 set SendKeys=CScript //nologo //E:JScript "%~F0" 
 
 cd Documenten\environments 
set /p UserInputPath=wat is de naam van je pythonproject? 
start .\%UserInputPath%_env\Scripts\activate 
 
timeout /t 5 
 
%SendKeys% "cd %UserInputPath%_project" 
%SendKeys% "{ENTER}" 
%SendKeys% "python manage.py runserver" 
%SendKeys% "{ENTER}" 
cd C:\Users\%USERNAME%\AppData\Local\Programs\Microso* 
start code.exe 
 
start http://localhost:8000 
 
 
goto :EOF 
 
@end 
// JScript section 
 
var WshShell = WScript.CreateObject("WScript.Shell"); 
WshShell.SendKeys(WScript.Arguments(0)); 
