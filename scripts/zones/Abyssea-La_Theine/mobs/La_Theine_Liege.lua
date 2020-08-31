-----------------------------------
-- Area: Abyssea - La Theine
--   NM: La Theine Liege
-----------------------------------
require("scripts/globals/abyssea")
require("scripts/globals/keyitems")
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
-----------------------------------

function onMobInitialize(mob)
end

function onMobDeath(mob, player, isKiller)
    if (math.random(1, 100) >= 70) then
        player:addKeyItem(tpz.ki.PELLUCID_FLY_EYE)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.PELLUCID_FLY_EYE)
    end
end