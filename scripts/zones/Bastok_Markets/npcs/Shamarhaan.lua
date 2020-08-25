-----------------------------------
-- Area: Bastok Markets
--  NPC: Shamarhaan
-- Type: Quest Starter
-- Involved in quest: No Strings Attached
-- !pos -285.382 -13.021 -84.743 235
-----------------------------------
require("scripts/globals/settings")
local ID = require("scripts/zones/Bastok_Markets/IDs")
require("scripts/globals/quests")
require("scripts/globals/keyitems")
require("scripts/globals/status")
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    local NoStringsAttached = player:getQuestStatus(AHT_URHGAN, tpz.quest.id.ahtUrhgan.NO_STRINGS_ATTACHED)
    local NoStringsAttachedProgress = player:getCharVar("NoStringsAttachedProgress")
	local PuppetMasterBlues = player:getQuestStatus(AHT_URHGAN, tpz.quest.id.ahtUrhgan.PUPPETMASTER_BLUES)
	local PuppetMasterBluesProgress = player:getCharVar("PuppetmasterBluesProgress")

    if (player:getMainLvl() >= ADVANCED_JOB_LEVEL and NoStringsAttached == QUEST_AVAILABLE) then
        player:startEvent(434) -- initial cs to start the quest, go and see Iruki-Waraki at Whitegate
    elseif (NoStringsAttachedProgress == 1) then
        player:startEvent(435) -- reminder to go see Iruki-Waraki at Whitegate
	elseif (PuppetMasterBluesProgress == 1) then
		player:startEvent(437, 1, 0, 0, 0, 0, 0, 0, 0)
    else
        player:startEvent(433)
    end
end

function onEventUpdate(player, csid, option)
	player:PrintToPlayer(option)
end

function onEventFinish(player, csid, option)
	player:PrintToPlayer(option)
    if (csid == 434) then
        player:setCharVar("NoStringsAttachedProgress", 1)
        player:addQuest(AHT_URHGAN, tpz.quest.id.ahtUrhgan.NO_STRINGS_ATTACHED)
    end
	
	if (csid == 437) then --todo detect option
		player:addKeyItem(tpz.ki.VALKENGS_MEMORY_CHIP)
		player:setCharVar("PuppetmasterBluesProgress", 2)
		player:messageSpecial(ID.text.KEYITEM_OBTAINED, tpz.ki.VALKENGS_MEMORY_CHIP)
	end
end
