
-------------------------------------------------
-- You can add yor variables HERE:
-------------------------------------------------


	carname = "MK4",

      initposition =
      {
      x = 9185.0,
      z = 7370.0,
      rot = 90.0,
      },
      carparams =
      {
       dMaxSpeed = 53.5 , -- m/s
       gearboxtype = 3 , -- eAutoGearBox  
       Cx=0.20,
     Cy =0.3,
     Ro = 1.2,
     Sx = 1.3,
     Sy = 5.2,
     HeightOfCG = 0.809, -- the 
     FrontDist  = 2.2,
     RearDist   = 2.8,
     RearTrackWidth = 1.63,
     FrontTrackWidth = 1.8 ,
     Mass            = 3250.0,
     AeroddotK       = 0.,
     model = "graphics/Thornycroft.mgm"

      },

	gearbox = 
	{
		type = 1 , -- eAutoGearBox  
		nGearQty  = 1, -- five gears
		
		dGearRatios = 
		{
		-4.10, 3.59,
		
		},
		dCarMaxSpeed = 64, -- m/s
		dReverSpdLimit     = 2.0 ,
		
		 

		
	},

gamegearbox = 
{
},

     clutch =
{

K =         4.,
Kvel=       0.2,
ConstClutchTorque  = 240.0,

},

brakesystem =
{
repartition=0.65,
},

	wheel =
	{
		SuspStiffness=95218.8, -- 41000.,
sideK=4. ,
bumpRate=3000., -- 1410.,
reboundRate=3785., --1430.,
dRadiusOfTire=0.4875,
f0=0.02,
K=3.0E-6,
B=0.090009999,
initialtravel=0.37, --springLength =3.7*vd_dIntialTravel -- experimental value actually
maxangle = 20. ,
		
},
transmission =
{
transmissionEfficiency =0.9,
},

differential =
{
dDiffGearRatio=3.06,
dKoeff=0.87,
},
	body =
	{

		mass = 2000,

		length = 5,

	},

	engine = 
	{
nRpmTorqueCurveSize=16,
dRevsMax= 300. ,
dTickover=5. ,
dEngineInetria= 0.4,
dBrakeCoeff=0.85,
dBrakeCoeff2=2.5,
dTorque = 150. ,
           

	},

steering = 
{
dDeadZone=0.025,
dSlopeEnd=0.5, 
dIniSlope= 0.25,
dMaxAngle=1.6,
dAngleSpd=35.,
dMinAngle= 0.5,

},






