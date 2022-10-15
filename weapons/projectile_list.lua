
table.insert(Projectiles,
{
	SaveName = "cannon40mmsw",

	ProjectileType = "mortar",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 36,
	ProjectileDrag = 0,
	Impact = 36000,
	DisableShields = false,
	--DestroyShields = false,
	DeflectedByShields = true,
	EnemyCanTeleport = true,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 7.5,
	ProjectileShootDownRadius = 60,
	SurvivesProjectileCollision = true,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 180.0,
	StructureDamageBonus = 30.0,
	ProjectileSplashDamage = 30.0, -- low splash damage
	ProjectileSplashDamageMaxRadius = 120.0,
	ProjectileSplashMaxForce = 16000, -- moderate shockwave
	AntiAirHitpoints = 60,
	SpeedIndicatorFactor = 0.25,

	TrailEffect = path .. "/effects/40mmcannon_trail.lua",

	Effects =
	{
		Impact =
		{
--			["device"] = "effects/impact_medium.lua",
--			["foundations"] = "effects/impact_medium.lua",
--			["rocks01"] = "effects/impact_heavy_ground.lua",
--			["bracing"] = "effects/impact_medium.lua",
--			["armour"] = "effects/impact_medium.lua",
--			["door"] = "effects/impact_medium.lua",
			["default"] = "effects/impact_medium.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua" },
			["door"] = { Effect = "effects/armor_ricochet.lua" },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua" },
		},
	},

	DamageMultiplier =
	{
		{ SaveName = "sandbags", Direct = 0.6, Splash = 0.6 },
		{ SaveName = "reactor", Direct = 1.2, Splash = 0.8 },
		{ SaveName = "cannon40mmsw", AntiAir = 0 },
		{ SaveName = "artillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "bigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "bigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitbigartillery40mmsw", AntiAir = 0 },
	},
})
cannon40mmsw = FindProjectile("cannon40mmsw")

Artillery40mmSWSplit = { Effect = path .. "/effects/40mmartillerysw_split.lua", Projectile = { Count = 3, Type = "splitartillery40mmsw", Speed = ProjectileSpeed, StdDev = 0.05 }, Offset = 0, Terminate = true, KeepLifespan = true, }
FlamingArtillery40mmSWSplit = { Effect = path .. "/effects/40mmartillerysw_split.lua", Projectile = { Count = 3, Type = "flamingsplitartillery40mmsw", Speed = ProjectileSpeed, StdDev = 0.05 }, Offset = 0, Terminate = true, KeepLifespan = true, }


table.insert(Projectiles,
{
	SaveName = "artillery40mmsw",

	ProjectileType = "mortar",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 36,
	ProjectileDrag = 0,
	Impact = 36000,
	DisableShields = false,
	DeflectedByShields = true,
	EnemyCanTeleport = true,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 7.5,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 160.0,
	ProjectileSplashDamage = 64.0, -- low splash damage
	ProjectileSplashDamageMaxRadius = 128.0,
	ProjectileSplashMaxForce = 16000, -- moderate shockwave
	AntiAirHitpoints = 60,
	SpeedIndicatorFactor = 0.1,

	TrailEffect = path .. "/effects/40mmcannon_trail.lua",

	Effects =
	{
		Impact =
		{
--			["device"] = "effects/impact_medium.lua",
--			["foundations"] = "effects/impact_medium.lua",
--			["rocks01"] = "effects/impact_heavy_ground.lua",
--			["bracing"] = "effects/impact_medium.lua",
--			["armour"] = "effects/impact_medium.lua",
--			["door"] = "effects/impact_medium.lua",
			["default"] = "effects/impact_medium.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua" },
			["door"] = { Effect = "effects/armor_ricochet.lua" },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua" },
		},
		Age = 
		{
			t2000 = Artillery40mmSWSplit,
		}
	},

	DamageMultiplier =
	{
		{ SaveName = "sandbags", Direct = 0.6, Splash = 0.6 },
		{ SaveName = "reactor", Direct = 0.8, Splash = 1.2 },
		{ SaveName = "cannon40mmsw", AntiAir = 0 },
		{ SaveName = "artillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "bigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "bigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitbigartillery40mmsw", AntiAir = 0 },
	},
})
artillery40mmsw = FindProjectile("artillery40mmsw")

