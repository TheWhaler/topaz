-----------------------------------------
-- ID: 11276
-- Item: magna top +1
-- Teleport's user to Purgonorgo Isle
-----------------------------------------

require("scripts/globals/teleports")

function onItemCheck(target)
    local result = 0
    return result
end

function onItemUse(target)
    tpz.teleport.to(target, tpz.teleport.id.PURGONORGO)
end
