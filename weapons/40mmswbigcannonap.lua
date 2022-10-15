Scale = 1
SelectionWidth = 120.0
SelectionHeight = 55.0
SelectionOffset = { -54, -55.5 } -- { -18, -55.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -60 },
}
CanFlip = false

WeaponMass = 240.0
HitPoints = 640.0
EnergyProductionRate = 0-- -4.0
MetalProductionRate = -1
EnergyStorageCapacity = 0
MetalStorageCapacity = 0 -- -300.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 150
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 120
IncendiaryRadiusHeated = 150
StructureSplashDamage = 200
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/fire_40mmcannon.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = path .. "/effects/cannon40mm_explode.lua"
ShellEffect = path .. "/effects/shell_eject_cannon40mm.lua"
ReloadEffect = path .. "/effects/reload_cannon40mm.lua"
ReloadEffectOffset = -1.5
ShellEffectOffset = -2
Projectile = "bigcannon40mmapsw"
BarrelLength = 120.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 30.0
ReloadTimeIncludesBurst = false
MinFireSpeed = 4000.0
MaxFireSpeed = 8000.0
MinFireRadius = 600.0
MaxFireRadius = 1800.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -32
MaxFireAngle = 32
KickbackMean = 40
KickbackStdDev = 5
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.005
FireStdDevAuto = 0.005
Recoil = 800000
EnergyFireCost = 3200 --2000.0
MetalFireCost = 160 --100.0
DoorCloseDelay = 1.25
AutofireCloseDoorTicks = DoorCloseDelay

ShowFireAngle = true
ShowFirePower = true

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

BarrelRecoilLimit = -0.1
BarrelRecoilSpeed = -1.5
BarrelReturnForce = 1

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "bigcannon40mmapsw-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/40mmcannon/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "bigcannon40mmapsw-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/40mmcannon/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "bigcannon40mmapsw-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/40mmcannon/40mmcannonbarrelap.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "bigcannon40mmapsw-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim01.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim02.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim03.png", duration = 8.02 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim04.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim05.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim06.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim07.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim08.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim09.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim11.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim11.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim11.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim11.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim11.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim10.png", duration = 0.5 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim12.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim01.png", duration = 5 },
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
		},
	}
}

Root =
{
	Name = "Cannon",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0 },
	Sprite = "bigcannon40mmapsw-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.1, -0.2 },
			PivotOffset = { 0.1, 0 },
			Sprite = "bigcannon40mmapsw-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { -0.515, 0.05},
					PivotOffset = { 0.78, 0.1575 },
					Sprite = "bigcannon40mmapsw-barrel",
					UserData = 100,
					
					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0, 0.2},
							PivotOffset = { 0, 0 },
						},
						{
							Name = "Chamber",
							Angle = 0,
							Pivot = { -0.17, -0.15 },
							PivotOffset = { 0, 0 },
						},
					},
				},
				{
					Name = "ReloadAnim",
					Angle = 0,
					Pivot = { -0.515, -0.3},
					PivotOffset = { 0.35, 0 },
					Sprite = "bigcannon40mmapsw-reload",
					UserData = 100,
				},
			},
		},
	},
}
