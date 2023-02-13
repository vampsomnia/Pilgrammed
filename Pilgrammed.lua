local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/cypherdh/VanisUILIB/main/.gitignore'))()
local Window = library:CreateWindow("vamp hub", "1.0", 10044538000)

  --Main
  local Tab = Window:CreateTab("Main")
  local Page = Tab:CreateFrame("Auto")

  Toggle = Page:CreateToggle("Auto Deposit", "Auto Deposits Gold ", function(state)
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
Toggle = Page:CreateToggle("Withdraws Gold", "Withdraws Gold From Bank", function(state)
    if state then
        local args = {
            [1] = false,
            [2] = 0.06939625260235947
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Bank"):InvokeServer(unpack(args))
        wait()
     end
    end)    
    Toggle = Page:CreateToggle("TP To Chests", "Click Tab To TP To Chests", function(state) --Make Turn Off Later
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
local Page = Tab:CreateFrame("Craftable")

Button = Page:CreateButton("Bronze ", "2 Copper 1 Tin", function()
        local args = {
          [1] = "Bronze"
      }

      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
    end)

    Button = Page:CreateButton("Bronze Sword ", "40 Gold 6 Bronze", function()
      local args = {
        [1] = "Bronze Sword"
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Bronze Greatsword ", "80 Gold 9 Bronze", function()
  local args = {
    [1] = "Bronze Greatsword"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Button = Page:CreateButton("Iron Sword ", "200 Gold 8 Iron", function()
  local args = {
    [1] = "Iron Sword"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Button = Page:CreateButton("Iron Greatsword ", "300 Gold 12 Iron", function()
  local args = {
    [1] = "Iron Greatsword"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Button = Page:CreateButton("Iron Spear ", "200 Gold 10 Iron", function()
  local args = {
    [1] = "Iron Spear"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Button = Page:CreateButton("Iron Battleaxe ", "300 Gold 10 Iron", function()
  local args = {
    [1] = "Iron Battleaxe "
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Button = Page:CreateButton("Demetal Sword ", "400 Gold 6 Demetal", function()
  local args = {
    [1] = "Demetal Sword "
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Button = Page:CreateButton("Demetal Maul ", "450 Gold 10 Demetal", function()
  local args = {
    [1] = "Demetal Maul "
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
end)

Button = Page:CreateButton("Mithril Sword ", "400 Gold 6 Mithril", function()
    local args = {
      [1] = "Mithril Sword "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Mithril Spear ", "450 Gold 10 Mithril", function()
    local args = {
      [1] = "Mithril Spear "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

--Guns

  local Page = Tab:CreateFrame("Buyable Guns")

  Button = Page:CreateButton("Six Shooter ", "1000 Gold 1 Flintlock 1 Gunpowder 5 Iron", function()
    local args = {
      [1] = "Six Shooter "
  }

  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Cannon ", "1000 Gold 1 Blundervyss 1 Gunpowder 1 Demetal Bullets", function()
    local args = {
      [1] = "Cannon "
  }

  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Air Gun ", "600 Gold 1 Bluderbuss 1 Air Powder 12 Brass ", function()
    local args = {
      [1] = "Air Gun "
  }

  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Squid Blaster ", "1000 Gold 1 Revolver 1 Mini Squid 1 Volatile Oil ", function()
    local args = {
      [1] = "Squid Blaster "
  }

  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Blunderbuss ", "600 Gold 8 Brass 8 Iron 12 Sulfur", function()
    local args = {
      [1] = "Blunderbuss "
  }

  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

--Bows 

local Page = Tab:CreateFrame("Buyable Bows")

Button = Page:CreateButton("Wooden Bow ", "100 Gold ", function()
    local args = {
      [1] = "Wooden Bow "
  }

  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Demetal Greatbow ", "500 Gold 12 Demetal 8 Sulfur ", function()
    local args = {
      [1] = "Demetal Greatbow "
  }

  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  local Page = Tab:CreateFrame("Pickaxe")

  Button = Page:CreateButton("Bronze Pickaxe ", "40 Gold 6 Bronze (Click To Load Full Menu Deposit All Gold) ", function()

local args = {
    [1] = "Bronze Pickaxe"
}

game:GetService("ReplicatedStorage").Remotes.Buy:InvokeServer(unpack(args))


Button = Page:CreateButton("Iron Pickaxe ", "200 Gold 8 Iron ", function()

local args = {
    [1] = "Iron Pickaxe"
}

game:GetService("ReplicatedStorage").Remotes.Buy:InvokeServer(unpack(args))

  end)

  Button = Page:CreateButton("Gemstone Pickaxe ", "500 Gold Iron Pickaxe 5 Ruby 5 Emerald 5 Saphire ", function()
    local args = {
      [1] = "Gemstone Pickaxe "
  }

  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  --ranged amo
  local Page = Tab:CreateFrame("Ranged Ammo")

  Button = Page:CreateButton("Regular Arrows x20 ", "5 Gold", function()
    local args = {
      [1] = "Arrow "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Fire Arrows x25 ", "25 Arrow 1 Demetal 1 Magma Slime", function()
    local args = {
      [1] = "Fire Arrow "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Flare Arrows x10 ", "10 Fire Arrow 4 Magma 1 Slime", function()
    local args = {
      [1] = "Flare Arrow "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Ice Arrows x25 ", "25 Arrow 1 Mithril", function()
    local args = {
      [1] = "Ice Arrow "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Scrap Arrows x10 ", "10 Arrow 1 Scrap Metal", function()
    local args = {
      [1] = "Scrap Arrow "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Shock Arrows x10 ", "10 Arrow 1 Copper", function()
    local args = {
      [1] = "Shock Arrow "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Explosive Arrows x5 ", "5 Fire Arrow 1 Sulfur", function()
    local args = {
      [1] = "Explosive Arrow "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Piercing Bullets ", "150 Gold 8 Iron 4 Sulfur", function()
    local args = {
      [1] = "Piercing Bullets "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Pistol Pop Pellets ", "250 Gold 1 Gunpowder 10 Limes 10 Scrap ", function()
    local args = {
      [1] = "Pistol Pop Pellets "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Demetal Bullets ", "400 Gold 4 Demetal 7 Fiery Stone ", function()
    local args = {
      [1] = "Demetal Bullets "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Venom Bullets ", "1500 Gold 1 Piercing Bullets 1 Venom Gland ", function()
    local args = {
      [1] = "Venom Bullets "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  Button = Page:CreateButton("Mana Bullets ", "1000 Gold 1 Piercing Bullets 25 Arcane Essence ", function()
    local args = {
      [1] = "Mana Bullets "
  }
  
  game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Buy"):InvokeServer(unpack(args))
  end)

  --mirror
  local Page = Tab:CreateFrame("Mirrors")

  Button = Page:CreateButton("Desert Mirror TP", "TP To Mirror)", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(Vector3.new(918.79443359375,133.9999542236328,-2624.743896484375))
    end)

    Button = Page:CreateButton("Plains Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(Vector3.new(859.3885498046875,9.000027656555176,-364.5342712402344))
    end)

    Button = Page:CreateButton("Volcano Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(Vector3.new(1150.7587890625,160.999996948242188,-3886.590576171875))
    end)

    Button = Page:CreateButton("Mountain Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(Vector3.new(1259.353515625,262.9999084472656,105.18193054199219))
    end)

    Button = Page:CreateButton("Cloud Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(Vector3.new(679.8447265625,553.3715209960938,2325.120849609375))
    end)

    Button = Page:CreateButton("Savannah Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(1752.376220703125,24.141382217407227,-1303.8511962890625)
    end)

    Button = Page:CreateButton("Swamp Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(544.02783203125,33.14137649536133,-1692.1329345703125)
    end)

    Button = Page:CreateButton("Forgotten Village Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(5618.1298828125,-196.79844665527344,2086.739013671875)
    end)

    Button = Page:CreateButton("Condemned Passage Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(4744.55810546875,-387.994140625,1153.5384521484375)
    end)

    Button = Page:CreateButton("Forest", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(-203.2915496826172,132.815673828125,-768.7633056640625)
    end)

    Button = Page:CreateButton("Big Bay Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(2038.7745361328125,-20.415746688842773,-904.406004849375)
    end)
    
    Button = Page:CreateButton("Observatory Mirror TP", "TP To Mirror)", function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(-2528.82373046875,58.94717788696289,-2871.49365234375)
    end)

    --Old Fart

    local Page = Tab:CreateFrame("Old Fart Buttons")

    Button = Page:CreateButton("Old Fart Button #1", "TP To Old Fart Button)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(-958.1309204101562,15.141385078430176,-1646.38330078125)
      end)

      Button = Page:CreateButton("Old Fart Button #2", "TP To Old Fart Button)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(4162.52978515625,-24.46598243713379,-1177.4771728515625)
      end)

      Button = Page:CreateButton("Old Fart Button #3", "TP To Old Fart Button)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(1400.0072021484375,836.6737670898438,4292.0546875)
      end)
--Boss TP
local Page = Tab:CreateFrame("Boss Teleport")

    Button = Page:CreateButton("Big Iron", "TP To Big Iron Button)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(2447.100634735325,-14.500001907348633,-3125.677734375)
      end)

      Button = Page:CreateButton("Granny", "TP To Granny)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(1397.5523681640625,23.99999237060547,-3551.662841796875)
      end)

      Button = Page:CreateButton("Ice King", "TP To Ice King)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(1364.26220703125,463.9999084472656,209.8992319921875)
      end)

      Button = Page:CreateButton("Prism Golem", "TP To Prism Golem)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(716.32861328125,-256.3564147949219,60.692543029785156)
      end)

      Button = Page:CreateButton("Thief King", "TP To Thief King)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(712.3245849609375,-20.0000057220459,201.687744140625)
      end)

      Button = Page:CreateButton("Big Ass Slime", "TP To Big Slime Thingy)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(395.7848205566406,-92.0000228881836,-270.5993347167969)
      end)

      Button = Page:CreateButton("Archmage", "Rogue Lineage Dev So Real)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(-965.8036499023439,74.9999771118164,1734.494140625)
      end)

      Button = Page:CreateButton("Patris", "Fucking Dog)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(-3126.954833984375,-21.224761962890625,-4385.7275390625)
      end)

      Button = Page:CreateButton("King Sandpod", "Big Bug)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(159.18002319335938,-24.0000057220459,-2206.61669921875)
      end)

      Button = Page:CreateButton("The Skeleton", "Never Spawns)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(-217.2537689208944,-26.57724380493164,-4360.38427734375)
      end)

      Button = Page:CreateButton("Sailord", "Goodluck..)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(1913.7789306640625-10.85861396785508,-1384.8013916015625)
      end)

      Button = Page:CreateButton("Viperhead", "Snakey boy)", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=   CFrame.new(481.1592712402344,-100.0000228881836,-2351.052979515625)
      end)

    end)
