--[[
    if whitelist doesn't work then just do it manually whitelist = {"testingacc", "testingacc2"}
]]

local plrs = game:GetService("Players")
local whitelist = {}
whitelist[plrs.LocalPlayer.Name] = true

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nameless Hub | Troll & Product Viewer",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Troll bozos",
   LoadingSubtitle = "By feariosz0",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "RuBYEuCnDQ", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Nameless Hub",
      Subtitle = "Key System",
      Note = "Join discord to get key instantly (without verification or anything) discord.gg/RuBYEuCnDQ", -- Use this to tell the user how to get a key
      FileName = "Troll Hub", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"mountains"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local function getproducts()
    return game:GetService("MarketplaceService"):GetDeveloperProductsAsync()
end

local function passb(id)
    game:GetService("MarketplaceService"):SignalPromptGamePassPurchaseFinished(plrs.LocalPlayer, id, true)
end

local function award(id)
    game:GetService("BadgeService"):AwardBadge(plrs.LocalPlayer.UserId, id, true)
end

local function buy(product)
    game:GetService("MarketplaceService"):SignalPromptProductPurchaseFinished(plrs.LocalPlayer.UserId, product, true)
end

local function buy2(product)
    for i,v in pairs(plrs:GetPlayers()) do
        if not whitelist[v.Name] then
            local args = {
                [1] = v.Name;
            }
             
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("StoreTargetTROLL", 9e9):FireServer(unpack(args))
            
            buy(product)
        end
    end
end

local function buy3(product)
    for i,v in pairs(plrs:GetPlayers()) do
        if not whitelist[v.Name] then
            local args = {
                [1] = v.Name;
            }

            plrs.LocalPlayer:WaitForChild("PlayerGui", 9e9):WaitForChild("Troll", 9e9):WaitForChild("Troll", 9e9):WaitForChild("TrollBtn", 9e9):WaitForChild("LocalScript", 9e9):WaitForChild("RemoteEvent", 9e9):FireServer(unpack(args))
            buy(product)
        end
    end
end

local function getp(Name)
    Name = Name:lower():gsub("%s", "")
    for _, x in next, plrs:GetPlayers() do
        if x ~= plrs.LocalPlayer then
            if x.Name:lower():match(Name) then
                return x
            elseif x.DisplayName:lower():match("^" .. Name) then
                return x
            end
        end
    end
end

local Ta = Window:CreateTab("Misc", 4483362458) -- Title, Image
local Tab = Window:CreateTab("Slap Happy Troll Tower 2 (100-200)", 4483362458) -- Title, Image
local Tab2 = Window:CreateTab("Troll Tower Reborn (300-400)", 4483362458) -- Title, Image
local Tab3 = Window:CreateTab("[NEW] +1 Stud Wall Hop Obby (600-800)", 4483362458) -- Title, Image
local Tab4 = Window:CreateTab("The Maze Monsters (300-400)", 4483362458) -- Title, Image
local Tab5 = Window:CreateTab("[HUG] Rizz Tower (1000-1300)", 4483362458) -- Title, Image
local Tab6 = Window:CreateTab("[NEW] Speed's Wall Hop Obby (400-500)", 4483362458) -- Title, Image
local Tab7 = Window:CreateTab("FUNK TROLL TOWER! (1000-2000)", 4483362458) -- Title, Image
local Tab8 = Window:CreateTab("Trap Troll Tower (300-400)", 4483362458) -- Title, Image
local Tab10 = Window:CreateTab("Voice Chat Hangout (50-100)", 4483362458) -- Title, Image
local Tab999 = Window:CreateTab("Products", 4483362458) -- Title, Image
local Tab99 = Window:CreateTab("Gamepasses", 4483362458) -- Title, Image
local Tab9 = Window:CreateTab("Badges", 4483362458) -- Title, Image

--[[Misc]]--

local Sec = Ta:CreateSection("Whitelist")

local Input = Ta:CreateInput({
   Name = "Whitelist Player",
   CurrentValue = "",
   PlaceholderText = "Input Player Name",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
       local t = getp(Text)
       
       whitelist[t.Name] = true
   end,
})