table.insert(Projectiles,
{
	SaveName = "splitartillery40mmsw",

	ProjectileType = "mortar",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 36,
	ProjectileDrag = 0,
	Impact = 8000,
	DisableShields = false,
	DeflectedByShields = true,
	EnemyCanTeleport = true,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 7.5,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 48.0,
	StructureDamageBonus = 12.0,
	ProjectileSplashDamage = 24.0, -- low splash damage
	ProjectileSplashDamageMaxRadius = 64.0,
	ProjectileSplashMaxForce = 4000, -- medium shockwave
	AntiAirHitpoints = 20,
	SpeedIndicatorFactor = 0.1,

	TrailEffect = path .. "/effects/40mmcannon_trail.lua",

	Effects =
	{
		Impact =
		{
--			["device"] = "effects/impact_medium.lua",
--			["foundations"] = "effects/impact_medium.lua",
--			["rocks01"] = "effects/impact_heavy_ground.lua",
--			["bracing"] = "effects/impact_medium.lua",
--			["armour"] = "effects/impact_medium.lua",
--			["door"] = "effects/impact_medium.lua",
			["default"] = "effects/impact_medium.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua" },
			["door"] = { Effect = "effects/armor_ricochet.lua" },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua" },
		},
	},

	DamageMultiplier =
	{
		{ SaveName = "sandbags", Direct = 0.6, Splash = 0.6 },
		{ SaveName = "reactor", Direct = 0.8, Splash = 1.2 },
		{ SaveName = "cannon40mmsw", AntiAir = 0 },
		{ SaveName = "artillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "bigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "bigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitbigartillery40mmsw", AntiAir = 0 },
	},
})
splitartillery40mmsw = FindProjectile("splitartillery40mmsw")

table.insert(Projectiles,
{
	SaveName = "bigcannon40mmsw",
		
	ProjectileType = "mortar",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 32,
	ProjectileDrag = 0,
	Impact = 36000,
	DestroyShields = true,
	DeflectedByShields = false,
	EnemyCanTeleport = true,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 10.0,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 768.0, -- large enough to destroy an undamaged cannon
	StructureDamageBonus = 132.0,
	ProjectileSplashDamage = 60.0, -- low splash damage
	ProjectileSplashDamageMaxRadius = 200.0,
	ProjectileSplashMaxForce = 20000, -- moderate shockwave
	SpeedIndicatorFactor = 0.25,

	TrailEffect = path .. "/effects/40mmcannon_trail.lua",

	Effects =
	{
		Impact =
		{
			["device"] = "effects/impact_heavy.lua",
			["foundations"] = "effects/impact_heavy_ground.lua",
			["rocks01"] = "effects/impact_heavy_ground.lua",
			["bracing"] = "effects/impact_heavy.lua",
			["armour"] = "effects/impact_heavy.lua",
			["door"] = "effects/impact_heavy.lua",
			["default"] = "effects/impact_heavy.lua",
		},	
		Deflect =
		{
			["armour"] = "effects/armor_ricochet.lua",
			["door"] = "effects/armor_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
		},
	},
	DamageMultiplier =
	{
		{ SaveName = "reactor", Direct = 0.8, Splash = 0.4 },
		{ SaveName = "cannon40mmsw", AntiAir = 0 },
		{ SaveName = "artillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "bigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "bigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitbigartillery40mmsw", AntiAir = 0 },
	},
})

BigArtillery40mmSWSplit = { Effect = path .. "/effects/40mmartillerysw_split.lua", Projectile = { Count = 4, Type = "splitbigartillery40mmsw", Speed = ProjectileSpeed, StdDev = 0.1 }, Offset = 0, Terminate = true, KeepLifespan = true, }
FlamingBigArtillery40mmSWSplit = { Effect = path .. "/effects/40mmartillerysw_split.lua", Projectile = { Count = 4, Type = "flamingsplitbigartillery40mmsw", Speed = ProjectileSpeed, StdDev = 0.1 }, Offset = 0, Terminate = true, KeepLifespan = true, }

