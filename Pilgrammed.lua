local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("vamp hub", BloodTheme)

  --Main
  local Main = Window:NewTab("Main")
  local Mainsection = Main:NewSection("Auto")

  Mainsection:NewToggle("Toggle Auto Deposit", "Turns auto deposit on or off", function(state)
if state then
     _G.autoTap = true
    while _G.autoTap == true do
      local args = {          [1] = true,
          [2] = 1
      }
      
      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Bank"):InvokeServer(unpack(args))
      
        wait()
      end
    else
      _G.autoTap = false
      while _G.autoTap == true do
        local args = {
          [1] = true,
          [2] = 1
        }
      
       game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Bank"):InvokeServer(unpack(args))
      end
  end
end)

Mainsection:NewSlider("Withdraw Money", "Withdraws money from bank", 1000, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
  local args = {
    [1] = false,
    [2] = 0.06939625260235947
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Bank"):InvokeServer(unpack(args))
wait()
end)

Mainsection:NewButton("TP To Chests", "Tab To TP To Chest (Can't turn off because im retarded)", function() --Make Turn Off Later
  local Player = game.Players.LocalPlayer
  local UserInputService = game:GetService("UserInputService")
  local Character = Player.Character
  local Key = "Tab" -- change this to wtv
  
  while true do 
      wait(0.2)
      if UserInputService:IsKeyDown(Enum.KeyCode[Key]) then
      for i,v in pairs(game.Workspace.Chests:GetDescendants()) do
          if v.Name == "Wood" then
             Character.HumanoidRootPart.CFrame = v.CFrame 
          end
      end
      end
  end
end)
--Craft
local Main = Window:NewTab("Craft")
local Mainsection = Main:NewSection("Bronze Items")

Mainsection:NewButton("Bronze (2 Copper 1 Tin)", "Makes Bronze", function()
        local args = {
          [1] = "Bronze"
      }

      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
    end)

    Mainsection:NewButton("Bronze Sword (40 Gold 6 Bronze)", "Makes Bronze Sword", function()
      local args = {
        [1] = "Bronze Sword"
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Mainsection:NewButton("Bronze Pickaxe (40 Gold 6 Bronze)", "Makes Bronze Pickaxe", function()
    local args = {
      [1] = "Bronze Pickaxe"
  }

  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Mainsection:NewButton("Bronze Greatsword (80 Gold 9 Bronze)", "Makes Bronze Greatsword", function()
  local args = {
    [1] = "Bronze Greatsword"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

local Mainsection = Main:NewSection("Iron Items")

Mainsection:NewButton("Iron Sword (200 Gold 8 Iron)", "Makes Iron Sword", function()
  local args = {
    [1] = "Iron Sword"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Mainsection:NewButton("Iron Pickaxe (200 Gold 8 Iron)", "Makes Iron Pickaxe", function()
  local args = {
    [1] = "Iron Pickaxe"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Mainsection:NewButton("Iron Greatsword (300 Gold 12 Iron)", "Makes Iron Greatsword", function()
  local args = {
    [1] = "Iron Greatsword"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Mainsection:NewButton("Iron Spear (200 Gold 10 Iron)", "Makes Iron Spear", function()
  local args = {
    [1] = "Iron Spear"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Mainsection:NewButton("Iron Battleaxe (300 Gold 10 Iron)", "Makes Iron Battleaxe", function()
  local args = {
    [1] = "Iron Battleaxe "
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

local Mainsection = Main:NewSection("Demetal Items")

Mainsection:NewButton("Demetal Sword (400 Gold 6 Demetal)", "Makes Demetal Sword", function()
  local args = {
    [1] = "Demetal Sword "
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Mainsection:NewButton("Demetal Maul (450 Gold 10 Demetal)", "Makes Demetal Maul", function()
  local args = {
    [1] = "Demetal Maul "
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Mainsection:NewButton("Demetal Greatbow (500 Gold 12 Demetal 8 Sulfur)", "Makes Demetal Greatbow", function()
  local args = {
    [1] = "Demetal Greatbow "
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Mainsection:NewButton("Demetal Bullets (400 Gold 4 Demetal 1 Fiery Stone)", "Makes Demetal Bullets", function()
  local args = {
    [1] = "Demetal Bullets "
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

  --mirror
  local Main = Window:NewTab("Mirrors")
  local Mainsection = Main:NewSection("Mirrors")

  Mainsection:NewButton("Desert Mirror TP", "TP To Mirror)", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(Vector3.new(918.79443359375,133.9999542236328,-2624.743896484375))
    end)

    Mainsection:NewButton("Plains Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(Vector3.new(859.3885498046875,9.000027656555176,-364.5342712402344))
    end)

    Mainsection:NewButton("Volcano Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(Vector3.new(1150.7587890625,160.999996948242188,-3886.590576171875))
    end)

    Mainsection:NewButton("Mountain Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(Vector3.new(1259.353515625,262.9999084472656,105.18193054199219))
    end)

    Mainsection:NewButton("Cloud Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(Vector3.new(679.8447265625,553.3715209960938,2325.120849609375))
    end)

    Mainsection:NewButton("Savannah Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(1752.376220703125,24.141382217407227,-1303.8511962890625)
    end)

    Mainsection:NewButton("Swamp Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(544.02783203125,33.14137649536133,-1692.1329345703125)
    end)

    Mainsection:NewButton("Forgotten Village Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(5618.1298828125,-196.79844665527344,2086.739013671875)
    end)

    Mainsection:NewButton("Condemned Passage Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(4744.55810546875,-387.994140625,1153.5384521484375)
    end)

    Mainsection:NewButton("Forest", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(-203.2915496826172,132.815673828125,-768.7633056640625)
    end)

    Mainsection:NewButton("Big Bay Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(2038.7745361328125,-20.415746688842773,-904.406004849375)
    end)
    
    Mainsection:NewButton("Observatory Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(-2528.82373046875,58.94717788696289,-2871.49365234375)
    end)