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


    TrollTab:AddButton({
        Name = "Crash server",
        Callback = function()
            local ReplicatedStorage = game:GetService("ReplicatedStorage")

            while true do
                local Auras = ReplicatedStorage.Auras:GetChildren()
            
                for _, aura in ipairs(Auras) do
                    game:GetService("ReplicatedStorage").Remotes.AuraEquip:FireServer(aura)
                end
            
                wait(0.1) 
            end
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
