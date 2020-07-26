-----------------------------------
-- Zone: Abyssea-Attohwa
--  NPC: qm14 (???)
-- Spawns Smok
-- !pos -538.207 -6.640 -25.722 215
-----------------------------------
require("scripts/globals/abyssea")
-----------------------------------

function onTrade(player,npc,trade)
    tpz.abyssea.qmOnTrade(player,npc,trade)
end

function onTrigger(player,npc)
    tpz.abyssea.qmOnTrigger(player,npc)
end

function onEventUpdate(player,csid,option)
    tpz.abyssea.qmOnEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
    tpz.abyssea.qmOnEventFinish(player,csid,option)
end
