-- MilkHub 🐄 Loader with Rayfield UI
return function()
    -- Load Rayfield
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
    
    local MilkHub = {}
    
    function MilkHub:CreateWindow(config)
        -- Initialize Rayfield
        Rayfield:LoadConfiguration() -- Optional (saves UI settings)
        
        -- Create the main window
        local Window = Rayfield:CreateWindow({
            Name = config.Name or "MilkHub 🐄",
            LoadingTitle = config.LoadingTitle or "Loading MilkHub...",
            LoadingSubtitle = config.LoadingSubtitle or "by YourName",
            ConfigurationSaving = config.ConfigurationSaving or {
                Enabled = true,
                FolderName = "MilkHub",
                FileName = "Config"
            },
            Discord = config.Discord or {
                Enabled = true,
                Invite = "discord.gg/milkhub",
                RememberJoins = true
            },
            KeySystem = config.KeySystem or false, -- Disable if using MilkMan123 bypass
            KeySettings = config.KeySettings or {
                Title = "MilkHub Key System",
                Subtitle = "Enter your key below",
                Note = "Join Discord for key (discord.gg/milkhub)",
                FileName = "MilkHubKey",
                SaveKey = true,
                GrabKeyFromSite = false,
                Key = "MilkMan123" -- Your static key
            }
        })
        
        -- Make sure the window has CreateTab
        return Window
    end
    
    return MilkHub
end
