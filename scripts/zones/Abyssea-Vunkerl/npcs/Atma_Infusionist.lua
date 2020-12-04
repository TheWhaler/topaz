-----------------------------------
-- Zone: Abyssea - La-Theine
--  NPC: Atma Infusionist
-----------------------------------
local atma = require("scripts/globals/atma")


function onTrade(player,npc,trade)
	tpz.atma.onTrade(player, npc, trade)
end

function onTrigger(player,npc)
	tpz.atma.onTrigger(player,npc)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end