local Sec2 = Ta:CreateSection("Credits")

local Parag = Ta:CreateParagraph({Title = "Credits", Content = "feariosz0 - the guy who made it | Connor34 - idea discord.gg/RuBYEuCnDQ"})

--[[Tab]]--

local Section = Tab:CreateSection("Game")

local Button = Tab:CreateButton({
   Name = "Copy Game Link",
   Callback = function()
       if setclipboard then
           setclipboard("https://www.roblox.com/games/75488796862427/Slap-Happy-Troll-Tower-2")
       else
           Rayfield:Notify({
               Title = "Missing Exploit Function",
               Content = "Missing Exploit Function: setclipboard()",
               Duration = 5,
               Image = 4483362458,
           })
       end
   end,
})

local Section2 = Tab:CreateSection("Trolling (All Section)")

local Button = Tab:CreateButton({
   Name = "Kill All",
   Callback = function()
       buy(3347017198)
   end,
})

local Button = Tab:CreateButton({
   Name = "Jumpscare All",
   Callback = function()
       buy(3347016933)
   end,
})

local Button = Tab:CreateButton({
   Name = "Fling All",
   Callback = function()
       buy(3347016332)
   end,
})

local Button = Tab:CreateButton({
   Name = "Ice All",
   Callback = function()
       buy2(3347016784)
   end,
})

local Button = Tab:CreateButton({
   Name = "Fire All",
   Callback = function()
       buy2(3347016189)
   end,
})

local Button = Tab:CreateButton({
   Name = "Slow All",
   Callback = function()
       buy2(3347017846)
   end,
})

local Button = Tab:CreateButton({
   Name = "Kick All",
   Callback = function()
       buy2(3347017126)
   end,
})

local Section3 = Tab:CreateSection("Trolling (Target Section)")

local Input = Tab:CreateInput({
   Name = "Target",
   CurrentValue = "",
   PlaceholderText = "Input Player Name",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
       local t = getp(Text)
       
       local args = {
           [1] = t.Name;
       }
       
       game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("StoreTargetTROLL", 9e9):FireServer(unpack(args))
   end,
})

local Button = Tab:CreateButton({
   Name = "Kill",
   Callback = function()
       buy(3347017420)
   end,
})

local Button = Tab:CreateButton({
   Name = "Jumpscare",
   Callback = function()
       buy(3347017038)
   end,
})

local Button = Tab:CreateButton({
   Name = "Fling",
   Callback = function()
       buy(3347016590)
   end,
})

local Button = Tab:CreateButton({
   Name = "Ice",
   Callback = function()
       buy(3347016784)
   end,
})

local Button = Tab:CreateButton({
   Name = "Fire",
   Callback = function()
       buy(3347016189)
   end,
})

local Button = Tab:CreateButton({
   Name = "Slow",
   Callback = function()
       buy(3347017846)
   end,
})

local Button = Tab:CreateButton({
   Name = "Kick",
   Callback = function()
       buy(3347017126)
   end,
})

--[[Tab 2]]--

local Section4 = Tab2:CreateSection("Game")

local Button = Tab2:CreateButton({
   Name = "Copy Game Link",
   Callback = function()
       if setclipboard then
           setclipboard("https://www.roblox.com/games/121518011796911/Troll-Tower-Reborn")
       else
           Rayfield:Notify({
               Title = "Missing Exploit Function",
               Content = "Missing Exploit Function: setclipboard()",
               Duration = 5,
               Image = 4483362458,
           })
       end
   end,
})

local Section5 = Tab2:CreateSection("Trolling (All Section)")

local Button = Tab2:CreateButton({
   Name = "Kill All",
   Callback = function()
       buy(3389805140)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Explode All",
   Callback = function()
       buy(3389877638)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Fling All",
   Callback = function()
       buy(3389803246)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Jumpscare All",
   Callback = function()
       buy(3389804426)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Ice All",
   Callback = function()
       buy2(3389804262)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Fire All",
   Callback = function()
       buy2(3389803159)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Slow All",
   Callback = function()
       buy2(3389809920)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Kick All",
   Callback = function()
       buy2(3389804552)
   end,
})

