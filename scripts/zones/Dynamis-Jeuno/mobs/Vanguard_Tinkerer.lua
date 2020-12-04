-----------------------------------
-- Area: Dynamis - Jeuno
--  Mob: Vanguard Tinkerer
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
    tpz.mob.phOnDespawn(mob, ID.mob.TICKTOX_BEADYEYES_PH, 10, 1200) -- 20 minutes
	tpz.mob.phOnDespawn(mob, ID.mob.CLOKTIX_LONGNAIL_PH, 10, 1200) -- 20 minutes
	tpz.mob.phOnDespawn(mob, ID.mob.TYMEXOX_NINEFINGERS_PH, 10, 1200) -- 20 minutes
end
