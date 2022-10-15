Scale = 0.75
SelectionWidth = 160.0
SelectionHeight = 130.0
SelectionOffset = { 0.0, -140.0 }
Mass = 160.0
HitPoints = 200.0
EnergyProductionRate = -45
MetalProductionRate = 36 -- 3x3 tiles
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
NeutralColour = 1
DestroyEffect = "effects/derrick_explode.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "derrick_anim_40mmsw",
		InitialState = "Normal",

		States =
		{
			Normal =
			{
				RandomStartFrame = true,
				Frames =
				{
					{ texture = "devices/derrick/DerrickArm01.png" },
					{ texture = "devices/derrick/DerrickArm02.png" },
					{ texture = "devices/derrick/DerrickArm03.png" },
					{ texture = "devices/derrick/DerrickArm04.png" },
					{ texture = "devices/derrick/DerrickArm05.png" },
					{ texture = "devices/derrick/DerrickArm06.png" },
					{ texture = "devices/derrick/DerrickArm07.png" },
					{ texture = "devices/derrick/DerrickArm08.png" },
					{ texture = "devices/derrick/DerrickArm09.png" },
					{ texture = "devices/derrick/DerrickArm08.png" },
					{ texture = "devices/derrick/DerrickArm07.png" },
					{ texture = "devices/derrick/DerrickArm06.png" },
					{ texture = "devices/derrick/DerrickArm05.png" },
					{ texture = "devices/derrick/DerrickArm04.png" },
					{ texture = "devices/derrick/DerrickArm03.png" },
					{ texture = "devices/derrick/DerrickArm02.png" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
			Idle = Normal,
		},
	},
	{
		Name = "flag_team1_40mmsw",
		InitialState = "Normal",

		States =
		{
			Normal =
			{
				RandomStartFrame = true,
				Frames =
				{
					{ texture = "devices/derrick/FlagBlue01.png" },
					{ texture = "devices/derrick/FlagBlue02.png" },
					{ texture = "devices/derrick/FlagBlue03.png" },
					{ texture = "devices/derrick/FlagBlue04.png" },
					{ texture = "devices/derrick/FlagBlue05.png" },
					{ texture = "devices/derrick/FlagBlue06.png" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
			Idle = Normal,
		},
	},
	{
		Name = "flag_team2_40mmsw",
		InitialState = "Normal",

		States =
		{
			Normal =
			{
				RandomStartFrame = true,
				Frames =
				{
					{ texture = "devices/derrick/FlagRed01.png" },
					{ texture = "devices/derrick/FlagRed02.png" },
					{ texture = "devices/derrick/FlagRed03.png" },
					{ texture = "devices/derrick/FlagRed04.png" },
					{ texture = "devices/derrick/FlagRed05.png" },
					{ texture = "devices/derrick/FlagRed06.png" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
			Idle = Normal,
		},
	},
	{
		Name = "derrick-base_40mmsw",
		States =
		{
			Normal = { Frames = { { texture = "devices/derrick/base.tga" }, mipmap = true, }, },
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Derrick",
		EffectPath = "effects/derrick_ambient.lua",
	},
}

Root =
{
	Name = "Derrick",
	Angle = 0,
	Pivot = { 0, -0.32 },
	PivotOffset = { 0, 0 },
	Sprite = "derrick-base_40mmsw",
	
	ChildrenBehind =
	{
		{
			Name = "Arm",
			Angle = 0,
			Pivot = { -0.2, 0.15 },
			PivotOffset = { 0, 0 },
			Sprite = "derrick_anim_40mmsw",
		},
		{
			Name = "FlagTeam1",
			Angle = 0,
			Pivot = { 0.25, -0.2 },
			PivotOffset = { 0, 0 },
			Sprite = "flag_team1_40mmsw",
		},
		{
			Name = "FlagTeam2",
			Angle = 0,
			Pivot = { 0.25, -0.2 },
			PivotOffset = { 0, 0 },
			Sprite = "flag_team2_40mmsw",
		},
	},
}
