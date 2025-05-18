-- MilkHub 🐄 Basic Loader
return function()
    local MilkHub = {}
    
    -- Create a simple window
    function MilkHub:CreateWindow(config)
        print("[MilkHub] 🐄 Loaded successfully!")
        
        -- Mock window functions (expand later)
        local window = {
            CreateTab = function(tabConfig)
                local tab = {
                    CreateSection = function(sectionConfig)
                        local section = {
                            CreateToggle = function(name, default, callback)
                                print("[Toggle] " .. name .. " set to:", default)
                                -- Just a placeholder; real UI would bind this to a keypress
                                return { 
                                    Update = function(newState) 
                                        callback(newState) 
                                    end 
                                }
                            end,
                            CreateButton = function(name, callback
