dofile("effects/device_explode_util.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0

Effects =
{
	Debris("weapons/gunner.tga"),
	Debris("weapons/gunner.tga"),
	Debris(path .. "/weapons/40mmcannon/40mmbarrel_destroyed1.tga"),
	Debris(path .. "/weapons/40mmcannon/40mmhead_destroyed.tga"),
	Debris(path .. "/weapons/40mmcannon/40mmbase_destroyed.tga"),
--	Sandbags(0),
--	DeviceExplodeSFX(),
	DeviceExplodeSprite()
}

--[[
function InitEffect()
	SFXVariants("/audio/sfx/explosions/explosion_medium_", 4)
end
]]
