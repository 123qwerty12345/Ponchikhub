local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Test",
   LoadingTitle = "Testing",
   LoadingSubtitle = "Tested",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = hub, -- Create a custom folder for your hub/game
      FileName = "Ponchik hub"
   },
   Discord = {
      Enabled = true,
      Invite = "tA3M5gZNdT", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "не крякать!",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"key"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Player")
Section:Set("Player")

local Button = Tab:CreateButton({
   Name = "Fly(e)",
   Callback = function()
   loadstring(game:HttpGet(("https://raw.githubusercontent.com/prosko1234/Fly/main/script.lua"),true))()
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Speed",
   Range = {0, 100},
   Increment = 10,
   Suffix = "SpeedHack",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(s)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
   end,
})


local Slider = Tab:CreateSlider({
   Name = "Jump",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Jumppower",
   CurrentValue = 10,
   Flag = "Slider2",
   Callback = function(s)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
   end,
})

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Arsenal")
Section:Set("Arsenal")

local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
for i,v in pairs(game:GetDescendants()) do
if v.Name == 'DeadHP' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.5)
end
end
   end,
})
