local Rayfield = require(game.ReplicatedStorage.Rayfield) 

local Window = Rayfield:CreateWindow({
   Name = "Aadityalala hub",
   LoadingTitle = "LALA hub",
   LoadingSubtitle = "by my fingers man",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "RBS"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Fruits", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Blox Fruits")

Rayfield:Notify({
   Title = "You executed the script!",
   Content = "Thanks for using my fingers man's Aadityalala hub",
   Duration = 5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
            print("The user tapped Okay!")
         end
      }
   }
})

local Button = MainTab:CreateButton({
   Name = "Find Fruits",
   Callback = function()
      -- Placeholder function replacing loadstring
      local player = game.Players.LocalPlayer
      print("Find Fruits button clicked by " .. player.Name)
      -- Add custom logic here, e.g., teleporting to fruits or displaying a message
      Rayfield:Notify({
         Title = "Find Fruits",
         Content = "This is a placeholder function for finding fruits in Blox Fruits.",
         Duration = 5,
         Image = nil,
         Actions = {
            Ignore = {
               Name = "Okay!",
               Callback = function()
                  print("Placeholder notification closed")
               end
            }
         }
      })
   end
})
