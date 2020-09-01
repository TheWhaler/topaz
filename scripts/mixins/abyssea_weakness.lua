-- Dynamis procs mixin
-- Customization:

require("scripts/globals/mixins")
require("scripts/globals/abyssea")
require("scripts/globals/status")

g_mixins = g_mixins or {}

g_mixins.abyssea_weakness = function(mob)
		
	if mob:isNM() then
		mob:addListener("SPAWN", "ABYSSEA_WEAKNESS_SPAWN", function(mob)
			mob:setLocalVar("[CanProc]", "1")
			mob:setLocalVar("[RedWeakness]", tpz.abyssea.getNewRedWeakness(mob))
			mob:setLocalVar("[YellowWeakness]", tpz.abyssea.getNewYellowWeakness(mob))
			mob:setLocalVar("[BlueWeakness]", tpz.abyssea.getNewBlueWeakness(mob))
			mob:setLocalVar("[AbysseaRedProc]", 0)
			mob:setLocalVar("[AbysseaYellowProc]", 0)
			mob:setLocalVar("[AbysseaBlueProc]", 0)
		end)
		
		mob:addListener("MAGIC_START", "ABYSSEA_MAGIC_START_CANT_PROC", function(mob)
			mob:setLocalVar("[CanProc]", "0")
		end)
		
		mob:addListener("MAGIC_STATE_EXIT", "ABYSSEA_MAGIC_END_CAN_PROC", function(mob)
			mob:setLocalVar("[CanProc]", "1")
		end)
		
		mob:addListener("WEAPONSKILL_STATE_ENTER", "ABYSSEA_WEAPONSKILL_START_CANT_PROC", function(mob)
			mob:setLocalVar("[CanProc]", "0")
		end)
		
		mob:addListener("WEAPONSKILL_STATE_EXIT", "ABYSSEA_WEAPONSKILL_END_CAN_PROC", function(mob)
			mob:setLocalVar("[CanProc]", "1")
		end)
		
		mob:addListener("MAGIC_TAKE", "ABYSSEA_MAGIC_PROC_CHECK", function(target, caster, spell)
		
		end)

		mob:addListener("WEAPONSKILL_TAKE", "ABYSSEA_WS_PROC_CHECK", function(target, user, wsid)
			if target:getLocalVar("[CanProc]") == 1 then
				if wsid == target:getLocalVar("[RedWeakness]") then
					tpz.abyssea.procMonster(target, user, tpz.abyssea.triggerType.RED);
				end
			end
		end)
	end
end

return g_mixins.abyssea_weakness