table.insert(Projectiles,
{
	SaveName = "bigartillery40mmsw",
		
	ProjectileType = "mortar",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 36,
	ProjectileDrag = 0,
	Impact = 36000,
	DestroyShields = true,
	DeflectedByShields = false,
	EnemyCanTeleport = true,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 10.0,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 256.0, -- 
	ProjectileSplashDamage = 144.0, -- high splash damage
	ProjectileSplashDamageMaxRadius = 200.0,
	ProjectileSplashMaxForce = 24000, -- moderate shockwave
	SpeedIndicatorFactor = 0.1,

	TrailEffect = path .. "/effects/40mmcannon_trail.lua",

	Effects =
	{
		Impact =
		{
			["device"] = "effects/impact_heavy.lua",
			["foundations"] = "effects/impact_heavy_ground.lua",
			["rocks01"] = "effects/impact_heavy_ground.lua",
			["bracing"] = "effects/impact_heavy.lua",
			["armour"] = "effects/impact_heavy.lua",
			["door"] = "effects/impact_heavy.lua",
			["default"] = "effects/impact_heavy.lua",
		},	
		Deflect =
		{
			["armour"] = "effects/armor_ricochet.lua",
			["door"] = "effects/armor_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
		},
		Age = 
		{
			t3000 = BigArtillery40mmSWSplit,
		}
	},
	DamageMultiplier =
	{
		{ SaveName = "reactor", Direct = 0.8, Splash = 0.4 },
		{ SaveName = "cannon40mmsw", AntiAir = 0 },
		{ SaveName = "artillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "bigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "bigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitbigartillery40mmsw", AntiAir = 0 },
		
	},
})

table.insert(Projectiles,
{
	SaveName = "splitbigartillery40mmsw",
		
	ProjectileType = "mortar",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 32,
	ProjectileDrag = 0,
	Impact = 36000,
	DestroyShields = false,
	DeflectedByShields = false,
	EnemyCanTeleport = true,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 10.0,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 64.0, -- 
	StructureDamageBonus = 12.0, -- buff
	ProjectileSplashDamage = 48.0, -- high splash damage
	ProjectileSplashDamageMaxRadius = 100.0,
	ProjectileSplashMaxForce = 6000, -- moderate shockwave
	SpeedIndicatorFactor = 0.1,

	TrailEffect = path .. "/effects/40mmcannon_trail.lua",

	Effects =
	{
		Impact =
		{
			["device"] = "effects/impact_heavy.lua",
			["foundations"] = "effects/impact_heavy_ground.lua",
			["rocks01"] = "effects/impact_heavy_ground.lua",
			["bracing"] = "effects/impact_heavy.lua",
			["armour"] = "effects/impact_heavy.lua",
			["door"] = "effects/impact_heavy.lua",
			["default"] = "effects/impact_heavy.lua",
		},	
		Deflect =
		{
			["armour"] = "effects/armor_ricochet.lua",
			["door"] = "effects/armor_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
		},
	},
	DamageMultiplier =
	{
		{ SaveName = "reactor", Direct = 0.8, Splash = 0.4 },
		{ SaveName = "cannon40mmsw", AntiAir = 0 },
		{ SaveName = "artillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "bigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "bigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitbigartillery40mmsw", AntiAir = 0 },
	},
})