local Section6 = Tab2:CreateSection("Trolling (Target Section)")

local Input = Tab2:CreateInput({
   Name = "Target",
   CurrentValue = "",
   PlaceholderText = "Input Player Name",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
       local t = getp(Text)
       
       local args = {
           [1] = t.Name;
       }
       
       game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("StoreTargetTROLL", 9e9):FireServer(unpack(args))
   end,
})

local Button = Tab2:CreateButton({
   Name = "Kill",
   Callback = function()
       buy(3389805260)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Fling",
   Callback = function()
       buy(3389803343)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Jumpscare",
   Callback = function()
       buy(3389804830)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Ice",
   Callback = function()
       buy(3389804262)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Fire",
   Callback = function()
       buy(3389803159)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Slow",
   Callback = function()
       buy(3389809920)
   end,
})

local Button = Tab2:CreateButton({
   Name = "Kick",
   Callback = function()
       buy(3389804552)
   end,
})

--[[Tab 3]]--

local Section7 = Tab3:CreateSection("Game")

local Button = Tab3:CreateButton({
   Name = "Copy Game Link",
   Callback = function()
       if setclipboard then
           setclipboard("https://www.roblox.com/games/91828212665207/NEW-1-Stud-Wall-Hop-Obby")
       else
           Rayfield:Notify({
               Title = "Missing Exploit Function",
               Content = "Missing Exploit Function: setclipboard()",
               Duration = 5,
               Image = 4483362458,
           })
       end
   end,
})

local Section8 = Tab3:CreateSection("Trolling (Target Section)")
local Paragraph = Tab3:CreateParagraph({Title = "Tutorial", Content = "Click On The Troll in the game and then do kill or kick etc."})

local Button = Tab3:CreateButton({
   Name = "Kill",
   Callback = function()
       buy(3451073183)
   end,
})

local Button = Tab3:CreateButton({
   Name = "Fling",
   Callback = function()
       buy(3451075257)
   end,
})

local Button = Tab3:CreateButton({
   Name = "Freeze",
   Callback = function()
       buy(3451073991)
   end,
})

local Button = Tab3:CreateButton({
   Name = "Kick",
   Callback = function()
       buy(3451074996)
   end,
})

--[[Tab 4]]--

local Section9 = Tab4:CreateSection("Game")

local Button = Tab4:CreateButton({
   Name = "Copy Game Link",
   Callback = function()
       if setclipboard then
           setclipboard("https://www.roblox.com/games/93551592897170/The-Maze-Monsters")
       else
           Rayfield:Notify({
               Title = "Missing Exploit Function",
               Content = "Missing Exploit Function: setclipboard()",
               Duration = 5,
               Image = 4483362458,
           })
       end
   end,
})

local Section10 = Tab4:CreateSection("Admin")

local Button = Tab4:CreateButton({
   Name = "Get Admin",
   Callback = function()
       local ap = game:GetService("ReplicatedStorage").AdminPanels.AdminPanel:Clone()
       local hap = game:GetService("ReplicatedStorage").AdminPanels.HeadAdminPanel:Clone()
       ap.Parent = plrs.LocalPlayer.PlayerGui
       hap.Parent = plrs.LocalPlayer.PlayerGui
       ap.Alert.Visible = true
       task.wait(2)
       hap.Alert.Visible = true
   end,
})

--[[Tab 5]]--

local Section11 = Tab5:CreateSection("Game")

local Button = Tab5:CreateButton({
   Name = "Copy Game Link",
   Callback = function()
       if setclipboard then
           setclipboard("https://www.roblox.com/games/108207853263201/HUG-Rizz-Tower")
       else
           Rayfield:Notify({
               Title = "Missing Exploit Function",
               Content = "Missing Exploit Function: setclipboard()",
               Duration = 5,
               Image = 4483362458,
           })
       end
   end,
})

