
ENU = 
{
	OF_NONE  = 0,
	OF_LAND  = 1,
	OF_SEA   = 2,
	OF_AIR   = 4,
	OF_INFANTRY = 8,
	OF_HUMANPLAYER =16,
	OF_NETHUMAN    =32,
},


angspeed = 1.0,
linspeed = 1.0,
zoomspeed = 1.0,

slowLinear  = 0.02,	
fastLinear  = 20.0,
slowAngular = 0.2,
fastAngular = 2.0,
slowZoom = 1.0,
fastZoom = 1.0,

POVAngMul   = 0.5,
POVLinMul   = 1.0,
POVZoomMul  = 1.0,
MouseAngMul = 0.005,
MouseLinMul = 0.0025,
MouseZoomMul= 0.000025,
KeybAngMul  = 1.0,
KeybLinMul  = 1.0,
KeybZoomMul = 1.0,
JoyAngMul   = 1.0,
JoyLinMul   = 1.0,
JoyZoomMul  = 1.0,

-------------------------------------------------
-- You can add yor variables HERE:
-------------------------------------------------
setCount = 5,	
	
camsets=
{

	-- set 1
	{
		actionName = "freeCam",
		camCount = 1,
		behaviors =
		{
			{
				camName = "freeCam",
				isBoundToNamedRT=false,
				renderTargetName="",
				cycleOwners=false,
				cycleLockTargets=false,
				ownerFilter=(ENU.OF_NONE),
				targetFilter=(ENU.OF_NONE),
				mustSetViewPort=false,
				viewPortLeft=-1.0,
				viewPortRight=1.0,
				viewPortTop=-1.0,
				viewPortBottom=1.0,
			},

		 },
		
	},
	
	-- set 2
	{
		actionName = "pitCam",
		camCount = 1,
		behaviors =
		{
			{
				camName = "pitCam",
				isBoundToNamedRT=false,
				renderTargetName="",
				cycleOwners=false,
				cycleLockTargets=false,
				ownerFilter=(ENU.OF_HUMANPLAYER),
				targetFilter=(ENU.OF_NONE),
				mustSetViewPort=false,
				viewPortLeft=-1.0,
				viewPortRight=1.0,
				viewPortTop=-1.0,
				viewPortBottom=1.0,
			},
		},
	},
	
	-- set 3
	{
		actionName = "extCam_Air",
		camCount = 1,
		behaviors =
		{
			{
				camName = "extCam_Air",
				isBoundToNamedRT=false,
				renderTargetName="",
				cycleOwners=true,
				cycleLockTargets=true,
				ownerFilter=(ENU.OF_AIR),
				targetFilter=(ENU.OF_AIR),
				mustSetViewPort=false,
				viewPortLeft=-1.0,
				viewPortRight=1.0,
				viewPortTop=-1.0,
				viewPortBottom=1.0,
			},
		},
	},
	
	-- set 4
	{
		actionName = "satCam",
		camCount = 1,
		behaviors =
		{
			{
				camName = "satCam",
				isBoundToNamedRT=false,
				renderTargetName="",
				cycleOwners=false,
				cycleLockTargets=false,
				ownerFilter=(ENU.OF_NONE),
				targetFilter=(ENU.OF_NONE),
				mustSetViewPort=false,
				viewPortLeft=-1.0,
				viewPortRight=1.0,
				viewPortTop=-1.0,
				viewPortBottom=1.0,
			},
		},
	},
	
	-- set 5
	{
		actionName = "flybyCam_Air",
		camCount = 1,
		behaviors =
		{
			{
				camName = "flybyCam_Air",
				isBoundToNamedRT=false,
				renderTargetName="",
				cycleOwners=false,
				cycleLockTargets=false,
				ownerFilter=(ENU.OF_NONE),
				targetFilter=(ENU.OF_AIR),
				mustSetViewPort=false,
				viewPortLeft=-1.0,
				viewPortRight=1.0,
				viewPortTop=-1.0,
				viewPortBottom=1.0,
			},
		},
	},
	

},