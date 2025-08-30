# RustServerScripts
Scripts for installing and running Rust server.

# InstallRustServer.ps1
## Content:
- Downloads and installs SteamCMD application to "(installationpath)/SteamCMD"  
- Runs SteamCMD, which downloads and installs Rust dedicated server to "(installationpath)/Server"  
- Downloads Oxide mods plugin and installs it into server folder
## Usage:  
```
    ./InstallRustServer.ps1 [-installationpath <String>]
```  
-installationpath default value: "C:\RustServer"  

# StartRustDedicated.ps1
## Content:
- Runs installed Rust dedicated server (edit script to control startup variables)  
## Usage:  
```
    ./StartRustDedicated.ps1 [-installationpath <String>]
```  
-installationpath default value: "C:\RustServer"