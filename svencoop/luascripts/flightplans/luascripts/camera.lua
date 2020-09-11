
ENU = 
{
	OF_NONE  = 0,
	OF_LAND  = 1,
	OF_SEA   = 2,
	OF_AIR   = 4,
	OF_INFANTRY = 8,
	OF_HUMANPLAYER =16,
	OF_NETHUMAN    =32,
	
	CM_SELF_X       = 1,
	CM_SELF_Y       = 2,
	CM_SELF_Z       = 4,
	CM_SELF_ROLL    = 8,
	CM_SELF_PITCH   = 16,
	CM_SELF_YAW     = 32,
	CM_OWNER_X      = 64,
	CM_OWNER_Y      = 128,
	CM_OWNER_Z      = 256,
	CM_OWNER_ROLL   = 512,
	CM_OWNER_PITCH  = 1024,
	CM_OWNER_YAW    = 2048,
	CM_TARGET_X     = 4096,
	CM_TARGET_Y     = 8192,
	CM_TARGET_Z     = 16384,
	CM_TARGET_ROLL  = 32768,
	CM_TARGET_PITCH = 65536,
	CM_TARGET_YAW   = 131072,
	CM_ZOOM         = 262144,
},


-------------------------------------------------
-- You can add yor variables HERE:
-------------------------------------------------
camCount = 5,	
	
