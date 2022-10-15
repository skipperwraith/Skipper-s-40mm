table.insert(ProjectilesToUranium, "cannon40mmsw")
table.insert(ProjectilesToUranium, "artillery40mmsw")
table.insert(ProjectilesToUranium, "splitartillery40mmsw")
table.insert(ProjectilesToUranium, "bigcannon40mmsw")
table.insert(ProjectilesToUranium, "bigartillery40mmsw")
table.insert(ProjectilesToUranium, "splitbigartillery40mmsw")

ProjectileEffects["cannon40mmsw"] = 
{
        Trail = "mods/commander-cf-buster/effects/uranium_fly.lua",
        Impact =
        {
            ["shield"] = "mods/commander-cf-buster/effects/impact_uranium_shield.lua",
        },
}

ProjectileEffects["artillery40mmsw"] = 
{
        Trail = "mods/commander-cf-buster/effects/uranium_fly.lua",
        Impact =
        {
            ["shield"] = "mods/commander-cf-buster/effects/impact_uranium_shield.lua",
        },
}

ProjectileEffects["splitartillery40mmsw"] = 
{
        Trail = "mods/commander-cf-buster/effects/uranium_fly.lua",
        Impact =
        {
            ["shield"] = "mods/commander-cf-buster/effects/impact_uranium_shield.lua",
        },
}

ProjectileEffects["bigcannon40mmsw"] = 
{
        Trail = "mods/commander-cf-buster/effects/uranium_fly.lua",
        Impact =
        {
            ["shield"] = "mods/commander-cf-buster/effects/impact_uranium_shield.lua",
        },
}

ProjectileEffects["bigartillery40mmsw"] = 
{
        Trail = "mods/commander-cf-buster/effects/uranium_fly.lua",
        Impact =
        {
            ["shield"] = "mods/commander-cf-buster/effects/impact_uranium_shield.lua",
        },
}

ProjectileEffects["splitbigartillery40mmsw"] = 
{
        Trail = "mods/commander-cf-buster/effects/uranium_fly.lua",
        Impact =
        {
            ["shield"] = "mods/commander-cf-buster/effects/impact_uranium_shield.lua",
        },
}

local UraniumCannonsw40mmCopy = FindProjectile("uraniumcannon")
if UraniumCannonsw40mmCopy then 
	Uraniumcannon40mmsw = DeepCopy(UraniumCannonsw40mmCopy)
	Uraniumcannon40mmsw.SaveName = "uraniumcannon40mmsw"
	Uraniumcannon40mmsw.MaxAge = 480/DU_speed
	table.insert(Projectiles, Uraniumcannon40mmsw)
	Uraniumartillery40mmsw = DeepCopy(UraniumCannonsw40mmCopy)
	Uraniumartillery40mmsw.SaveName = "uraniumartillery40mmsw"
	Uraniumartillery40mmsw.MaxAge = 480/DU_speed
	table.insert(Projectiles, Uraniumartillery40mmsw)
	Uraniumsplitartillery40mmsw = DeepCopy(UraniumCannonsw40mmCopy)
	Uraniumsplitartillery40mmsw.SaveName = "uraniumsplitartillery40mmsw"
	Uraniumsplitartillery40mmsw.MaxAge = 270/DU_speed
	table.insert(Projectiles, Uraniumsplitartillery40mmsw)
	Uraniumbigcannon40mmsw = DeepCopy(UraniumCannonsw40mmCopy)
	Uraniumbigcannon40mmsw.SaveName = "uraniumbigcannon40mmsw"
	Uraniumbigcannon40mmsw.MaxAge = 720/DU_speed
	table.insert(Projectiles, Uraniumbigcannon40mmsw)
	Uraniumbigartillery40mmsw = DeepCopy(UraniumCannonsw40mmCopy)
	Uraniumbigartillery40mmsw.SaveName = "uraniumbigartillery40mmsw"
	Uraniumbigartillery40mmsw.MaxAge = 720/DU_speed
	table.insert(Projectiles, Uraniumbigartillery40mmsw)
	Uraniumsplitbigartillery40mmsw = DeepCopy(UraniumCannonsw40mmCopy)
	Uraniumsplitbigartillery40mmsw.SaveName = "uraniumsplitbigartillery40mmsw"
	Uraniumsplitbigartillery40mmsw.MaxAge = 400/DU_speed
	table.insert(Projectiles, Uraniumsplitbigartillery40mmsw)
end