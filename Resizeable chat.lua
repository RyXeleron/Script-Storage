local ChatSettings = require(game:GetService("Chat").ClientChatModules.ChatSettings)

ChatSettings.WindowDraggable = true --allows the chat to be dragged around the screen
ChatSettings.WindowResizable = true --allows you to resize the chat by dragging the corner

repeat wait() until game:IsLoaded()
local c =game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Chat"):FindFirstChildWhichIsA("Frame");c.Active = true;c.Draggable=true
local ChatSettings = require(game:GetService("Chat").ClientChatModules.ChatSettings)
ChatSettings.WindowResizable = true