local Button = Tab5:CreateButton({
   Name = "Get Admin",
   Callback = function()
       game:GetService("ReplicatedStorage").AdminGrantEvent:FireServer()
   end,
})

local Section12 = Tab5:CreateSection("Trolling (All Section)")

local Button = Tab5:CreateButton({
   Name = "Kill All",
   Callback = function()
       buy3(3392311061)
   end,
})

local Button = Tab5:CreateButton({
   Name = "Fling All",
   Callback = function()
       buy3(3392311057)
   end,
})

local Button = Tab5:CreateButton({
   Name = "Freeze All",
   Callback = function()
       buy3(3392311058)
   end,
})

local Button = Tab5:CreateButton({
   Name = "Fire All",
   Callback = function()
       buy3(3392311060)
   end,
})

local Button = Tab5:CreateButton({
   Name = "Slow All",
   Callback = function()
       buy3(3392311065)
   end,
})

local Button = Tab5:CreateButton({
   Name = "Kick All",
   Callback = function()
       buy3(3392311064)
   end,
})

local Section13 = Tab5:CreateSection("Trolling (Target Section)")

local Input = Tab5:CreateInput({
   Name = "Target",
   CurrentValue = "",
   PlaceholderText = "Input Player Name",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
       local t = getp(Text)
       
       local args = {
           [1] = t.Name;
       }
       
       plrs.LocalPlayer:WaitForChild("PlayerGui", 9e9):WaitForChild("Troll", 9e9):WaitForChild("Troll", 9e9):WaitForChild("TrollBtn", 9e9):WaitForChild("LocalScript", 9e9):WaitForChild("RemoteEvent", 9e9):FireServer(unpack(args))
   end,
})

local Button = Tab5:CreateButton({
   Name = "Kill",
   Callback = function()
       buy(3392311061)
   end,
})

local Button = Tab5:CreateButton({
   Name = "Fling",
   Callback = function()
       buy(3392311057)
   end,
})

local Button = Tab5:CreateButton({
   Name = "Freeze",
   Callback = function()
       buy(3392311058)
   end,
})

local Button = Tab5:CreateButton({
   Name = "Fire",
   Callback = function()
       buy(3392311060)
   end,
})

local Button = Tab5:CreateButton({
   Name = "Slow",
   Callback = function()
       buy(3392311065)
   end,
})

local Button = Tab5:CreateButton({
   Name = "Kick",
   Callback = function()
       buy(3392311064)
   end,
})

--[[Tab 6]]--

local Section14 = Tab6:CreateSection("Game")

local Button = Tab6:CreateButton({
   Name = "Copy Game Link",
   Callback = function()
       if setclipboard then
           setclipboard("https://www.roblox.com/games/101819119929603/NEW-Speeds-Wall-Hop-Obby")
       else
           Rayfield:Notify({
               Title = "Missing Exploit Function",
               Content = "Missing Exploit Function: setclipboard()",
               Duration = 5,
               Image = 4483362458,
           })
       end
   end,
})

local Section15 = Tab6:CreateSection("Trolling (Target Section)")
local Paragraph2 = Tab6:CreateParagraph({Title = "Tutorial", Content = "Click On The Troll in the game and then do kill or kick etc."})

local Button = Tab6:CreateButton({
   Name = "Kill",
   Callback = function()
       buy(3366469408)
   end,
})

local Button = Tab6:CreateButton({
   Name = "Explode",
   Callback = function()
       buy(3366469414)
   end,
})

local Button = Tab6:CreateButton({
   Name = "Fling",
   Callback = function()
       buy(3366469412)
   end,
})

local Button = Tab6:CreateButton({
   Name = "Freeze",
   Callback = function()
       buy(3366469411)
   end,
})

local Button = Tab6:CreateButton({
   Name = "Flashbang",
   Callback = function()
       buy(3397573126)
   end,
})

local Button = Tab6:CreateButton({
   Name = "Kick",
   Callback = function()
       buy(3346104134)
   end,
})

