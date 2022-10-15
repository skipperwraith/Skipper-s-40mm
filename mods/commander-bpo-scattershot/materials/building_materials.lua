shield = FindMaterial("shield")
if shield then
	shield.SpeedLossFactor = 0
	shield.ForcedReflection = { "cannon40mmsw" }
	shield.ForcedReflection = { "artillery40mmsw" }
	shield.ForcedReflection = { "bigcannon40mmsw" }
	shield.ForcedReflection = { "bigcannon40mmapsw" }
	shield.ForcedReflection = { "flamingcannon40mmsw" }
	shield.ForcedReflection = { "flamingartillery40mmsw" }
	shield.ForcedReflection = { "flamingbigcannon40mmsw" }
	shield.ForcedReflection = { "flamingbigcannon40mmapsw" }
end
