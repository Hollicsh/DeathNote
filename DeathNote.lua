DeathNote = LibStub("AceAddon-3.0"):NewAddon("DeathNote", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0", "AceConsole-3.0")

function DeathNote:OnInitialize()
	-- AceDB options
	self.db = LibStub("AceDB-3.0"):New("DeathNoteDB", {
		profile = {
			debugging = false,
			max_deaths = 50,
			death_time = 30,
			others_death_time = 0,
			
			unit_filters = {
				group = true,
				my_pet = true,
				other_pets = false,
				friendly_players = false,
				enemy_players = false,
				friendly_npcs = false,
				enemy_npcs = false,
			},
			
			display = {
				namelist = 1,
				timestamp = 1,
				health = 1,
			},
		},
	})
	
	self.settings = self.db.profile
	
	-- Register options
	LibStub("AceConfig-3.0"):RegisterOptionsTable("Death Note", self.Options)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Death Note", "Death Note")
	
	-- Register LDB object
	self.ldb = LibStub("LibDataBroker-1.1"):NewDataObject("DeathNote", {
		type = "launcher",
		label = "|cFF8F8F8FDeath Note|r",
		text = "|cFF8F8F8FDeath Note|r",
		icon = [[Interface\AddOns\DeathNote\Textures\icon.tga]],
		OnClick = function(self, button)
			if button == "LeftButton" then
				if IsShiftKeyDown() then
					DeathNote:CleanData(true)
					collectgarbage("collect")
					DeathNote:UpdateLDB()
				elseif IsControlKeyDown() then
					DeathNote:ResetData()
					DeathNote:UpdateLDB()
				else
					DeathNote:Show()
				end
			elseif button == "RightButton" then
				InterfaceOptionsFrame_OpenToCategory("Death Note")
			end
		end,
		OnTooltipShow = function(tooltip)
			tooltip:AddLine("DeathNote")
			tooltip:AddLine("|cffeda55fClick|r to open DeathNote. |cffeda55fRight-Click|r to show options. |cffeda55fShift-Click|r to optimize data. |cffeda55fCtrl-Click|r to reset data.", 0.2, 1, 0.2, 1)
		end,
	})
	
	-- UnitPopupMenu support
	UnitPopupButtons["SHOW_DEATH_NOTE"] = {
		text = "Show Death Note",
		icon = [[Interface\AddOns\DeathNote\Textures\icon.tga]],
		dist = 0,
	}

	self:DataCapture_Initialize()
end

function DeathNote:OnEnable()
	self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	self:RegisterEvent("PLAYER_REGEN_ENABLED")
	self:RegisterEvent("PLAYER_REGEN_DISABLED")
	self:RegisterEvent("PLAYER_FLAGS_CHANGED")
	self:RegisterEvent("PLAYER_LOGOUT")
	
	self:AddToUnitPopup()
	
	self:ScheduleRepeatingTimer("UpdateLDB", 5)
	
	if self.settings.debugging then
		self:Show()
	end
end

function DeathNote:OnDisable()
	self:RemoveFromUnitPopup()
	self:UnregisterAllEvents()
end

function DeathNote:Debug(...)
	if self.settings.debugging then
		self:Print(...)
	end
end

local lt = GetTime()
function DeathNote:UpdateLDB()
	UpdateAddOnMemoryUsage()
	self.ldb.text = string.format("%i deaths - %i KB", #DeathNoteData.deaths, floor(GetAddOnMemoryUsage("DeathNote") + 0.5))
	
	lt = GetTime()
end

function DeathNote:SendReport(channel)
	local max_lines = 10

	local target	
	if channel == "WHISPER" then
		target = UnitName("target")
	end
	
	if self.dropdown_line > max_lines then
		self:Print(string.format("Limiting report to %i lines", max_lines))
	end

	local msg  = string.format("DeathNote: Death report for %s at %s", self.current_death[3], date("%X", self.current_death[1]))
	ChatThrottleLib:SendChatMessage("BULK", "DeathNote", msg, channel, nil, target)
	
	for i = self.dropdown_line, math.max(1, self.dropdown_line - max_lines + 1), -1 do
		local entry = self.logframe:GetLineUserdata(i)
		local timestamp = entry[3]
	
		local msg = string.format("[%.01f s] %s", floor((timestamp - self.current_death[1]) * 10 + 0.05) / 10, self:FormatChatAmount(entry))
		ChatThrottleLib:SendChatMessage("BULK", "DeathNote", msg, channel, nil, target)
	end	
end
