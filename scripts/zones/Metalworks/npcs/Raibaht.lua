-----------------------------------
-- Area: Metalworks
--  NPC: Raibaht
-- Starts and Finishes Quest: Dark Legacy
-- Involved in Quest: The Usual, Riding on the Clouds
-- !pos -27 -10 -1 237
-----------------------------------
local ID = require("scripts/zones/Metalworks/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/settings")
require("scripts/globals/quests")
require("scripts/globals/status")
require("scripts/globals/utils")
-----------------------------------

neck_list = {10954,10953,10951,10955,10950,10952,10949,10948} -- List of crafting torques
test_items = {16479,16420,13752,4546,12545,12980,12427,17054} -- List of aritsan test items

function onTrade(player,npc,trade)
for i=0,7 do
	player:PrintToPlayer(test_items[i+1])
end
	local mLvl = player:getMainLvl();
    if (player:getQuestStatus(JEUNO,tpz.quest.id.jeuno.RIDING_ON_THE_CLOUDS) == QUEST_ACCEPTED and player:getCharVar("ridingOnTheClouds_2") == 7) then
        if (trade:hasItemQty(1127,1) and trade:getItemCount() == 1) then -- Trade Kindred seal
            player:setCharVar("ridingOnTheClouds_2",0);
            player:tradeComplete();
            player:addKeyItem(tpz.ki.SMILING_STONE);
            player:messageSpecial(ID.text.KEYITEM_OBTAINED,tpz.ki.SMILING_STONE);
        end
    end
	if (mLvl >= 70) and (player:getFreeSlotsCount() ~= 0) then
		local tradeMade = false
		for i=0,7 do
			local rank = player:getSkillRank(49 + i)
				if rank >= 7 then
					local getNeck = player:getEquipID(tpz.slot.NECK)
					local storecraft = 49 + i
						if getNeck == 10948 and storecraft == 49 then -- woodworking
                            local hasAllQauntities = true;
                            for j=0,7 do
                                if not trade:hasItemQty(test_items[j+1],1) then
                                    hasAllQauntities = false
                                    break
                                end
                            end
                            if (hasAllQauntities == true and trade:getItemCount() == 8) then
                                player:tradeComplete()
                                player:addItem(26406)
                                player:messageSpecial( ID.text.ITEM_OBTAINED, 26406)
								tradeMade = true
                            end
                        end
						if getNeck == 10949 and storecraft == 50 then --smithing
                            local hasAllQauntities = true;
                            for j=0,7 do
                                if not trade:hasItemQty(test_items[j+1],1) then
                                    hasAllQauntities = false
                                    break
                                end
                            end
                            if (hasAllQauntities == true and trade:getItemCount() == 8) then
                                player:tradeComplete()
                                player:addItem(26406)
                                player:messageSpecial( ID.text.ITEM_OBTAINED, 26406)
								tradeMade = true
                            end
                        end
						if getNeck == 10950 and storecraft == 51 then --goldsmithing
                            local hasAllQauntities = true;
                            for j=0,7 do
                                if not trade:hasItemQty(test_items[j+1],1) then
                                    hasAllQauntities = false
                                    break
                                end
                            end
                            if (hasAllQauntities == true and trade:getItemCount() == 8) then
                                player:tradeComplete()
                                player:addItem(26406)
                                player:messageSpecial( ID.text.ITEM_OBTAINED, 26406)
								tradeMade = true
                            end
                        end
						if getNeck == 10951 and storecraft == 52 then --clothcraft
                            local hasAllQauntities = true;
                            for j=0,7 do
                                if not trade:hasItemQuantity(test_items[j+1],1) then
                                    hasAllQauntities = false
                                    break
                                end
                            end
                            if (hasAllQauntities == true and trade:getItemCount() == 8) then
                                player:tradeComplete()
                                player:addItem(26406)
                                player:messageSpecial( ID.text.ITEM_OBTAINED, 26406)
								tradeMade = true
                            end
                        end
						if getNeck == 10952 and storecraft == 53 then --leathcrafting
                            local hasAllQauntities = true;
                            for j=0,7 do
                                if not trade:hasItemQuantity(test_items[j+1],1) then
                                    hasAllQauntities = false
                                    break
                                end
                            end
                            if (hasAllQauntities == true and trade:getItemCount() == 8) then
                                player:tradeComplete()
                                player:addItem(26406)
                                player:messageSpecial( ID.text.ITEM_OBTAINED, 26406)
								tradeMade = true
                            end
                        end
						if getNeck == 10953 and storecraft == 54 then --bonecrafting
                            local hasAllQauntities = true;
                            for j=0,7 do
                                if not trade:hasItemQuantity(test_items[j+1],1) then
                                    hasAllQauntities = false
                                    break
                                end
                            end
                            if (hasAllQauntities == true and trade:getItemCount() == 8) then
                                player:tradeComplete()
                                player:addItem(26406)
                                player:messageSpecial( ID.text.ITEM_OBTAINED, 26406)
								tradeMade = true
                            end
                        end
						if getNeck == 10954 and storecraft == 55 then --alchemy
                            local hasAllQauntities = true;
                            for j=0,7 do
                                if not trade:hasItemQuantity(test_items[j+1],1) then
                                    hasAllQauntities = false
                                    break
                                end
                            end
                            if (hasAllQauntities == true and trade:getItemCount() == 8) then
                                player:tradeComplete()
                                player:addItem(26406)
                                player:messageSpecial( ID.text.ITEM_OBTAINED, 26406)
								tradeMade = true
                            end
                        end
						if getNeck == 10955 and storecraft == 56 then --cooking
                            local hasAllQauntities = true;
                            for j=0,7 do
                                if not trade:hasItemQuantity(test_items[j+1],1) then
                                    hasAllQauntities = false
                                    break
                                end
                            end
                            if (hasAllQauntities == true and trade:getItemCount() == 8) then
                                player:tradeComplete()
                                player:addItem(26406)
                                player:messageSpecial( ID.text.ITEM_OBTAINED, 26406)
								tradeMade = true
                            end
                        end
				if tradeMade == true then
					break
				end
				end
			end
		end --checks all skills to be higher than artisan and job level above 70

