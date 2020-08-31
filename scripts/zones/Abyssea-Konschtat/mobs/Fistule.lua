-----------------------------------
-- Area: Abyssea - Konschtat
--   NM: Fistule
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    if (math.random(1, 100) >= 70) then
        player:addKeyItem(tpz.ki.TURBID_SLIME_OIL)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.TURBID_SLIME_OIL)
    end
end