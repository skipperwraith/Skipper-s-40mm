-- Mod this file to run ApplyMod on every weapon
-- For example:
--[[
Skippers40mm_prevApplyMod = ApplyMod
function ApplyMod()
	if ReloadTime > 4 then
		Log("YEAH: FOUND RELOAD TIME OVER 4 SECONDS, Its " .. ReloadTime .. " Seconds")
	else
		Log("LOL: FOUND RELOAD TIME UNDER 4 SECONDS, Its " .. ReloadTime .. " Seconds")
	end
	
	-- call ApplyMod of any previous
	if Skippers40mm_prevApplyMod then
		Skippers40mm_prevApplyMod()
	end
end
]]