end

function onTrigger(player, npc)

    local darkLegacy = player:getQuestStatus(BASTOK, tpz.quest.id.bastok.DARK_LEGACY)
    local mLvl = player:getMainLvl()
    local mJob = player:getMainJob()

    local WildcatBastok = player:getCharVar("WildcatBastok")

    if (player:getQuestStatus(BASTOK, tpz.quest.id.bastok.LURE_OF_THE_WILDCAT) == QUEST_ACCEPTED and not utils.mask.getBit(WildcatBastok, 5)) then
        player:startEvent(933)
    elseif (darkLegacy == QUEST_AVAILABLE and mJob == tpz.job.DRK and mLvl >= AF1_QUEST_LEVEL) then
        player:startEvent(751) -- Start Quest "Dark Legacy"
    elseif (player:hasKeyItem(tpz.ki.DARKSTEEL_FORMULA)) then
        player:startEvent(755) -- Finish Quest "Dark Legacy"
    elseif (player:hasKeyItem(tpz.ki.STEAMING_SHEEP_INVITATION) and player:getCharVar("TheUsual_Event") ~= 1) then
        player:startEvent(510)
    else
        player:startEvent(501)
    end

end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)

    if (csid == 510 and option == 0) then
        player:setCharVar("TheUsual_Event", 1)
    elseif (csid == 751) then
        player:addQuest(BASTOK, tpz.quest.id.bastok.DARK_LEGACY)
        player:setCharVar("darkLegacyCS", 1)
    elseif (csid == 755) then
        if (player:getFreeSlotsCount() == 0) then
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, 16798) -- Raven Scythe
        else
            player:delKeyItem(tpz.ki.DARKSTEEL_FORMULA);
            player:addItem(16798);
            player:messageSpecial(ID.text.ITEM_OBTAINED, 16798); -- Raven Scythe
            player:setCharVar("darkLegacyCS",0);
            player:addExp(2000*EXP_RATE);
            player:addFame(BASTOK,20);
            player:completeQuest(BASTOK,tpz.quest.id.bastok.DARK_LEGACY);
        end
    elseif (csid == 933) then
        player:setCharVar("WildcatBastok", utils.mask.setBit(player:getCharVar("WildcatBastok"), 5, true))
    end

end;