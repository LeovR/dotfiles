@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

cinst SublimeText3
cinst clink
cinst sudo
cinst git

set PATH=%PATH%;%programfiles(x86)%\Git\cmd\

cd /D %USERPROFILE%\Documents
if not exist GitHub mkdir GitHub
cd GitHub

git clone https://github.com/LeovR/dotfiles.git
cd dotfiles
call sync -f
