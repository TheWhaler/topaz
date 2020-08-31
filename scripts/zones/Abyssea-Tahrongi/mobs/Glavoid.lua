-----------------------------------
-- Area: Abyssea - Tahrongi
--   NM: Glavoid
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    if (math.random(1, 100) >= 70) then
        player:addKeyItem(tpz.ki.CHIPPED_SANDWORM_TOOTH)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.CHIPPED_SANDWORM_TOOTH)
    end
end