--[[Tab 7]]--

local Section16 = Tab7:CreateSection("Game")

local Button = Tab7:CreateButton({
   Name = "Copy Game Link",
   Callback = function()
       if setclipboard then
           setclipboard("https://www.roblox.com/games/124659388578779/FUNK-TROLL-TOWER")
       else
           Rayfield:Notify({
               Title = "Missing Exploit Function",
               Content = "Missing Exploit Function: setclipboard()",
               Duration = 5,
               Image = 4483362458,
           })
       end
   end,
})

local Section17 = Tab7:CreateSection("Trolling (Target Section)")
local Paragraph3 = Tab7:CreateParagraph({Title = "Tutorial", Content = "Click On The Troll in the game and then do kill or kick etc."})

local Button = Tab7:CreateButton({
   Name = "Kill",
   Callback = function()
       buy(3416135763)
   end,
})

local Button = Tab7:CreateButton({
   Name = "Explode",
   Callback = function()
       buy(3410492119)
   end,
})

local Button = Tab7:CreateButton({
   Name = "Nuke",
   Callback = function()
       buy(3416135976)
   end,
})

local Button = Tab7:CreateButton({
   Name = "Freeze",
   Callback = function()
       buy(3416135132)
   end,
})

local Button = Tab7:CreateButton({
   Name = "Jumpscare",
   Callback = function()
       buy(3416135625)
   end,
})

local Button = Tab7:CreateButton({
   Name = "Fart",
   Callback = function()
       buy(3416134919)
   end,
})

--[[Tab 8]]--

local Section18 = Tab8:CreateSection("Game")

local Button = Tab8:CreateButton({
   Name = "Copy Game Link",
   Callback = function()
       if setclipboard then
           setclipboard("https://www.roblox.com/games/134391585179071/Trap-Troll-Tower")
       else
           Rayfield:Notify({
               Title = "Missing Exploit Function",
               Content = "Missing Exploit Function: setclipboard()",
               Duration = 5,
               Image = 4483362458,
           })
       end
   end,
})

local Section29 = Tab8:CreateSection("Trolling (All Section)")

local Button = Tab8:CreateButton({
   Name = "Kill All",
   Callback = function()
       buy2(3355021474)
   end,
})

local Button = Tab8:CreateButton({
   Name = "Fling All",
   Callback = function()
       buy2(3355022329)
   end,
})

local Button = Tab8:CreateButton({
   Name = "Jumpscare All",
   Callback = function()
       buy2(3355023311)
   end,
})

local Button = Tab8:CreateButton({
   Name = "Ice All",
   Callback = function()
       buy2(3355022990)
   end,
})

local Button = Tab8:CreateButton({
   Name = "Fire All",
   Callback = function()
       buy2(3355021734)
   end,
})

local Button = Tab8:CreateButton({
   Name = "Slow All",
   Callback = function()
       buy2(3355023965)
   end,
})

local Button = Tab8:CreateButton({
   Name = "Kick All",
   Callback = function()
       buy2(3355023624)
   end,
})

local Section20 = Tab8:CreateSection("Trolling (Target Section)")

