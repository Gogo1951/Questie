---@class QuestieWotlkQuestFixes
local QuestieWotlkQuestFixes = QuestieLoader:CreateModule("QuestieWotlkQuestFixes")

---@type QuestieDB
local QuestieDB = QuestieLoader:ImportModule("QuestieDB")
---@type ZoneDB
local ZoneDB = QuestieLoader:ImportModule("ZoneDB")
---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

function QuestieWotlkQuestFixes:Load()
    local questKeys = QuestieDB.questKeys
    local raceIDs = QuestieDB.raceKeys
    local classIDs = QuestieDB.classKeys
    local zoneIDs = ZoneDB.zoneIDs
    local sortKeys = QuestieDB.sortKeys

    return {
        [11246] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{23666,23662,23661,223664,23663,23665,23667,23670,23668,23669,},23666,"Winterskorn Vrykul Dismembered"},},
        },
        [11249] = {
            [questKeys.extraObjectives] = {{nil, ICON_TYPE_EVENT, l10n("Present the Vrykul Scroll of Ascension"), 0, {{"object", 186586}}}},
        },
        [11355] = {
            [questKeys.objectives] = {{{24329,"Runed Stone Giant Corpse Analyzed"},},nil,nil,nil,},
        },
        [11466] = {
            [questKeys.extraObjectives] = {{nil, ICON_TYPE_EVENT, l10n("Talk to Olga"), 0, {{"monster", 24639}}}},
        },
        [11471] = {
            [questKeys.extraObjectives] = {{nil, ICON_TYPE_SLAY, l10n("Fight Jonah"), 0, {{"monster", 24742}}}},
        },
        [11590] = {
            [questKeys.objectives] = {{{25316,"Captured Beryl Sorcerer"},},nil,nil,nil,},
        },
        [11591] = {
            [questKeys.exclusiveTo] = {11592,11593,11594,},
        },
        [11594] = {
            [questKeys.preQuestSingle] = {},
        },
        [11712] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{25765,25767,25783,25814,26601,26619},25814,"Fizzcrank Gnome cursed & ported"}},
        },
        [12044] = {
            [questKeys.nextQuestInChain] = {12045},
        },
        [12045] = {
            [questKeys.preQuestSingle] = {12044},
        },
        [12050] = {
            [questKeys.preQuestGroup] = {12046,12047},
        },
        [12079] = {
            [questKeys.preQuestSingle] = {12075},
        },
        [12080] = {
            [questKeys.preQuestSingle] = {12076},
        },
        [12258] = {
            [questKeys.preQuestSingle] = {12251},
        },
        [12439] = {
            [questKeys.exclusiveTo] = {11995},
        },
        [12668] = {
            [questKeys.objectives] = {nil,nil,nil,nil,{{28747,28748,},28747,"Trolls killed near a Soul Font"},},
        },
        [12674] = {
            [questKeys.extraObjectives] = {{nil, ICON_TYPE_EVENT, l10n("Use Quetz'lun's Hexxing Stick and slay him/her"), 0, {{"monster", 28752},{"monster", 28754},{"monster", 28756}}}},
        },
        [12685] = {
            [questKeys.extraObjectives] = {{nil, ICON_TYPE_EVENT, l10n("Use Quetz'lun's Ritual"), 0, {{"monster", 28672}}}},
        },
        [13549] = {
            [questKeys.objectives] = {{{29327,"Female Frost Leopards recovered"},{29319,"Female Icepaw Bears recovered"},},nil,nil,nil,},
        },
    }
end