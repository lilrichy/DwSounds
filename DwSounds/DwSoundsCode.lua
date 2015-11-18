--[[ Downwinds Addons

DwSounds-
A small collection of Sounds that are used for different spells of different classes.

--]]
local appName = "|cFF0000FFDwSounds:|r ";
local DwSoundsFrame = CreateFrame("FRAME") DwSoundsFrame:Hide()

local _debug = false -- Enable to Display debug messages.
function errTxt(msg)
	if ( _debug == true ) then
		print(appName.. " _DEBUG : "..msg);
	end
end

function DwSoundsFrame:ADDON_LOADED(arg1)
	if arg1 ~= "DwSounds" then
                return
	end
		self:UnregisterEvent("ADDON_LOADED")
		print(appName.. "Loaded");
	
end

function DwSoundsFrame:PLAYER_DEAD() -- Sound for when Player Dies
	PlaySoundFile("Sound\\Creature\\Kologarn\\UR_Kologarn_Slay02.ogg", "Master")
	end

function DwSoundsFrame:UNIT_SPELLCAST_SUCCEEDED(unitID, spell, rank, lineID, spellID)
	if unitID == "player" then
		errTxt("Spell cast Succeeded by ".. unitID);
		
	--Begin Priest Sounds
				if spellID == 73325 then --Leap of Faith
					errTxt("Leap Detected");
					PlaySoundFile("Interface\\AddOns\\DwSounds\\Sounds\\GetOverHere.ogg", "Master")
					errTxt("Sound Played");
				end
	-- End Priest Sounds
	
	-- Begin Death Knight Sounds
				if spellID == 49576 then -- Death Grip
					errTxt("Death Grip Detected");
					PlaySoundFile("Interface\\AddOns\\DwSounds\\Sounds\\GetOverHere.ogg", "Master")
					errTxt("Sound Played");
				end
				
				if spellID == 42650 then -- Army of the Dead
					errTxt("Army of the Dead Detected");
					PlaySoundFile("Sound\\Creature\\HeadlessHorseman\\Horseman_Special_01.ogg", "Master")
					errTxt("Sound Played");
				end
	-- End Death Knight Sounds
	
	-- Begin Warrior Sounds
				if spellID == 46924 then -- Blade Storm
					errTxt("Blade Storm Detected");
					PlaySoundFile("Sound\\Creature\\LordMarrowgar\\IC_Marrowgar_WW01.ogg", "Master")
					errTxt("Sound Played");
				end
	-- End Warrior Sounds
	
	
	end
end		
DwSoundsFrame:SetScript("OnEvent", function(self, event, ...) return self[event](self, ...) end)
DwSoundsFrame:RegisterEvent("ADDON_LOADED")
DwSoundsFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
DwSoundsFrame:RegisterEvent("PLAYER_DEAD")