local Input = Tab8:CreateInput({
    Name = "Target",
    CurrentValue = "",
    PlaceholderText = "Input Player Name",
    RemoveTextAfterFocusLost = false,
    Flag = "Input1",
    Callback = function(Text)
        local t = getp(Text)

        local args = {
            [1] = t.Name
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("StoreTargetTROLL", 9e9):FireServer(unpack(args))
    end,
})

local Button = Tab8:CreateButton({
    Name = "Kill",
    Callback = function()
        buy(3355021474)
    end,
})

local Button = Tab8:CreateButton({
   Name = "Fling",
   Callback = function()
       buy(3355022329)
   end,
})

local Button = Tab8:CreateButton({
   Name = "Jumpscare",
   Callback = function()
       buy(3355023311)
   end,
})

local Button = Tab8:CreateButton({
   Name = "Ice",
   Callback = function()
       buy(3355022990)
   end,
})

local Button = Tab8:CreateButton({
   Name = "Fire",
   Callback = function()
       buy(3355021734)
   end,
})

local Button = Tab8:CreateButton({
   Name = "Slow",
   Callback = function()
       buy(3355023965)
   end,
})

local Button = Tab8:CreateButton({
   Name = "Kick",
   Callback = function()
       buy(3355023624)
   end,
})

--[[Tab 10]]--

local Section92 = Tab10:CreateSection("Game")

local Button = Tab10:CreateButton({
   Name = "Copy Game Link",
   Callback = function()
       if setclipboard then
           setclipboard("https://www.roblox.com/share?code=c6862fbe9c707c4c815181c87e74b2b0&type=ExperienceDetails&stamp=1763404344588")
       else
           Rayfield:Notify({
               Title = "Missing Exploit Function",
               Content = "Missing Exploit Function: setclipboard()",
               Duration = 5,
               Image = 4483362458,
           })
       end
   end,
})

local Section309 = Tab10:CreateSection("Trolling (Target Section)")
local Paragraph56 = Tab10:CreateParagraph({Title = "Tutorial", Content = "Click On The Troll in the game and then do kill or kick etc."})

local Button = Tab10:CreateButton({
   Name = "Nuke",
   Callback = function()
       buy(1195167231)
   end,
})

local Button = Tab10:CreateButton({
   Name = "Kill",
   Callback = function()
       buy(2246166911)
   end,
})

local Button = Tab10:CreateButton({
   Name = "Explode",
   Callback = function()
       buy(2246177947)
   end,
})

local Button = Tab10:CreateButton({
   Name = "Fling",
   Callback = function()
       buy(2246193411)
   end,
})

local Button = Tab10:CreateButton({
   Name = "Jumpscare",
   Callback = function()
       buy(2246159482)
   end,
})

local Button = Tab10:CreateButton({
   Name = "Flashbang",
   Callback = function()
       buy(2246152964)
   end,
})

local Button = Tab10:CreateButton({
   Name = "Ice",
   Callback = function()
       buy(2246171902)
   end,
})

local Button = Tab10:CreateButton({
   Name = "Kick",
   Callback = function()
       buy(2246189043)
   end,
})

--[[Tab 999]]-- 

local Paragraph4 = Tab999:CreateParagraph({Title = "Tutorial", Content = "join a game u want and buy products for free from here (This may don't work all on all the games)"})
local Label = Tab999:CreateLabel("View Products", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local prdcs = getproducts()
local info = prdcs:GetCurrentPage()

for _, inf in pairs(info) do
    Tab999:CreateButton({
        Name = "Name: " .. inf.Name .. ", Id: " .. tostring(inf.ProductId) .. " - Click To Buy & Copy",
        Callback = function()
            buy(inf.ProductId)
            if setclipboard then
                setclipboard(tostring(inf.ProductId) .. " - " .. inf.Name)
            end
        end,
    })
end

local Label2 = Tab999:CreateLabel("End Off The Products", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

--[[Tab 99]]--

local Paragraph5 = Tab99:CreateParagraph({Title = "Tutorial", Content = "join a game u want and put the gamepass id (This may don't work all on all the games)"})

local id = ""

local Input = Tab99:CreateInput({
   Name = "Gamepass Id",
   CurrentValue = "",
   PlaceholderText = "Input Id",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
       id = Text
   end,
})

local Button = Tab99:CreateButton({
   Name = "Get The Gamepass",
   Callback = function()
       passb(id)
   end,
})

--[[Tab 9]]--

local Paragraph6 = Tab9:CreateParagraph({Title = "Tutorial", Content = "join a game u want and press on the get all badges (This may don't work all on all the games)"})

local id2 = ""

local Input = Tab9:CreateInput({
   Name = "Badge Id",
   CurrentValue = "",
   PlaceholderText = "Input Id",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
       id2 = Text
   end,
})

local Button = Tab9:CreateButton({
   Name = "Get The Badge",
   Callback = function()
       award(id2)
   end,
})
