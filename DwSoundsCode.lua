--[[ Downwinds Addons

DwSounds-
A small collection of Sounds that are used for different spells of different classes.

--]]
local appName = "|cFF0000FFDwSounds:|r ";
local DwSoundsFrame = CreateFrame("FRAME") DwSoundsFrame:Hide()

local _debug = true
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

function DwSoundsFrame:UNIT_SPELLCAST_SUCCEEDED(unitID, spell, rank, lineID, spellID)
	if unitID == "player" then
		errTxt("Spell cast Succeeded by ".. unitID);
		
	--Begin Priest Sounds
				if spellID == 73325 then --Leap of Faith
					errTxt("Leap Detected");
					PlaySoundFile("Interface\\AddOns\\DwSounds\\Sounds\\GetOverHere.ogg", "Master")
					errTxt("Sound Played");
				
	-- End Priest Sounds
	
	-- Begin Death Knight Sounds
				elseif spellID == 49576 then -- Death Grip
					errTxt("Death Grip Detected");
					PlaySoundFile("Interface\\AddOns\\DwSounds\\Sounds\\GetOverHere.ogg", "Master")
					errTxt("Sound Played");
				end
	-- End Death Knight Sounds
	
	
	end
end		
DwSoundsFrame:SetScript("OnEvent", function(self, event, ...) return self[event](self, ...) end)
DwSoundsFrame:RegisterEvent("ADDON_LOADED")
DwSoundsFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")