table.insert(Projectiles,
{
	SaveName = "bigcannon40mmapsw",
		
	ProjectileType = "mortar",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 32,
	ProjectileDrag = 0,
	Impact = 36000,
	DestroyShields = true,
	DeflectedByShields = false,
	EnemyCanTeleport = true,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 10.0,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 360.0, -- large enough to destroy an undamaged cannon
	StructureDamageBonus = 32.0,
	ProjectileSplashDamage = 60.0, -- low splash damage
	ProjectileSplashDamageMaxRadius = 200.0,
	ProjectileSplashMaxForce = 20000, -- moderate shockwave
	SpeedIndicatorFactor = 0.25,

	TrailEffect = path .. "/effects/40mmcannon_trail.lua",

	Effects =
	{
		Impact =
		{
			["device"] = "effects/impact_heavy.lua",
			["foundations"] = "effects/impact_heavy_ground.lua",
			["rocks01"] = "effects/impact_heavy_ground.lua",
			["bracing"] = "effects/impact_heavy.lua",
			["armour"] = "effects/impact_heavy.lua",
			["door"] = "effects/impact_heavy.lua",
			["default"] = "effects/impact_heavy.lua",
		},	
		Deflect =
		{
			["armour"] = "effects/armor_ricochet.lua",
			["door"] = "effects/armor_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
		},
	},
	DamageMultiplier =
	{
		{ SaveName = "reactor", Direct = 0.8, Splash = 0.4 },
		{ SaveName = "metal", Direct = 4, Splash = 1.6 },
		{ SaveName = "cannon40mmsw", AntiAir = 0 },
		{ SaveName = "artillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "bigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "bigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "bigcannon40mmapsw", AntiAir = 0 },
		{ SaveName = "flamingbigcannon40mmapsw", AntiAir = 0 },
	},
})
	
flaming_trail_sw_40mm = path .."/effects/flaming_trail_sw_40mm.lua"
--flaming_trail_sw_40mm = "mods/weapon_pack/effects/flaming_trail.lua"

MakeFlamingVersion("cannon40mmsw",	0.8,	30, flaming_trail_sw_40mm, 50, nil, nil)
MakeFlamingVersion("artillery40mmsw",	0.8,	30, flaming_trail_sw_40mm, 50, nil, nil)
MakeFlamingVersion("splitartillery40mmsw",	0.8,	30, flaming_trail_sw_40mm, 50, nil, nil)
MakeFlamingVersion("bigcannon40mmsw",	0.8,	5, flaming_trail_sw_40mm, 50, nil, nil)
MakeFlamingVersion("bigartillery40mmsw",	0.8,	5, flaming_trail_sw_40mm, 50, nil, nil)
MakeFlamingVersion("splitbigartillery40mmsw",	0.8,	30, flaming_trail_sw_40mm, 50, nil, nil)

MakeFlamingVersion("bigcannon40mmapsw",	0.8,	5, flaming_trail_sw_40mm, 50, nil, nil)

flamingartillery40mmsw = FindProjectile("flamingartillery40mmsw")
if flamingartillery40mmsw then
	flamingartillery40mmsw.Effects.Age = {t2000 = FlamingArtillery40mmSWSplit}
end

flamingbigartillery40mmsw = FindProjectile("flamingbigartillery40mmsw")
if flamingbigartillery40mmsw then
	flamingbigartillery40mmsw.Effects.Age = {t3000 = FlamingBigArtillery40mmSWSplit}
end

laser = FindProjectile("laser")
if laser then
	if laser.DamageMultiplier == nil then laser.DamageMultiplier = {} end

	table.insert(laser.DamageMultiplier, { SaveName = "cannon40mmsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "artillery40mmsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "splitartillery40mmsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "flamingcannon40mmsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "flamingartillery40mmsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "flamingsplitartillery40mmsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "bigcannon40mmsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "bigartillery40mmsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "splitbigartillery40mmsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "flamingbigcannon40mmsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "flamingbigartillery40mmsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "flamingsplitbigartillery40mmsw", AntiAir = 0 })

	table.insert(laser.DamageMultiplier, { SaveName = "bigcannon40mmapsw", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "flamingbigcannon40mmapsw", AntiAir = 0 })
end

table.insert(Projectiles,
{
	SaveName = "hugecannon40mmsw",

	ProjectileType = "mortar",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 144,
	ProjectileDrag = 0,
	Impact = 144000,
	DisableShields = false,
	--DestroyShields = false,
	DeflectedByShields = true,
	EnemyCanTeleport = true,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 24,
	ProjectileShootDownRadius = 60,
	SurvivesProjectileCollision = true,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 7200.0,
	StructureDamageBonus = 120.0,
	ProjectileSplashDamage = 120.0, -- low splash damage
	ProjectileSplashDamageMaxRadius = 120.0,
	ProjectileSplashMaxForce = 64000, -- moderate shockwave
	AntiAirHitpoints = 60,
	SpeedIndicatorFactor = 0.25,

	TrailEffect = path .. "/effects/40mmcannon_trail.lua",

	Effects =
	{
		Impact =
		{
--			["device"] = "effects/impact_medium.lua",
--			["foundations"] = "effects/impact_medium.lua",
--			["rocks01"] = "effects/impact_heavy_ground.lua",
--			["bracing"] = "effects/impact_medium.lua",
--			["armour"] = "effects/impact_medium.lua",
--			["door"] = "effects/impact_medium.lua",
			["default"] = "effects/impact_medium.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua" },
			["door"] = { Effect = "effects/armor_ricochet.lua" },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua" },
		},
	},

	DamageMultiplier =
	{
		{ SaveName = "sandbags", Direct = 0.6, Splash = 0.6 },
		{ SaveName = "reactor", Direct = 1.2, Splash = 0.8 },
		{ SaveName = "cannon40mmsw", AntiAir = 0 },
		{ SaveName = "artillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitartillery40mmsw", AntiAir = 0 },
		{ SaveName = "bigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "bigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "splitbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigcannon40mmsw", AntiAir = 0 },
		{ SaveName = "flamingbigartillery40mmsw", AntiAir = 0 },
		{ SaveName = "flamingsplitbigartillery40mmsw", AntiAir = 0 },
	},
})
local hugecannon40mmsw = FindProjectile("hugecannon40mmsw")