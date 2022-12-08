@echo off
 del installpack.bat

 
 cls
 :yay
 
 

python --version
echo zie je hierboven een pythonversie staan? zonee moet je hem even installeren
echo 1 = ja
echo 2 = nee
set /p pythoninstalenv=
if /I "%pythoninstalenv%"=="2" goto pythoninstallenv


:start
cls
echo welkom bij mijn setup file voor python environments.
echo wat wil je instellen?
echo:
echo 1 = een nieuwe environment.
echo 2 = een nieuw project.
echo 3 = een nieuwe startPython.bat file dat je telkens kan gebruiken om makkelijk je python project op te starten zonder alle cls commands in te moeten voeren.
echo 4 = packages zoals django of flask...
echo:
echo je moet een environment hebben voordat je een project kan starten en voor je voor de eerste keer een startpython.bat file aanmaakt.
echo:
echo:
echo kijk zeker na of dit config.bat bestand in een folder staat genaamd environments op een plaats waar je het makkelijk terugvind.
echo als dat niet zo is sluit je best dit programma af.
echo copieer je config.bat naar een map genaamd environments.
echo start je daar dit bestand terug op.
set /p vraageen=
if /I "%vraageen%"=="1" goto newenv
if /I "%vraageen%"=="2" goto newproject
if /I "%vraageen%"=="3" goto startstartupfile
if /I "%vraageen%"=="4" goto packs













:pythoninstallenv
cls
echo ik open even de site om python te installeren.
echo ik open ook even een video waar je goed kan zien hoe python te installeren.
echo als je python hebt geinstalleerd kan je op eender welke knop drukken om verder te gaan.
timeout /t 10
start https://www.python.org/downloads/
start https://www.youtube.com/watch?v=YYXdXT2l-Gg
goto start

:newenv
cls
pip install virtualenv
cls
echo geef hieronder de naam in dat je je environment wil geven. bv django als je een django environment wil maken of flask als je een flask environment wil maken.
set /p envnaam=
cls
virtualenv %envnaam%_env


goto packsvraag


:packsvraag
cls
echo je environment %envnaam% zou gecrieerd moeten zijn.
echo je kan dit controleren door te kijken of er een map gemaakt is met de naam %envnaam%
echo:
echo typ 1 als je  inneens wat packages wilt installeren voor je environment
echo typ 2 als je opnieuw wilt proberen.
echo typ 3 op terug naar het hoofdmenu te gaan.
set /p packsvraagg=
if /i "%packsvraagg%"== "1" goto packs
if /i "%packsvraagg%"== "2" goto newenv
if /i "%packsvraagg%"== "3" goto start
goto start













:newproject
cls
cls
echo wat is de naam van je project?
set /p projectnam=
django-admin startproject %projectnam%_project
cls
echo je project zou succesvol moeten zijn aangemaakt.
echo je kan dit nakijken door te checken of er een map %projectnam%_project is aangemaakt.
echo ik stuur je nu terug naar de homepage.
timeout /t 10
goto start












:startstartupfile
echo  @if (@CodeSection == @Batch) @then> startPython.bat
echo: >>startPython.bat
echo  @echo off>> startPython.bat
echo: >>startPython.bat
echo  set SendKeys=CScript //nologo //E:JScript "%%~F0" >>startPython.bat
echo: >>startPython.bat
goto startProgram


:startProgram
echo set /p UserInputPath=welk environment wil je opstarten? >> startPython.bat
echo set /p projectstart= welk project wil je opstarten? >> startPython.bat
echo start .\%%UserInputPath%%_env\Scripts\activate >> startPython.bat
echo: >>startPython.bat
echo timeout /t 5 >> startPython.bat
echo: >>startPython.bat
echo cls >> startPython.bat
echo %%SendKeys%% "cd %%projectstart%%_project" >> startPython.bat
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
goto einde

:einde
echo exit >>startpython.bat
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


:pythoninstall
cls
echo ik open even de site om python te installeren.
echo
echo ik open ook even een video waar je goed kan zien hoe python te installeren.
echo als je python hebt geinstalleerd kan je op eender welke knop drukken om verder te gaan.
timeout /t 10
start https://www.python.org/downloads/
start https://www.youtube.com/watch?v=YYXdXT2l-Gg
goto yay


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











