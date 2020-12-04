-----------------------------------
-- Area: Dynamis - Jeuno
--  Mob: Vanguard Ronin
-----------------------------------
mixins =
{
    require("scripts/mixins/dynamis_beastmen"),
    require("scripts/mixins/job_special")
}
local ID = require("scripts/zones/Dynamis-Jeuno/IDs")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.WASABIX_CALLUSDIGIT_PH, 10, 1200) -- 20 minutes
end
