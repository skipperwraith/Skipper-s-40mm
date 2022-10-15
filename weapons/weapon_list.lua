

StandardMaxUpAngle = 30,

table.insert(Sprites, ButtonSprite("hud-40mmcannonsw-icon", "HUD/HUD-40mmCannonsw", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-40mmcannonsw", "HUD-Details-40mmCannonsw", path))

table.insert(Sprites, ButtonSprite("hud-40mmcannonapsw-icon", "HUD/HUD-40mmCannonapsw", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-40mmcannonapsw", "HUD-Details-40mmCannonapsw", path))

--table.insert(Sprites, ButtonSprite("hud-upgrade40mmsw", "context/Upgrade40mmsw", nil, nil, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-upgrade-cannon40mmsw", "context/Upgradecannon40mmsw", nil, nil, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-upgrade-artillery40mmsw", "context/Upgradeartillery40mmsw", nil, nil, nil, nil, path))

table.insert(Weapons, IndexOfWeapon("cannon") + 1,
{
	Enabled = false,
	SaveName = "artillerycannonsw",
	FileName = path .. "/weapons/artillerycannonsw.lua",
	Icon = "hud-cannon-icon",
	GroupButton = "hud-group-cannon",
	Detail = "hud-detail-cannon-wp",
	Prerequisite = {{"munitionssw","upgrade"},},
	BuildTimeComplete = 20.0,
	ScrapPeriod = 8,
	MetalCost = 1350,
	EnergyCost = 7500,
	MetalRepairCost = 150,
	EnergyRepairCost = 3000,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0.75, -- moderate benefit from spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 3,
	SelectEffect = "ui/hud/weapons/ui_weapons",

	CompatibleGroupTypes =
		{
			"cannon",
		}
})

table.insert(Weapons, IndexOfWeapon("cannon20mm") + 1,
{
	Enabled = false,
	SaveName = "cannon40mmsw",
	FileName = path .. "/weapons/40mmswcannon.lua",
	Icon = "hud-40mmcannonsw-icon",
	GroupButton = "hud-group-cannon",
	Detail = "hud-detail-40mmcannonsw",
	Prerequisite = {{"munitionssw","upgrade"},},
	BuildTimeComplete = 60.0,
	ScrapPeriod = 8,
	MetalCost = 1000,
	EnergyCost = 6000,
	MetalRepairCost = 300,
	EnergyRepairCost = 2000,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0.5, -- moderate benefit from spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 6,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	
	Upgrades =
		{
			{
				Enabled = true,
				SaveName = "artillery40mmsw",
				MetalCost = 350,
				EnergyCost = 1500,
				Button = "hud-upgrade-artillery40mmsw",
				BuildTimeComplete = 40.0,
			},
		},
})


table.insert(Weapons, IndexOfWeapon("cannon40mmsw") + 1,
{
	Enabled = false,
	SaveName = "artillery40mmsw",
	FileName = path .. "/weapons/40mmswartillery.lua",
	Icon = "hud-40mmcannonsw-icon",
	GroupButton = "hud-group-cannon",
	Detail = "hud-detail-40mmcannonsw",
	Prerequisite = {{"munitionssw","upgrade"},},
	BuildTimeComplete = 40.0,
	ScrapPeriod = 8,
	MetalCost = 1350,
	EnergyCost = 7500,
	MetalRepairCost = 300,
	EnergyRepairCost = 2000,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0.5, -- moderate benefit from spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 6,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	Upgrades =
		{
			["cannon40mmsw"] =
			{
				Enabled = true,
				SaveName = "cannon40mmsw",
				MetalCost = 100,
				EnergyCost = 1000,
				Button = "hud-upgrade-cannon40mmsw",
				BuildTimeComplete = 6.0,
			},
		},
	
})

table.insert(Weapons, IndexOfWeapon("artillery40mmsw") + 1,
{
	Enabled = true,
	SaveName = "bigcannon40mmsw",
	FileName = path .. "/weapons/40mmswbigcannon.lua",
	Icon = "hud-40mmcannonsw-icon",
	GroupButton = "hud-group-cannon",
	Detail = "hud-detail-40mmcannonsw",
	Prerequisite = "munitionssw",
	BuildTimeComplete = 60.0,
	ScrapPeriod = 8,
	MetalCost = 1350,
	EnergyCost = 7500,
	MetalRepairCost = 150,
	EnergyRepairCost = 3000,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0.75, -- moderate benefit from spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 3,
	SelectEffect = "ui/hud/weapons/ui_weapons",

})

table.insert(Weapons, IndexOfWeapon("bigcannon40mmsw") + 1,
{
	Enabled = true,
	SaveName = "bigartillery40mmsw",
	FileName = path .. "/weapons/40mmswbigartillery.lua",
	Icon = "hud-40mmcannonsw-icon",
	GroupButton = "hud-group-cannon",
	Detail = "hud-detail-40mmcannonsw",
	Prerequisite = "munitionssw",
	BuildTimeComplete = 90.0,
	ScrapPeriod = 8,
	MetalCost = 1350,
	EnergyCost = 7500,
	MetalRepairCost = 150,
	EnergyRepairCost = 3000,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0.75, -- moderate benefit from spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 3,
	SelectEffect = "ui/hud/weapons/ui_weapons",

})

table.insert(Weapons, IndexOfWeapon("bigartillery40mmsw") + 1,
{
	Enabled = false,
	SaveName = "bigcannon40mmapsw",
	FileName = path .. "/weapons/40mmswbigcannonap.lua",
	Icon = "hud-40mmcannonapsw-icon",
	GroupButton = "hud-group-cannon",
	Detail = "hud-detail-40mmcannonsw",
	Prerequisite = "munitionssw",
	BuildTimeComplete = 60.0,
	ScrapPeriod = 8,
	MetalCost = 1350,
	EnergyCost = 7500,
	MetalRepairCost = 150,
	EnergyRepairCost = 3000,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0.75, -- moderate benefit from spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 1,
	SelectEffect = "ui/hud/weapons/ui_weapons",

})

local cannon = FindWeapon("cannon")
if cannon then
	cannon.Enabled = true
	if not cannon.Upgrades then cannon.Upgrades = {} end
	table.insert(cannon.Upgrades,
		{
			Enabled = true,
			SaveName = "artillerycannonsw",
			MetalCost = 450,
			EnergyCost = 2500,
			Button = "hud-upgrade40mmsw",
			BuildTimeComplete = 70.0,
		})
	if not cannon.CompatibleGroupTypes then cannon.CompatibleGroupTypes = {} end
	table.insert(cannon.CompatibleGroupTypes,"artillerycannonsw")
end

local cannon20mm = FindWeapon("cannon20mm")
if cannon20mm then
	cannon20mm.Enabled = true
	if not cannon20mm.Upgrades then cannon20mm.Upgrades = {} end
	table.insert(cannon20mm.Upgrades,
		{
			Enabled = true,
			SaveName = "cannon40mmsw",
			MetalCost = 400,
			EnergyCost = 2000,
			Button = "hud-upgrade-cannon40mmsw",
			BuildTimeComplete = 40.0,
		})
	table.insert(cannon20mm.Upgrades,
		{
			Enabled = true,
			SaveName = "artillery40mmsw",
			MetalCost = 750,
			EnergyCost = 3500,
			Button = "hud-upgrade-artillery40mmsw",
			BuildTimeComplete = 40.0,
		})
	if not cannon20mm.CompatibleGroupTypes then cannon20mm.CompatibleGroupTypes = {} end
	table.insert(cannon20mm.CompatibleGroupTypes,"cannon40mmsw")
	table.insert(cannon20mm.CompatibleGroupTypes,"artillery40mmsw")	
end

local cannon40mmsw = FindWeapon("cannon40mmsw")
if cannon40mmsw then
	cannon40mmsw.Enabled = false
	if not cannon40mmsw.CompatibleGroupTypes then cannon40mmsw.CompatibleGroupTypes = {} end
	table.insert(cannon40mmsw.CompatibleGroupTypes,"cannon20mm")
	table.insert(cannon40mmsw.CompatibleGroupTypes,"artillery40mmsw")
end

local artillery40mmsw = FindWeapon("artillery40mmsw")
if artillery40mmsw then
	artillery40mmsw.Enabled = false
	if not artillery40mmsw.CompatibleGroupTypes then artillery40mmsw.CompatibleGroupTypes = {} end
	table.insert(artillery40mmsw.CompatibleGroupTypes,"cannon20mm")
	table.insert(artillery40mmsw.CompatibleGroupTypes,"cannon40mmsw")
end

table.insert(Weapons, IndexOfWeapon("artillerycannonsw") + 1,
{
	Enabled = false,
	SaveName = "hugecannon40mmsw",
	FileName = path .. "/weapons/40mmswhugecannon.lua",
	Icon = "hud-40mmcannonsw-icon",
	GroupButton = "hud-group-cannon",
	Detail = "hud-detail-40mmcannonsw",
	Prerequisite = {{"munitionssw","upgrade"},},
	BuildTimeComplete = 60.0,
	ScrapPeriod = 8,
	MetalCost = 1000,
	EnergyCost = 6000,
	MetalRepairCost = 300,
	EnergyRepairCost = 2000,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0.5, -- moderate benefit from spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 1,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	
})