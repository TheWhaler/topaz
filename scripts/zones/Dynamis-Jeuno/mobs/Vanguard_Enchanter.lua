-----------------------------------
-- Area: Dynamis - Jeuno
--  Mob: Vanguard Enchanter
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
    tpz.mob.phOnDespawn(mob, ID.mob.JABBROX_GRANNYGUISE_PH, 10, 1200) -- 20 minutes
	tpz.mob.phOnDespawn(mob, ID.mob.GABBLOX_MAGPIETONGUE_PH, 10, 1200) -- 20 minutes
end
