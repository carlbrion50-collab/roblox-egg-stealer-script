-- ================================================
-- ROBLOX EGG STEALER - ADVANCED SYSTEM
-- Main Loader Module
-- ================================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local EggStealer = {}
EggStealer.Config = {
    AutoSteal = false,
    AntiTrap = true,
    AntiHit = true,
    AntiAGDOL = true,
    GuardEscort = true,
    StealRange = 15,
    StealHoldTime = 0.8,
    GuardSpeed = 50,
    SafeZoneRadius = 30,
}

EggStealer.Player = Players.LocalPlayer
EggStealer.Character = EggStealer.Player.Character or EggStealer.Player.CharacterAdded:Wait()
EggStealer.Humanoid = EggStealer.Character:WaitForChild("Humanoid")
EggStealer.RootPart = EggStealer.Character:WaitForChild("HumanoidRootPart")

EggStealer.State = {
    Stealing = false,
    InSafeZone = false,
    Health = EggStealer.Humanoid.Health,
    LastTrapTime = 0,
}

-- ================================================
-- INITIALIZATION
-- ================================================

print("[EggStealer] System initialized...")
print("[EggStealer] Press 'P' to open control panel")
print("[EggStealer] Press 'T' to toggle auto-steal")

return EggStealer
