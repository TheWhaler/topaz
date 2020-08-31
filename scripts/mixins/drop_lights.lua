require("scripts/globals/moblights")
require("scripts/globals/abyssea")
require("scripts/globals/mixins")
require("scripts/globals/status")

g_mixins = g_mixins or {}

---------------------------------------------------------
-- Drops Lights
---------------------------------------------------------
g_mixins.drop_lights = function(mob)
    tpz.abyssea_mob.AddDeathListeners(mob);
end

return g_mixins.drop_lights