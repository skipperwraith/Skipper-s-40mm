Scale = 1
SelectionWidth = 90
SelectionHeight = 55
SelectionOffset = { -18, -55.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -60 },
}
CanFlip = false

WeaponMass = 160.0
HitPoints = 320.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = true
IncendiaryRadius = 100
IncendiaryRadiusHeated = 120
StructureSplashDamage = 160
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/fire_40mmcannon.lua"

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = path .. "/effects/40mmcannon_explode.lua"
ShellEffect = path .. "/effects/shell_eject_40mmcannon.lua"
ReloadEffect = path .. "/effects/reload_40mmcannon.lua"
RetriggerFireEffect = true
ReloadEffectOffset = -4
Projectile = "cannon40mmsw"
BarrelLength = 100.0
ReloadTimeIncludesBurst = false
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 30.0
MinFireSpeed = 6000.0
MaxFireSpeed = 6000.1
MinFireRadius = 600.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -36
MaxFireAngle = 36
KickbackMean = 40
KickbackStdDev = 5
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.02
FireStdDevAuto = 0.02
Recoil = 600000
EnergyFireCost = 3600
MetalFireCost = 72
RoundsEachBurst = 6
RoundPeriod = 0.21
DoorCloseDelay = 1.25
AutofireCloseDoorTicks = DoorCloseDelay*25

IgnorePlatformSlope = true

ShowFireAngle = true
ShowFirePower = true

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

BarrelRecoilLimit = -0.15
BarrelRecoilSpeed = -1.5
BarrelReturnForce = 1

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "40mmcannonsw-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/40mmcannon/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "40mmcannonsw-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/40mmcannon/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "40mmcannonsw-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/40mmcannon/40mmbarrel.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "40mmcannonsw-reload",
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
					{ texture = path .. "/weapons/40mmcannon-reload/40mmReloadAnim03.png", duration = 28.02 },
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
	},
	{
		Name = "40mmbposccannonsw-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim01.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim02.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim03.png", duration = 28.02 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim04.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim05.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim06.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim07.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim08.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim09.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim11.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim11.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim11.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim11.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim11.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim10.png", duration = 0.05 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim10.png", duration = 0.5 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim12.png", duration = 0.1 },
					{ texture = path .. "/weapons/40mmcannon-reload/40mmbposcReloadAnim01.png", duration = 5 },
					mipmap = true,
					duration = 0.2,
				},
				NextState = "Normal",
			},
		},
	},
}

Root =
{
	Name = "Cannon",
	Angle = 0,
	Pivot = { -0.06, -0.57 },
	PivotOffset = { 0, 0 },
	Sprite = "40mmcannonsw-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.1, -0.2 },
			PivotOffset = { 0.1, 0 },
			Sprite = "40mmcannonsw-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { -0.515, 0.05},
					PivotOffset = { 0.5, 0 },
					Sprite = "40mmcannonsw-barrel",
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
					Name = "40mmswReloadAnim",
					Angle = 0,
					Pivot = { -0.515, -0.3},
					PivotOffset = { 0.5, 0 },
					Sprite = "40mmcannonsw-reload",
					UserData = 100,
				},
			},
		},
	},
}
