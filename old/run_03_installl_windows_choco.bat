{{- if eq .chezmoi.os "windows" }}
:: upgrade choco .exe and add choco to PATH
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/upgrade.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n allowGlobalConfirmation

:: install scoop
@powershell  -NoProfile -ExecutionPolicy Bypass -Command "iwr -useb get.scoop.sh | iex"

:: upgrade all the packages


:::: DEV TOOLS
choco upgrade git -y
choco upgrade microsoft-windows-terminal -y
choco upgrade vscode -y


cpu-z 2.08
cpu-z.install 2.08
docker-desktop 4.15.0
DotNet4.5.2 4.5.2.20140902
dotnetfx 4.8.0.20220524
gh 2.20.2
git 2.39.0
git.install 2.39.0
GoogleChrome 108.0.5359.125
gpu-z 2.56.0
KB2919355 1.0.20160915
KB2919442 1.0.20160915
paint.net 4.3.12
sysinternals 2022.11.28
visualstudio-installer 2.0.3
visualstudio2022community 117.4.3.0
vlc 3.0.18
vlc.install 3.0.18
vscode 1.74.1
vscode.install 1.74.1


:::: FONTS
choco upgrade firacode -y
choco upgrade fontbase -y
choco upgrade sourcecodepro -y
choco upgrade hackfont -y
choco upgrade cascadiamono -y
choco upgrade cascadiacode -y
choco upgrade cascadiafonts -y
choco upgrade cascadiamonopl -y
choco upgrade cascadiacodepl -y


{{- end }}