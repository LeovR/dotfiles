@echo off
:: echo Included filename "%~f0"
::
:: Common DOS aliases
::

:: Fast access to Notepad
doskey ..=cd ..
doskey ...=cd ..\..
doskey ....=cd ..\..\..
doskey .....=cd ..\..\..\..
doskey ~=cd /D %USERPROFILE%
doskey alias=doskey /macros
doskey history=type "%LOCALAPPDATA%\clink\.history" $*
doskey hosts=sudo notepad %SystemRoot%\system32\drivers\etc\hosts
doskey g=git $*
doskey n=notepad $*
doskey e=explorer .
doskey open=cmd /C start $*
doskey subl="%ProgramFiles%\Sublime Text 3\sublime_text.exe" $*
