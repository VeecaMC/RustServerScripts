param ($installationpath)

if ($installationpath -eq $null) {
   $installationpath = "C:\RustServer"
}

$serverpath = "$($installationpath)\Server"


cd -Path "$($serverpath)"

.\RustDedicated.exe -batchmode +server.port 28015 +server.level "Procedural Map" +server.seed 123456789 +server.worldsize 3000 +server.maxplayers 10  +server.hostname "RustServer" +server.description "Test Server" +server.identity "test-server" +rcon.port 28016 +rcon.password letmein +rcon.web 1