cameras=
{

	{
		name = "freeCam",
		freedomMask = (ENU.CM_SELF_X + ENU.CM_SELF_Y + ENU.CM_SELF_Z + ENU.CM_OWNER_YAW + ENU.CM_SELF_PITCH + ENU.CM_ZOOM),
		limiterMask = (ENU.CM_ZOOM),
		
		limiters =
		{
			[0.0,0.0,0.0],  -- selfMaxXYZ
			[0.0,0.0,0.0],  -- selfMinXYZ

			[0.0,0.0,0.0],  -- ownerMaxXYZ
			[0.0,0.0,0.0],  -- ownerMinXYZ

			[0.0,0.0,0.0],  -- targMaxXYZ
			[0.0,0.0,0.0],  -- targMinXYZ

			[0.0,0.0,0.0],  -- selfMaxRPY
			[0.0,0.0,0.0],  -- selfMinRPY

			[0.0,0.0,0.0],  -- ownerMaxRPY
			[0.0,0.0,0.0],  -- ownerMinRPY

			[0.0,0.0,0.0],  -- targetMaxRPY
			[0.0,0.0,0.0],  -- targetMinRPY
		},

		zoomMax = 100.0,
		zoomMin = 30.0,
		isFree = true,
		isOrtho = false,
		ownerFilter = (ENU.OF_NONE),
		targetFilter = (ENU.OF_NONE),
		posSelf = [0.0,0.0,0.0],
		posWorld = [0.0,0.0,0.0],
		posOwner = [0.0,100.0,0.0],
		selfRPY = [0.0,0.0,0.0],
		ownerRPY = [0.0,0.0,0.0],
       		askOwnerForPosition = false,
		mustLookAt=false,
		lookAt = [0.0,0.0,0.0],
		fov = 60.0,
		angvel = 90.0,
		linvel = 1000.0,
		zoomvel = 10.0,
		canSnap = false,
		isExternal = false,
		isFlyBy = false,
		rotFasterWhenZoomedWide = true,
		panFasterWhenZoomedWide = true,
		inCockpit = false,
		canTrackIR = false,

	},
	{
		name = "pitCam",
		freedomMask = (ENU.CM_SELF_X + ENU.CM_SELF_Y + ENU.CM_SELF_Z + ENU.CM_OWNER_YAW + ENU.CM_SELF_PITCH + ENU.CM_SELF_ROLL + ENU.CM_OWNER_X + ENU.CM_OWNER_Y + ENU.CM_OWNER_Z + ENU.CM_ZOOM),
		limiterMask = (ENU.CM_OWNER_YAW + ENU.CM_SELF_PITCH + ENU.CM_ZOOM),
		
		limiters =
		{
			[0.4,0.1,0.2],  -- selfMaxXYZ
			[-0.4,-0.1,-0.2],  -- selfMinXYZ

			[0.0,0.0,0.0],  -- ownerMaxXYZ
			[0.0,0.0,0.0],  -- ownerMinXYZ

			[0.0,0.0,0.0],  -- targMaxXYZ
			[0.0,0.0,0.0],  -- targMinXYZ

			[0.0,0,170.0],  -- selfMaxRYP
			[0.0,0,-80.0],  -- selfMinRYP

			[0.0,190.0,0],  -- ownerMaxRYP
			[0.0,-190.0,0],  -- ownerMinRYP

			[0.0,0.0,0.0],  -- targetMaxRYP
			[0.0,0.0,0.0],  -- targetMinRYP
		},
		zoomMax=100.0,
		zoomMin=20.0,

		isFree=false,
		isOrtho=false,
		ownerFilter=(ENU.OF_HUMANPLAYER),
		targetFilter=(ENU.OF_AIR),
		posSelf=[0.0,0.0,0.0],
		posWorld=[0.0,0.0,0.0],
		posOwner=[0.0,0.0,0.0],
		selfRPY = [0.0,0.0,0.0],
		ownerRPY = [0.0,0.0,0.0],
		askOwnerForPosition=true,
		mustLookAt=false,
		lookAt=[0.0,0.0,0.0],
		isExternal=false,
		isFlyBy=false,
		fov=60.0,
		rotFasterWhenZoomedWide=true,
		panFasterWhenZoomedWide=false,
		canSnap=true,

		angvel=90.0,
		zoomvel=100.0,
		linvel=2.0,

		inCockpit=true,
		canTrackIR = true,
	},
	{
		name = "extCam_Air",
		freedomMask = (ENU.CM_SELF_X + ENU.CM_SELF_Y + ENU.CM_SELF_Z + ENU.CM_OWNER_YAW + ENU.CM_SELF_PITCH + ENU.CM_ZOOM),
		limiterMask = (ENU.CM_SELF_PITCH + ENU.CM_ZOOM),
		limiters =
		{
			[0.4,0.1,0.2],  -- selfMaxXYZ
			[-0.4,-0.1,-0.2],  -- selfMinXYZ

			[0.0,0.0,0.0],  -- ownerMaxXYZ
			[0.0,0.0,0.0],  -- ownerMinXYZ

			[0.0,0.0,0.0],  -- targMaxXYZ
			[0.0,0.0,0.0],  -- targMinXYZ

			[0.0,0, 89.9],  -- selfMaxRYP
			[0.0,0,-89.9],  -- selfMinRYP

			[0.0,0.0,0.0],  -- ownerMaxRYP
			[0.0,0.0,0.0],  -- ownerMinRYP

			[0.0,180.0,0],  -- targetMaxRYP
			[0.0,-180.0,0],  -- targetMinRYP
		},
		
		zoomMax=100.0,
		zoomMin=20.0,

		isFree=false;
		isOrtho=false;
		ownerFilter=(ENU.OF_AIR);
		targetFilter=(ENU.OF_AIR);
		posSelf=[0.0,0.0,0.0],
		posWorld=[0.0,0.0,0.0],
		posOwner=[0.0,0.0,0.0],
		selfRPY = [0.0,0.0,0.0],
		ownerRPY = [0.0,180.0,0.0],
		askOwnerForPosition=false,
		mustLookAt=false,
		lookAt=[0.0,0.0,0.0],
		isExternal=true;
		isFlyBy=false;
		fov=60.0;

		rotFasterWhenZoomedWide=true;
		panFasterWhenZoomedWide=true;
		canSnap=true;
		angvel=90.0;
		zoomvel=100.0;
		linvel=25.0;
		inCockpit=false;
		canTrackIR = false,
	},
	
	{
		name = "satCam",
		freedomMask = (ENU.CM_SELF_X + ENU.CM_SELF_Y + ENU.CM_SELF_Z + ENU.CM_ZOOM),
		limiterMask = (ENU.CM_ZOOM),
		limiters =
		{
			[0.4,0.1,0.2],  -- selfMaxXYZ
			[-0.4,-0.1,-0.2],  -- selfMinXYZ

			[0.0,0.0,0.0],  -- ownerMaxXYZ
			[0.0,0.0,0.0],  -- ownerMinXYZ

			[0.0,0.0,0.0],  -- targMaxXYZ
			[0.0,0.0,0.0],  -- targMinXYZ

			[0.0,0.0,89.9],  -- selfMaxRPY
			[0.0,0.0,-89.9],  -- selfMinRPY

			[0.0,0.0,0.0],  -- ownerMaxRPY
			[0.0,0.0,0.0],  -- ownerMinRPY

			[0.0,180.0,0.0],  -- targetMaxRPY
			[0.0,-180.0,0.0],  -- targetMinRPY
		},
		zoomMax=150.0;
		zoomMin=0.03;

		isFree=true;
		isOrtho=true;
		ownerFilter=(ENU.OF_NONE);
		targetFilter=(ENU.OF_NONE);
		posSelf=[0.0,0.0,0.0];
		posWorld=[0.0,0.0,0.0];
		posOwner=[0.0,10000.0,0.0];
		selfRPY = [0.0,0.0,-90.0],
		ownerRPY = [0.0,0.0,0.0],
		askOwnerForPosition=false;
		mustLookAt=false,
		lookAt=[0.0,0.0,0.0];
		isExternal=false;
		isFlyBy=false;
		fov=60.0;

		rotFasterWhenZoomedWide=false;
		panFasterWhenZoomedWide=true;
		canSnap=false;
		angvel=90.0;
		zoomvel=100.0;
		linvel=5000.0;
		inCockpit=false;
		canTrackIR = false,
	},
	{
		name = "flybyCam_Air",
		freedomMask = (ENU.CM_ZOOM),
		limiterMask = (ENU.CM_ZOOM),
		limiters =
		{
			[0.4,0.1,0.2],  -- selfMaxXYZ
			[-0.4,-0.1,-0.2],  -- selfMinXYZ

			[0.0,0.0,0.0],  -- ownerMaxXYZ
			[0.0,0.0,0.0],  -- ownerMinXYZ

			[0.0,0.0,0.0],  -- targMaxXYZ
			[0.0,0.0,0.0],  -- targMinXYZ

			[0.0,0.0,89.9],  -- selfMaxRPY
			[0.0,0.0,-89.9],  -- selfMinRPY

			[0.0,0.0,0.0],  -- ownerMaxRPY
			[0.0,0.0,0.0],  -- ownerMinRPY

			[0.0,180.0,0.0],  -- targetMaxRPY
			[0.0,-180.0,0.0],  -- targetMinRPY
		},
		zoomMax=150.0;
		zoomMin=1.0;

		isFree=false;
		isOrtho=false;
		ownerFilter=(ENU.OF_NONE);
		targetFilter=(ENU.OF_AIR);
		posSelf=[0.0,0.0,0.0];
		posWorld=[0.0,0.0,0.0];
		posOwner=[0.0,0.0,0.0];
		selfRPY = [0.0,0.0,0.0],
		ownerRPY = [0.0,0.0,0.0],
		askOwnerForPosition=false;
		mustLookAt=false,
		lookAt=[0.0,0.0,0.0];
		isExternal=false;
		isFlyBy=true;
		fov=60.0;

		rotFasterWhenZoomedWide=false;
		panFasterWhenZoomedWide=false;
		canSnap=false;
		angvel=90.0;
		zoomvel=100.0;
		linvel=1000.0;
		inCockpit=false;
		canTrackIR = false,
	},
	
	
	
},

