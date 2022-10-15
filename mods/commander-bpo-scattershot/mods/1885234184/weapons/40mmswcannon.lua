--dofile("scripts/sprites_utility.lua")
--dofile("scripts/device_utility.lua")

if active then
	ProjectilesEachRound = 2
	RoundsEachBurst = RoundsEachBurst/ProjectilesEachRound
end

MakeAlternateSprite("40mmswReloadAnim", "40mmbposccannonsw-reload", "/weapons/40mmcannon/40mmbposcReloadAnim", path)

local sprite = FindSpriteComponent(Root, "40mmswReloadAnim")
if sprite then
sprite.Sprite = "40mmbposccannonsw-reload"
end
--Sprites[4].States["Normal" .. factionName] = { Frames = { { texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim01.tga"}, mipmap = true}, }
--Sprites[4].States["Idle" .. factionName] = Sprites[4].States["Normal" .. factionName]