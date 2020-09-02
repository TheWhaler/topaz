-----------------------------------
-- Area: Abyssea-Konschtat
--  NPC: Veridical Conflux #00
-- Aybssea Teleport NPC
-----------------------------------
package.loaded["scripts/globals/conflux"] = nil;
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/conflux");
require("scripts/globals/settings");
require("scripts/globals/teleports");
require("scripts/globals/quests");
require("scripts/zones/Abyssea-Konschtat/IDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	local csid, param1, param2, param3, param4, param5, param6, param7, param8 = startConflux(player,npc);
    player:startEvent(csid, param1, param2, param3, param4, param5, param6, param7, param8);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    player:updateEvent(1,0,0,0,0,0,0,0);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    finishConflux(player,csid,option);
end;