:packs
cls
echo  @if (@CodeSection == @Batch) @then> installpack.bat
echo: >>installpack.bat
echo  @echo off>> installpack.bat
echo: >>installpack.bat
echo  set SendKeys=CScript //nologo //E:JScript "%%~F0" >>installpack.bat
echo: >>installpack.bat

echo :startfile >>installpack.bat
echo cls >>installpack.bat
echo echo in welk environment wil je je package installeren? >>installpack.bat
echo echo typ 1 als je klaar bent met packages te installeren >>installpack.bat
echo set /p envp= >>installpack.bat
echo if /i "%%envp%%" == "1" goto klaar >>installpack.bat


echo :packstart >>installpack.bat
echo cls >>installpack.bat
echo echo u bent bezig in de environment %%envp%% >>installpack.bat
echo echo welk package wilt u installeren? >>installpack.bat
echo echo typ u packages atlijd 1 per 1 >>installpack.bat
echo echo typ 1 als u u environment wilt aanpassen >>installpack.bat
echo echo typ 2 als u klaar bent met packages te installeren >>installpack.bat
echo echo typ 3 als u wilt weten welke packages al geinstalleerd zijn >>installpack.bat
echo echo typ 4 als u een package wilt deinstalleren >>installpack.bat
echo set /p packp= >>installpack.bat
echo if /i "%%packp%%" == "1" goto startfile >>installpack.bat
echo if /i "%%packp%%" == "2" goto klaar >>installpack.bat
echo if /i "%%packp%%" == "3" goto packinstalled >>installpack.bat
echo if /i "%%packp%%" == "4" goto packdeinstall >>installpack.bat

echo start .\%%envp%%_env\Scripts\activate >>installpack.bat
echo timeout /t 5 >>installpack.bat
echo %%SendKeys%% "pip install %%packp%%" >> installpack.bat
echo %%SendKeys%% "{ENTER}" >> installpack.bat
echo %%SendKeys%% "exit" >> installpack.bat
echo %%SendKeys%% "{ENTER}" >> installpack.bat
echo goto packstart >>installpack.bat


echo :packdeinstall >>installpack.bat
echo cls >>installpack.bat
echo echo welk package wil je deinstalleren? >>installpack.bat
echo set /p deinstallp= >>installpack.bat
echo start .\%%envp%%_env\Scripts\activate >>installpack.bat
echo timeout /t 5 >>installpack.bat
echo %%SendKeys%% "pip uninstall %%deinstallp%%" >> installpack.bat
echo %%SendKeys%% "{ENTER}" >> installpack.bat
echo %%SendKeys%% "y" >> installpack.bat
echo %%SendKeys%% "{ENTER}" >> installpack.bat
echo timeout /t 15 >>installpack.bat
echo %%SendKeys%% "exit" >> installpack.bat
echo %%SendKeys%% "{ENTER}" >> installpack.bat
echo goto packstart >>installpack.bat


echo :packinstalled >>installpack.bat
echo start .\%%envp%%_env\Scripts\activate >>installpack.bat
echo timeout /t 5 >>installpack.bat
echo %%SendKeys%% "pip list" >> installpack.bat
echo %%SendKeys%% "{ENTER}" >> installpack.bat
echo timeout /t 10 >>installpack.bat
echo %%SendKeys%% "exit" >> installpack.bat
echo %%SendKeys%% "{ENTER}" >> installpack.bat
echo goto packstart >>installpack.bat


echo :klaar >>installpack.bat
echo start config.bat >>installpack.bat
echo exit >>installpack.bat



echo: >>installpack.bat
echo goto :EOF >>installpack.bat
echo: >>installpack.bat
echo @end >>installpack.bat
echo // JScript section >>installpack.bat
echo var WshShell = WScript.CreateObject("WScript.Shell"); >>installpack.bat
echo WshShell.SendKeys(WScript.Arguments(0)); >>installpack.bat
start installpack.bat
exit

