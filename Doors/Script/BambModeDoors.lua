local Template = loadstring(game:HttpGet("https://github.com/MuhXd/DoorSuff/blob/main/HardcoreTempate/TemplateCode.lua?raw=true"))()
-- Messages in a Table And Launches The Main Loader
Template.StartCode({'loading bamb mode...'})
wait(1)
Template.StartCode({'loaded!})
wait(1)
Template.StartCode({'made by bamb#2959})
--[[
WaitTime Is How Long it Takes to Spawn
DisableSeek Makes it Not Appear In Seek and DisableFigure Does The same Thing Just for Figure
If the Room Is More then RoomMax Then it Won't Spawn but If the Room is Less Then RoomMin Then it Won't Spawn
]]

Template.Loader({['WaitTime'] = 50,['DisableSeek'] = true,['DisableFigure'] = true,['RoomMax'] = 100,['RoomMin'] = 0},function()
	-- Your Spawner Code Here
	local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/Source.lua"))()

---====== Create entity ======---

local Impostor = Spawner.createEntity({
    CustomName = "Impostor",
    Model = "https://https://github.com/bamb421/bamb-mode/blob/main/Entities/Impostor.rbxm?raw=true", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
    Speed = 100,
    MoveDelay = 8,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    SpawnInFront = false,
    ShatterLights = true,
    FlickerLights = {
        Enabled = true,
        Duration = 4
    },
    Cycles = {
        Min = 1,
        Max = 1,
        Delay = 2
    },
    CamShake = {
        Enabled = true,
        Values = {1.5, 20, 0.1, 1},
        Range = 100
    },
    ResistCrucifix = false,
    BreakCrucifix = true,
    DeathMessage = {"Custom", "death", "message", "goes", "here."},
    IsCuriousLight = false
})

---====== Debug ======---

Impostor.Debug.OnEntitySpawned = function()
    print("Entity has spawned")
end
Impostor.Debug.OnEntityDespawned = function()
    print("Entity has despawned")
end

Impostor.Debug.OnEntityStartMoving = function()
    print("Entity started moving")
end

Impostor.Debug.OnEntityFinishedRebound = function()
    print("Entity finished rebound")
end

Impostor.Debug.OnEntityEnteredRoom = function(room)
    print("Entity entered room:", room)
end

Impostor.Debug.OnLookAtEntity = function()
    print("Player looking at entity")
end

Impostor.Debug.OnDeath = function()
    print("Player has died")
end

--[[
    NOTE: By overwriting 'OnUseCrucifix', the default crucifixion will be ignored and this function will be called instead

    Impostor.Debug.OnUseCrucifix = function()
        print("Custom crucifixion script here")
    end
]]--

---====== Run entity ======---

Spawner.runEntity(entity)