if game.PlaceId == 16714905773 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "tai's RNG Fucker", HidePremium = false, SaveConfig = false, ConfigFolder = "Orion"})
     
    -- Tabs
    local TrollTab = Window:MakeTab({
        Name = "Troll",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    local playerTab = Window:MakeTab({
        Name = "Player",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    --Buttons
    TrollTab:AddButton({
        Name = "Give inf luck to everyone",
        Callback = function()
            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local ohString2 = "1000000000"
            
            for _, player in ipairs(Players:GetPlayers()) do
                ReplicatedStorage.Remotes.ApplyLuck:FireServer(player, ohString2)
            end
          end    
    })
    
    TrollTab:AddButton({
        Name = "Make everyone have -9e money",
        Callback = function()
            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local ohString2 = "99999999999999999999999999999999999999"
            
            for _, player in ipairs(Players:GetPlayers()) do
                ReplicatedStorage.Remotes.ApplyCoins:FireServer(player, ohString2)
            end
          end    
    })

    TrollTab:AddButton({
        Name = "spam change the weather",
        Callback = function()
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local ohString1 = "Null"
            local ohString2 = "1"
            
            while true do
                local WeatherConfigs = ReplicatedStorage.WeatherConfigs:GetChildren()
            
                for _, weatherConfig in ipairs(WeatherConfigs) do
                    ReplicatedStorage.Remotes.ApplyWeather:FireServer(weatherConfig.Name, ohString2)
                end
            
                wait(1) -- Adjust the wait time according to your preference
            end            
          end    
    })


    TrollTab:AddButton({
        Name = "Disable rolling for everyone",
        Callback = function()
            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local ohString2 = "0"
            
            for _, player in ipairs(Players:GetPlayers()) do
                ReplicatedStorage.Remotes.ApplyLuck:FireServer(player, ohString2)
            end
          end    
    })
    
    playerTab:AddButton({
        Name = "give luck just to yourself",
        Callback = function()
            local ohInstance1 = game:GetService("Players").LocalPlayer
            local ohString2 = "10000000000"
            
            game:GetService("ReplicatedStorage").Remotes.ApplyLuck:FireServer(ohInstance1, ohString2)
          end    
    })

    playerTab:AddButton({
        Name = "give yourself admin aura",
        Callback = function()
            local ohInstance1 = game:GetService("ReplicatedStorage").Auras.Admin

            game:GetService("ReplicatedStorage").Remotes.AuraEquip:FireServer(ohInstance1)
          end    
    })

    playerTab:AddButton({
        Name = "give yourself sigma dev aura",
        Callback = function()
            local ohInstance1 = game:GetService("ReplicatedStorage").Auras.sigma

            game:GetService("ReplicatedStorage").Remotes.AuraEquip:FireServer(ohInstance1)
          end    
    })
end
OrionLib:init()
