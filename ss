local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function copyCFrameToClipboard()
    local character = LocalPlayer.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            local cframe = humanoidRootPart.CFrame
            setclipboard(tostring(cframe))  -- Copy the CFrame to clipboard
            print("CFrame copied to clipboard:", cframe)
        else
            print("HumanoidRootPart not found")
        end
    else
        print("Character not found")
    end
end

-- Call the function directly if needed
copyCFrameToClipboard()
