-----------------------------------
-- Area: Dynamis-Jeuno
-----------------------------------
require("scripts/globals/keyitems")
require("scripts/globals/dynamis")
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[tpz.zone.DYNAMIS_JEUNO] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6382, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6388, -- Obtained: <item>.
        GIL_OBTAINED            = 6389, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6391, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS     = 6999, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY = 7000, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER            = 7001, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        CONQUEST_BASE           = 7055, -- Tallying conquest results...
        DYNAMIS_TIME_BEGIN      = 7214, -- The sands of the <item> have begun to fall. You have <number> minutes (Earth time) remaining in Dynamis.
        DYNAMIS_TIME_EXTEND     = 7215, -- our stay in Dynamis has been extended by <number> minute[/s].
        DYNAMIS_TIME_UPDATE_1   = 7216, -- ou will be expelled from Dynamis in <number> [second/minute] (Earth time).
        DYNAMIS_TIME_UPDATE_2   = 7217, -- ou will be expelled from Dynamis in <number> [seconds/minutes] (Earth time).
        DYNAMIS_TIME_EXPIRED    = 7219, -- The sands of the hourglass have emptied...
        OMINOUS_PRESENCE        = 7230, -- You feel an ominous presence, as if something might happen if you possessed <item>.
    },
    mob =
    {
        TIME_EXTENSION =
        {
            {minutes = 10, ki = tpz.ki.CRIMSON_GRANULES_OF_TIME,   mob = {17547301, 17547302, 17547303}},
            {minutes = 10, ki = tpz.ki.AZURE_GRANULES_OF_TIME,     mob = 17547389},
            {minutes = 10, ki = tpz.ki.AMBER_GRANULES_OF_TIME,     mob = 17547390},
            {minutes = 15, ki = tpz.ki.ALABASTER_GRANULES_OF_TIME, mob = 17547420},
            {minutes = 15, ki = tpz.ki.OBSIDIAN_GRANULES_OF_TIME,  mob = 17547467},
        },
        REFILL_STATUE =
        {
            {
                {mob = 17547295, eye = dynamis.eye.RED  }, -- Goblin_Replica
                {mob = 17547296, eye = dynamis.eye.BLUE },
                {mob = 17547297, eye = dynamis.eye.GREEN},
            },
            {
                {mob = 17547391, eye = dynamis.eye.RED  }, -- Goblin_Replica
                {mob = 17547392, eye = dynamis.eye.BLUE },
                {mob = 17547393, eye = dynamis.eye.GREEN},
            },
            {
                {mob = 17547421, eye = dynamis.eye.RED  }, -- Goblin_Replica
                {mob = 17547422, eye = dynamis.eye.BLUE },
                {mob = 17547423, eye = dynamis.eye.GREEN},
            },
            {
                {mob = 17547456, eye = dynamis.eye.RED  }, -- Goblin_Replica
                {mob = 17547457, eye = dynamis.eye.BLUE },
                {mob = 17547458, eye = dynamis.eye.GREEN},
            },
        },
        SPARKSPOX_SWEATBROW_PH      = {[17547398] = 17547324}, -- WAR
        MORGMOX_MOLDNOGGIN_PH     	= {[17547327] = 17547322}, -- SMN
        TRAILBLIX_GOATMUG_PH      	= {[17547341] = 17547396}, -- BST
        BUFFRIX_EARGONE_PH          = {[17547371] = 17547377}, -- PLD
        TICKTOX_BEADYEYES_PH      	= {[17547482] = 17547394}, -- DRK
        LURKLOX_DHALMELNECK_PH      = {[17547459] = 17547395}, -- RNG
        KARASHIX_SWOLLENSKULL_PH    = {[17547446] = 17547424}, -- SAM
        MORTILOX_WARTPAWS_PH        = {[17547436] = 17547438}, -- SMN
        RUTRIX_HAMGAMS_PH     		= {[17547450] = 17547454}, -- BST
        SNYPESTIX_EAGLEBEAK_PH      = {[17547442] = 17547468}, -- NIN
        BOOTRIX_JAGGEDELBOW_PH     	= {[17547470] = 17547473}, -- MNK
        MOBPIX_MUCOUSMOUTH_PH       = {[17547471] = 17547474}, -- THF
        DISTILIX_STICKYTOES_PH     	= {[17547475] = 17547478}, -- WHM
        HUMNOX_DRUMBELLY_PH       	= {[17547386] = 17547378}, -- BRD
        KIKKLIX_LONGLEGS_PH       	= {[17547399] = 17547402}, -- MNK
        JABBROX_GRANNYGUISE_PH      = {[17547477] = 17547480}, -- RDM
        SCRUFFIX_SHAGGYCHEST_PH     = {[17547481] = 17547485}, -- PLD
        BLAZOX_BONEYBOD_PH     		= {[17547483] = 17547487}, -- BST
        SLYSTIX_MEGAPEEPERS_PH     	= {[17547435] = 17547492}, -- NIN
        ANVILIX_SOOTWRISTS_PH   	= {[17547469] = 17547472}, -- WAR
        EREMIX_SNOTTYNOSTRIL_PH     = {[17547476] = 17547479}, -- BLM
        GABBLOX_MAGPIETONGUE_PH     = {[17547284] = 17547277}, -- RDM
        TUFFLIX_LOGLIMBS_PH        	= {[17547289] = 17547291}, -- PLD
        CLOKTIX_LONGNAIL_PH    		= {[17547281] = 17547294}, -- DRK
        SMELTIX_THICKHIDE_PH      	= {[17547266] = 17547298}, -- WAR
        JABKIX_PIGEONPECS_PH     	= {[17547278] = 17547299}, -- MNK
		ELIXMIX_HOOKNOSE_PH			= {[17547351] = 17547355}, -- WHM
		HERMITRIX_TOOTHROT_PH		= {[17547320] = 17547311}, -- BLM
		TYMEXOX_NINEFINGERS_PH		= {[17547441] = 17547486}, -- DRK
		WASABIX_CALLUSDIGIT_PH		= {[17547288] = 17547300}, -- SAM
		WYRMWIX_SNAKESPECS_PH		= {[17547332] = 17547312}, -- DRG
    },
    npc =
    {
        QM =
        {
            [17547509] =
            {
                param = {3356, 3419, 3420, 3421, 3422, 3423},
                trade =
                {
                    {item = 3356,                           mob = 17547265}, -- Goblin Golem
                    {item = {3419, 3420, 3421, 3422, 3423}, mob = 17547499}, -- Arch Goblin Golem
                }
            },
            [17547510] = {trade = {{item = 3392, mob = 17547493}}}, -- Quicktrix Hexhands
            [17547511] = {trade = {{item = 3393, mob = 17547494}}}, -- Feralox Honeylips
            [17547512] = {trade = {{item = 3394, mob = 17547496}}}, -- Scourquix Scaleskin
            [17547513] = {trade = {{item = 3395, mob = 17547498}}}, -- Wilywox Tenderpalm
        },
    },
}

return zones[tpz.zone.DYNAMIS_JEUNO]
