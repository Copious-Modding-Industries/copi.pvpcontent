local actions_to_edit = {

    ["HOMING"] = {
		action = function()
            if not c.extra_entities:find("mods/copi.pvpcontent/files/entities/misc/homing_manager.xml,") then
                c.extra_entities = c.extra_entities .. "mods/copi.pvpcontent/files/entities/misc/homing_manager.xml,data/entities/particles/tinyspark_white.xml,"
            end
			c.extra_entities = c.extra_entities .. "data/entities/misc/homing.xml,"
			draw_actions( 1, true )
		end,
    },

    ["HOMING_SHORT"] = {
		action 		= function()
            if not c.extra_entities:find("mods/copi.pvpcontent/files/entities/misc/homing_manager.xml,") then
                c.extra_entities = c.extra_entities .. "mods/copi.pvpcontent/files/entities/misc/homing_manager.xml,data/entities/particles/tinyspark_white.xml,"
            end
			c.extra_entities = c.extra_entities .. "data/entities/misc/homing_short.xml,"
			draw_actions( 1, true )
		end,
        
    },

    ["HOMING_ROTATE"] = {
		action 		= function()
            if not c.extra_entities:find("mods/copi.pvpcontent/files/entities/misc/homing_manager.xml,") then
                c.extra_entities = c.extra_entities .. "mods/copi.pvpcontent/files/entities/misc/homing_manager.xml,data/entities/particles/tinyspark_white.xml,"
            end
			c.extra_entities = c.extra_entities .. "data/entities/misc/homing_rotate.xml,"
			draw_actions( 1, true )
		end,
        
    },

    ["HOMING_ACCELERATING"] = {
		action 		= function()
            if not c.extra_entities:find("mods/copi.pvpcontent/files/entities/misc/homing_manager.xml,") then
                c.extra_entities = c.extra_entities .. "mods/copi.pvpcontent/files/entities/misc/homing_manager.xml,data/entities/particles/tinyspark_white.xml,"
            end
			c.extra_entities = c.extra_entities .. "data/entities/misc/homing_accelerating.xml,"
			draw_actions( 1, true )
		end,
        
    },

}

for i=1, #actions do
    if actions_to_edit[actions[i].id] ~= nil then
        for key, value in pairs(edit_contents) do
            actions[i][key] = value
        end
        break
    end
end

--[[
for actions_index = 1,#actions do
    for edit_id, edit_contents in pairs(actions_to_edit) do
        if actions[actions_index].id == edit_id then
            for key, value in pairs(edit_contents) do
                actions[actions_index][key] = value
            end
            actions_to_edit[edit_id] = nil
            break
        end
    end
end
]]