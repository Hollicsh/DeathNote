local L = LibStub("AceLocale-3.0"):NewLocale("DeathNote", "enUS", true);
L = L or {}
--[===[@non-debug@
@localization(locale="enUS", format="lua_additive_table", handle-unlocalized="english", table-name="L")@
--@end-non-debug@]===]
--@debug@
L = L or {}
L["%i deaths"] = "%i deaths"
L["%i more deaths were not announced"] = "%i more deaths were not announced"
L["-%s (%i hits) (%s)"] = "-%s (%i hits) (%s)"
L["%s|r has died of a heart attack"] = "%s|r has died of a heart attack"
L["%s|r was killed by"] = "%s|r was killed by"
L["%s's|r %s"] = "%s's|r %s"
L["(%i more lines not shown)"] = "(%i more lines not shown)"
L["(%s overkill)"] = "(%s overkill)"
L["|cFFEDA55FClick|r to open Death Note. |cFFEDA55FRight-Click|r to show options. |cFFEDA55FShift-Click|r to optimize data. |cFFEDA55FCtrl-Click|r to reset data."] = "|cFFEDA55FClick|r to open Death Note. |cFFEDA55FRight-Click|r to show options. |cFFEDA55FShift-Click|r to optimize data. |cFFEDA55FCtrl-Click|r to reset data."
L["+%s (%i heals) (%s)"] = "+%s (%i heals) (%s)"
L["<-%i buffs>"] = "<-%i buffs>"
L["<-%i debuffs>"] = "<-%i debuffs>"
L["<+%i buffs>"] = "<+%i buffs>"
L["<+%i debuffs>"] = "<+%i debuffs>"
L["<Break>"] = "<Break>"
L["<Dispel failed>"] = "<Dispel failed>"
L["<Dispel>"] = "<Dispel>"
L["<Interrupt>"] = "<Interrupt>"
L["<Refresh>"] = "<Refresh>"
L["<Steal>"] = "<Steal>"
L["All friendly players, including those not in your group"] = "All friendly players, including those not in your group"
L["Amount"] = "Amount"
L["Announce"] = "Announce"
L["Announce deaths"] = "Announce deaths"
L["Announce deaths in LFR"] = "Announce deaths in LFR"
L["Announce deaths with an unknown cause"] = "Announce deaths with an unknown cause"
L["Announces/10 seconds limit"] = "Announces/10 seconds limit"
L["Auras"] = "Auras"
L["Bar"] = "Bar"
L["Battleground"] = "Battleground"
L["Buff fades"] = "Buff fades"
L["Buff gains"] = "Buff gains"
L["Channel"] = "Channel"
L["Chat frame"] = "Chat frame"
L["Check the units you are interested in. Data for the units not filtered is discarded."] = "Check the units you are interested in. Data for the units not filtered is discarded."
L["Combat log lines"] = "Combat log lines"
L["Compact"] = "Compact"
L["Consolidate consecutive auras"] = "Consolidate consecutive auras"
L["Consolidate consecutive heals"] = "Consolidate consecutive heals"
L["Consolidate consecutive hits"] = "Consolidate consecutive hits"
L["Damage"] = "Damage"
L["Data capture"] = "Data capture"
L["Data has been reset"] = "Data has been reset"
L["Data optimization done in %.02f ms"] = "Data optimization done in %.02f ms"
L["Death"] = "Death"
L["Death Note"] = "Death Note"
L["Death Note: Death report for %s at %s"] = "Death Note: Death report for %s at %s"
L["Debuff fades"] = "Debuff fades"
L["Debuff gains"] = "Debuff gains"
L["Decrease scale"] = "Decrease scale"
L[ [=[Enable this if you want the data to persist after logging out or after a reload ui.
Keep in mind that depending on your options this may generate a very big SavedVariables file and may impact your login/logout and reload ui times.]=] ] = [=[Enable this if you want the data to persist after logging out or after a reload ui.
Keep in mind that depending on your options this may generate a very big SavedVariables file and may impact your login/logout and reload ui times.]=]
L["Enabling this option will taint the unit popup menu and will prevent some options from working (such as setting a focus target)"] = "Enabling this option will taint the unit popup menu and will prevent some options from working (such as setting a focus target)"
L["Enemy NPCs"] = "Enemy NPCs"
L["Enemy players"] = "Enemy players"
L[ [=[Enter one or more sources, separated by commas.
Ctrl+Click on a source column to add that source.]=] ] = [=[Enter one or more sources, separated by commas.
Ctrl+Click on a source column to add that source.]=]
L[ [=[Enter one or more spells, separated by commas.
Ctrl+Click on a spell column to add that spell.]=] ] = [=[Enter one or more spells, separated by commas.
Ctrl+Click on a spell column to add that spell.]=]
L["Filters"] = "Filters"
L["Formatted"] = "Formatted"
L["Formatted style options"] = "Formatted style options"
L["Friendly NPCs"] = "Friendly NPCs"
L["Friendly players"] = "Friendly players"
L["General"] = "General"
L["Group (party or raid)"] = "Group (party or raid)"
L["Group players"] = "Group players"
L["Guild"] = "Guild"
L["Healing"] = "Healing"
L["Health format"] = "Health format"
L["Hide misses"] = "Hide misses"
L["Highlight survival cooldowns"] = "Highlight survival cooldowns"
L["HP"] = "HP"
L["HP %"] = "HP %"
L["HP/HPMax"] = "HP/HPMax"
L["Include amount resisted/blocked/absorbed"] = "Include amount resisted/blocked/absorbed"
L["Include damage"] = "Include damage"
L["Include hit type (critical, crushing, etc)"] = "Include hit type (critical, crushing, etc)"
L["Include overkill"] = "Include overkill"
L["Increase scale"] = "Increase scale"
L["Keep data between sessions"] = "Keep data between sessions"
L["Limiting report to %i lines"] = "Limiting report to %i lines"
L["Maximum number of deaths"] = "Maximum number of deaths"
L["Miss"] = "Miss"
L["Name"] = "Name"
L["None"] = "None"
L["Officer"] = "Officer"
L["Options"] = "Options"
L["Other pets"] = "Other pets"
L["Others"] = "Others"
L["Output channel"] = "Output channel"
L["Party"] = "Party"
L["Party and raid members, including yourself"] = "Party and raid members, including yourself"
L["Raid"] = "Raid"
L["Raid Warning"] = "Raid Warning"
L["Real time"] = "Real time"
L["Report style"] = "Report style"
L["Reset"] = "Reset"
L["Reset data"] = "Reset data"
L["Say"] = "Say"
L["Scale: %i%%"] = "Scale: %i%%"
L["Seconds from death"] = "Seconds from death"
L["Seconds to keep before each death (for other units)"] = "Seconds to keep before each death (for other units)"
L["Seconds to keep before each death (for the unit killed)"] = "Seconds to keep before each death (for the unit killed)"
L["selector:search"] = "Search:"
L["Send report from this line"] = "Send report from this line"
L["Setting scale to %i%%"] = "Setting scale to %i%%"
L["Show Death Note"] = "Show Death Note"
L["Show in the unit popup menu (requires a UI reload)"] = "Show in the unit popup menu (requires a UI reload)"
L["Show target deaths"] = "Show target deaths"
L["Sort deaths by"] = "Sort deaths by"
L["Source"] = "Source"
L["Source filter"] = "Source filter"
L["Spell"] = "Spell"
L["Spell filter"] = "Spell filter"
L["Survival cooldowns"] = "Survival cooldowns"
L["The effect of this filter depends on the other filters. For example, if you have the friendly players filter inactive, their pets deaths won't be recorded either, even with this filter activated."] = "The effect of this filter depends on the other filters. For example, if you have the friendly players filter inactive, their pets deaths won't be recorded either, even with this filter activated."
L["This data is used to display actions of other players when a death happened. Set this value to 0 unless you want to use this feature, as it can use a large amount of memory."] = "This data is used to display actions of other players when a death happened. Set this value to 0 unless you want to use this feature, as it can use a large amount of memory."
L["Threshold"] = "Threshold"
L["Time"] = "Time"
L["Time format"] = "Time format"
L["ui:filters:select-cds"] = "Select CDs..."
L["ui:quick-spell-search"] = "Quick spell search:"
L["ui:quick-spell-search:mode:highlight"] = "highlight found spells"
L["ui:quick-spell-search:mode:only-found-spells"] = "display only found spells + CDs"
L["Units filters"] = "Units filters"
L["Unknown"] = "Unknown"
L["Whisper"] = "Whisper"
L["Whisper target"] = "Whisper target"
L["You were killed by"] = "You were killed by"
L["Your pet"] = "Your pet"

--@end-debug@