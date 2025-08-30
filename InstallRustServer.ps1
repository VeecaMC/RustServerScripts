param ($installationpath)

if ($installationpath -eq $null) {
   $installationpath = "C:\RustServer"
}

$steampath = "$($installationpath)\SteamCMD"
$serverpath = "$($installationpath)\Server"

Remove-Item -Path $($installationpath) -Force -Recurse -ErrorAction SilentlyContinue

New-Item -ItemType Directory -Path "$($steampath)" -Force
Invoke-WebRequest -Uri "https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip" -OutFile steamcmd.zip
Expand-Archive -Path steamcmd.zip -DestinationPath "$($steampath)" -Force
Remove-Item -Path steamcmd.zip -Force

New-Item -ItemType Directory -Path "$($serverpath)" -Force
. "$($steampath)\SteamCMD.exe" +force_install_dir "$($serverpath)" +login anonymous +app_update 258550 +quit

Invoke-WebRequest -Uri "https://umod.org/games/rust/download" -OutFile oxidemod.zip
Expand-Archive -Path oxidemod.zip -DestinationPath "$($serverpath)" -Force -Verbose
Remove-Item -Path oxidemod.zip -Force