-----------------------------------
-- Area: Dynamis - Jeuno
--  Mob: Vanguard Pitfighter
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
    tpz.mob.phOnDespawn(mob, ID.mob.BOOTRIX_JAGGEDELBOW_PH, 10, 1200) -- 20 minutes
	tpz.mob.phOnDespawn(mob, ID.mob.KIKKLIX_LONGLEGS_PH, 10, 1200) -- 20 minutes
	tpz.mob.phOnDespawn(mob, ID.mob.JABKIX_PIGEONPECS_PH, 10, 1200) -- 20 minutes
end
