require("scripts/globals/moblights")
require("scripts/globals/abyssea")
require("scripts/globals/mixins")
require("scripts/globals/status")

g_mixins = g_mixins or {}

---------------------------------------------------------
-- Drops Lights
---------------------------------------------------------
g_mixins.drop_lights = function(mob)
    mob:addListener("MAGIC_TAKE", "ABYSSEA_MAGIC_DEATH_CHECK", function(target, caster, spell)
        if target:getHP() <= 0 and target:getDeathType() == tpz.abyssea.deathType.NONE then
			target:setDeathType(tpz.abyssea.deathType.MAGICAL)
        end 
    end)

    mob:addListener("WEAPONSKILL_TAKE", "ABYSSEA_WS_DEATH_CHECK", function(target, user, wsid)
        local magicalWS =
        {
            19,20,30,33,34,36,37,47,50,51,58,74,76,97,98,107,113,114,130,
            131,132,133,139,146,147,148,149,160,161,172,177,178,179,180,
            186,187,188,189,192,208,217,218,220,
        }

        local wsType = tpz.abyssea.deathType.WS_PHYSICAL

        if target:getHP() <= 0  and target:getDeathType() == tpz.abyssea.deathType.NONE then
            for i = 1, #magicalWS do
                if wsid == magicalWS[i] then
                    wsType = tpz.abyssea.deathType.WS_MAGICAL
                    break
                end
            end
			target:setDeathType(wsType)
        end 
    end)

    mob:addListener("DEATH", "ABYSSEA_DEATH_LIGHTS_CHECK", function(mob, player)
		local deathType = mob:getDeathType()
		if deathType == tpz.abyssea.deathType.NONE then
			deathType = tpz.abyssea.deathType.PHYSICAL
		end
		
        tpz.abyssea_mob.DropLights(player, mob:getName(), deathType, mob)
    end)
end

return g_mixins.drop_lights