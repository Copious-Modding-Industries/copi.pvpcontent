function OnModPreInit() end
function OnModPostInit() end
function OnPlayerSpawned( player_entity ) end
function OnPlayerDied( player_entity ) end
function OnWorldInitialized() end
function OnWorldPreUpdate() end
function OnWorldPostUpdate() end
function OnBiomeConfigLoaded() end
function OnMagicNumbersAndWorldSeedInitialized() end
function OnPausedChanged( is_paused, is_inventory_pause ) end
function OnModSettingsChanged() end
function OnPausePreUpdate() end

local init = {
    gun_rework = function ()
        ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/copi.pvpcontent/files/scripts.gun/gun_edit.lua")
    end
}



function OnModInit()
    init.gun_rework()
end