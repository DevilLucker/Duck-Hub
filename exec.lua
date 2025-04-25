--[[ Special Thanks to
Paulvoid for support with .lua and more...
Tungstrong for contributing ideas
]]
getgenv().UserConfig = {
    FPS                 = 10,

    RedeemCode = {"RELEASE", "THANKS", "LUCKY", "Easter", "Throwback"},

    ["Detector"] = {
        Enable = true,
        ["Name Needed"] = {"Holy Shock", "Cardinal Bunny"}, -- Blue background
        ["Rarity Needed"] = {
            {"Legendary", MinDifficult = 100000}, -- Yellow Background
            "Mythic",
            "Secret" -- Red Background
        }
    },

    ["Craft Potions"] = {
        Enable = true,
        MinGems = 20000,
        ["Potion Needed"] = {
            --{"Coins", Level = 5},
            --{"Speed", Level = 5},
            {"Lucky", Level = 5},
            {"Mythic", Level = 5}
        }
    },

    ["Mastery"] = {
        Pets = 15,
        Buffs = 15,
        Shops = 0
    },

    ["Enchant"] = {
        Enable = true,
        ["Rarity Needed"] = {
            {"Legendary", MinDifficult = 100000},
            "Mythic",
            "Secret"
        },
        ["Reroll Needed"] = {
            -- ["Gleaming"] = {MinLevel = 2, HigherLevels = true},
            -- ["Looter"] = {MinLevel = 3, HigherLevels = true},
            ["Team Up"] = {MinLevel = 5, HigherLevels = true}
        }
    },

    -- Automation Features
    ["Rifts"] = {
        AlwaysFindRifts = true,
        Targets = {"Throwback Egg", "Bunny Egg", "Pastel Egg", "Nightmare Egg", "Hell Egg", "Void Egg"},
        Luck = 10 -- Minimum luck required for a rift target to be considered
    },

    FindDuck = "Throwback Egg", -- Target egg for Priority 7 hatching

    -- Webhook Configuration
    ["Webhook"] = {
        Enable = true, -- Enable/disable pet hatch notification webhook
        Note = getgenv().DuckHook.Note, -- Note displayed on the webhook 
        URL = getgenv().DuckHook.URL, -- Replace with your URL
        Rarity = {
            -- "Common",
            -- "Unique",
            -- "Rare",
            -- "Epic",
            "Legendary",
            "Secret"
        }, -- General rarity filter
        Legendary = 100000, -- Threshold for Legendary (e.g., 100k = 1/100,000) - only send if chance >= threshold
    }
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/0cf205a620e81d1f3c3d3f75474ab32f.lua"))()
