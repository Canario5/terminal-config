@echo off

:: Tested only on Win 10 22H2
:: Needs to run with admin rights because it sets user environment variable

echo This script needs to be run with ADMIN RIGHTS!

echo Installing WezTerm terminal...
winget install wez.wezterm --location "C:\DevTools\Terminal\tools\wezterm"

echo Setting WezTerm configuration path...
setx WEZTERM_CONFIG_FILE "C:\DevTools\Terminal\config\wezterm\wezterm_config.lua"


echo Installing Nushell...
winget install Nushell.Nushell --override "/quiet APPLICATIONFOLDER=C:\DevTools\Terminal\tools\nushell"

echo Setting Nushell configuration path...
setx NU_CONFIG_DIR "C:\DevTools\Terminal\config\nushell"


:: Starship installer require override of this property value, just classic --location didnt worked for me; also needs to run as admin because it adds system wide env
echo Installing Starship prompt...
winget install --id Starship.Starship --override "/quiet APPLICATIONFOLDER=C:\DevTools\Terminal\tools\starship"

echo Setting up Starship configuration...
setx STARSHIP_CONFIG "C:\DevTools\Terminal\config\starship\starship_config.toml"


echo Installation complete!
echo Please restart your terminal for the changes to take effect.
pause
