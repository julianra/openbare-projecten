@echo off
goto startSchrijven


:startSchrijven
echo  @if (@CodeSection == @Batch) @then> startPython.bat
echo: >>startPython.bat
echo  @echo off>> startPython.bat
echo: >>startPython.bat
echo  set SendKeys=CScript //nologo //E:JScript "%%~F0" >>startPython.bat
echo: >>startPython.bat
goto startProgram


:geefPath
echo %customFolder%

echo cd %customFolder% >> startPython.bat
goto runserver




pause
exit
:createEnvDocument
cd Documenten
mkdir 
echo  cd Documenten\environments >> startPython.bat
goto runserver


:runserver
echo set /p UserInputPath=wat is de naam van je pythonproject? >> startPython.bat
echo start .\%%UserInputPath%%_env\Scripts\activate >> startPython.bat
echo: >>startPython.bat
echo timeout /t 5 >> startPython.bat
echo: >>startPython.bat
echo %%SendKeys%% "cd %%UserInputPath%%_project" >> startPython.bat
echo %%SendKeys%% "{ENTER}" >> startPython.bat
echo %%SendKeys%% "python manage.py runserver" >> startPython.bat
echo %%SendKeys%% "{ENTER}" >> startPython.bat
goto editorVraag


:vulEditor
echo cd C:\Users\%%USERNAME%%\AppData\Local\Programs\Microso* >>startPython.bat
echo start code.exe >> startPython.bat
goto wiltHome

:home
echo: >> startPython.bat
echo start http://localhost:8000 >>startPython.bat
echo: >> startPython.bat

:einde
echo: >>startPython.bat
echo goto :EOF >>startPython.bat
echo: >>startPython.bat
echo @end >>startPython.bat
echo // JScript section >>startPython.bat
echo: >>startPython.bat
echo var WshShell = WScript.CreateObject("WScript.Shell"); >>startPython.bat
echo WshShell.SendKeys(WScript.Arguments(0)); >>startPython.bat
cls
echo je kan nu succesvol startPython.bat gebruiken om makkelijk in python te programmeren.
echo wil je dat dit programma nu wordt opgestart?
echo 1 = ja
echo 2 = nee
set /p startpython=
if /I "%startpython%"=="1" start startPython.bat
exit



:startProgram
cls
python --version
echo zie je hierboven een pythonversie staan? zonee moet je hem even installeren
echo 1 = ja
echo 2 = nee
set /p pythoninstal=
if /I "%pythoninstal%"=="2" goto pythoninstall
goto createenvfolder


:pythoninstall
cls
echo ik open even de site om python te installeren.
echo
echo ik open ook even een video waar je goed kan zien hoe python te installeren.
timeout /t 10
start https://www.python.org/downloads/
start https://www.youtube.com/watch?v=YYXdXT2l-Gg
goto startProgram


:createenvfolder
cls
echo heb je al een virtual environment map aangemaakt?
echo 1 = ja
echo 2 = nee
set /p pythoninstal=
if /I "%pythoninstal%"=="1" goto geefPathIn
goto createPathEnv


:geefPathIn
cls
echo plak hieronder u path naar u environments folder.
echo bv: C:\Users\julia\OneDrive\Documents\GitHub\projecten\jenvironments
set /p customFolder= 
goto geefPath


:createPathEnv
cls
echo wil je dat ik een environments folder aanmaak in je documenten?
echo 1 = ja
echo 2 = nee, ik wil zelf een map aanmaken.
set /p mapAanmaken=

if /I "%mapAanmaken%"=="1" goto createEnvDocument
goto geefPathIn


:editorVraag
cls
echo wil je dat je visual studio code mee opstart?
echo doe dit niet als je visual studio code niet geinstalleerd hebt.
echo bij problemen moet je zelf manueel de path aanpassen op rij 17 en 18 van Startpython.bat
echo :
echo 1 = ja
echo 2 = nee
set /p code=
if /i "%code%" == "1" goto vulEditor
goto wiltHome


:wiltHome
cls
echo wil je de localhost:8000 pagina standaard openen?
echo 1= ja
echo 2 = nee

set /p home=
if /i "%home%" == "1" goto home
goto einde



