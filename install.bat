@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

cinst git
cinst sudo

IF "%PROCESSOR_ARCHITECTURE%"=="x86" (set PATH=%PATH%;%programfiles%\Git\cmd\) else (set PATH=%PATH%;%programfiles(x86)%\Git\cmd\)

@powershell iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
set PATH=%PATH%;%LOCALAPPDATA%\scoop\shims\

scoop install concfg
concfg import -n solarized
@powershell concfg import -n solarized
sudo concfg clean

cd /D %USERPROFILE%\Documents
if not exist GitHub mkdir GitHub
cd GitHub

git clone https://github.com/LeovR/dotfiles.git
cd dotfiles
call sync -f
