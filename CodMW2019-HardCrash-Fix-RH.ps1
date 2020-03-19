
#In attempt to fix your crashing CodMW2019

#Ensure you paste this into an elevated Powershell ISE or Similar i.e. VS Code, You'll need to amend the paths to your own. 

#removes blizzard ent folder
    Remove-Item  "C:\programdata\Blizzard Entertainment" -Force #-WhatIf

#removes ppsod.dat from players folder Note: Change the path to your players folder
    $players = "C:\users\Ric\Documents\Call of Duty Modern Warfare\players"
    Get-ChildItem -path $players | Where-Object Name -like "*ppsod*" | Remove-Item -force

#removes shaders, will need to reinstall in-game
    Remove-item -path "D:\CoDmw\Call of Duty Modern Warfare\main\*.*" -force #-WhatIf 

#removes dx/gl GPU cache
    Remove-item -path "C:\users\ric\appdata\local\amd\DxCache\*.*" -force -ErrorAction SilentlyContinue #-WhatIf
    Remove-item -path "C:\users\ric\appdata\local\amd\GLCache\*.*" -force -ErrorAction SilentlyContinue #-WhatIf



   

