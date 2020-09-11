description = "ControllersDefault",


numberofcontrollers = 13, 



controllers = 
{  
  { 
    type_ = 0 , 
    name = "throttleController",

   input = 
   {
     prop = "airspeed", 
     scale = 1.,
     },

numberofoutput=1,

   output= 
   {
           "engine0throttle", 
    },

    reference = 
{
     prop =  "target-speed", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.03 ,
   beta  =1.0 , 
   alpha = 0.1 , 
   gamma = 0.0 , 
   Ti    = 10.0 ,
   Td=   0.00001 ,
   Ts = 0.0 , 
   u_min = 0.0 , 
   u_max = 1.0 , 

   }, 


{ 
    type_ = 0 , 
    name = "WingLeveler",

   input = 
    {
     prop = "roll", 
     scale = 1.,
     },

numberofoutput=1,

   output = 
    {
           "aileron", 
    },

    reference = 
    {
     prop =  "", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 15.,
   beta  =1.0 ,
   alpha = 0.1 ,
   gamma = 0.0 ,
   Ti    = 10.0 ,
   Td=   0.00001 ,
   Ts = 0.00 , 
   u_min = -1.0 ,
   u_max = 1.0 ,





   }, 


{ 
    type_= 0 , 
    name = "AOAhold",

   input = 
    {
     prop = "alphaAoA", 
     scale = 1.,
     },

numberofoutput=1,

   output= 
    {
           "elevator",
    },

    reference = 
   {
     prop =  "targetAOA", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = -0.0005 ,
   beta  =1.0 ,
   alpha = 0.1 ,
   gamma = 0.0 ,
   Ti    = 0.5 ,
   Td=   0.00001 ,
   Ts = 0.0 , 
   u_min = -1.0 ,
   u_max = 1.0 ,

   }, 

{ 
    type_ = 0 , 
    name = "autolandingRateDescent", 

   input = 
   {
     prop = "altitudeAboveGround", 
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "targetClimbrate", 
    },

    reference = {
     prop =  "", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.007, 
   beta  =1.0 , 
   alpha = 0.1 , 
   gamma = 0.0 , 
   Ti    = 10.0 ,
   Td=  0.001,
   Ts = 0.0 , 
   u_min = -3.6 , 
   u_max = -0.10 , 



   }, 

{ 
    type_= 0 , 
    name = "autolandingElevatorPos", 

   input = 
   {
     prop = "veticalSpeed", 
     scale = 1.,
     },

numberofoutput=1,

   output= 
    {
           "elevator",
    },

    reference = 
   {
     prop =  "targetClimbrate", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = -0.015, 
   beta  =1.0 , 
   alpha = 0.1 , 
   gamma = 0.0 , 
   Ti    = 2.0,
   Td=   0.00001,
   Ts = 0.8 , 
   u_min = -1.0 , 
   u_max = 1.0 , 



   }, 


{ 
    type_ = 0 , 
    name = "courseHoldController1", 

   input = 
   {
     prop = "headingError", 
     scale = 1.,
     },

numberofoutput=1,

   output = 
   {
           "targetRoll", 
    },

    reference = 
    {
     prop =  "", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 2.5, 
   beta  =1.0 , 
   alpha = 0.1 , 
   gamma = 0.0 , 
   Ti    = 10.0 ,
   Td=  0.001,
   Ts = 0.0 , 
   u_min = -35.0 , 
   u_max = 35.0 , 


   }, 
{ 
    type_ = 0 , 
    name = "courseHoldController2", 

   input = 
    {
     prop = "rolldeg", 
     scale = 1.,
     },

numberofoutput = 1,

   output= 
   {
           "aileron",
    },

    reference = 
    {
     prop =  "targetRoll", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.095, 
   beta  =1.0 , 
   alpha = 0.1 ,
   gamma = 0.0 , 
   Ti    = 10.0,
   Td=   0.00001,
   Ts = 0.00 , 
   u_min = -1.0 , 
   u_max = 1.0 , 

   }, 

{ 
    type_= 0 , 
    name = "speedbyPitchController1", 

   input = 
{
     prop = "airspeed", 
     scale = 1.,
},

numberofoutput=1,

   output= 
   {
           "targetPitch", 
    },

    reference = 
    {
     prop =  "target-speed", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = -0.05, 
   beta  =1.0 , 
   alpha = 0.1 , 
   gamma = 0.0 , 
   Ti    = 0.05 ,
   Td=  0.001, 
   Ts = 0.0 , 
   u_min = -1.0 , 
   u_max = 15.0 , 

   }, 

{ 
    type_ = 0 , 
    name = "speedbyPitchController2", 

   input = 
   {
     prop = "pitchdeg", 
     scale = 1.,
     },

numberofoutput=1,

   output= 
  {
           "elevator",
    },

    reference = 
    {
     prop =  "targetPitch", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.005 ,
   beta  =1.0 , 
   alpha = 0.1 , 
   gamma = 0.0 , 
   Ti    = 1.0, 
   Td=   0.00001, 
   Ts = 0.0 , 
   u_min = -1.0 , 
   u_max = 1.0 , 


   }, -- ninth controller end





{ 
    type_ = 0 , -- PIDController
    name = "desiredYawRateController", 

   input = 
    {
     prop = "yawRate", 
     scale = 1.,
     },

numberofoutput=1,

   output= 
   {
           "rudder",
    },

    reference = 
    {
     prop =  "desiredyawRate", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.896 ,
   beta  =1.0 , 
   alpha = 0.1 , 
   gamma = 0.0 , 
   Ti    = 1.0,
   Td=   0.00001,
   Ts = 0.0 , 
   u_min = -1.0 , 
   u_max = 1.0 , 

  }, 


{ 
    type_ = 0 , 
    name = "takeoffYawController",  

   input = 
   {
     prop = "yaw", 
     scale = 1.,
     },

numberofoutput=1,

   output= 
   {
           "rudder",
    },

    reference = 
    {
     prop =  "targetyaw", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.0066 ,
   beta  =1.0 , 
   alpha = 0.1 , 
   gamma = 0.0 , 
   Ti    = 1.0, 
   Td=   0.00001, 
   Ts = 0.0 , 
   u_min = -1.0 , 
   u_max = 1.0 , 


 

   }, 

{ 
    type_ = 0 , 
    name = "autoaltitudeElevatorPos",

   input = 
    {
     prop = "altitudeAboveGround", 
     scale = 1.,
     },

numberofoutput=1,

   output= 
   {
           "elevator",
    },

    reference = 
    {
     prop =  "targetaltitude", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.025 ,
   beta  =1.0 ,
   alpha = 0.1 ,
   gamma = 0.0 ,
   Ti    = 0.5 ,
   Td=   0.00001 ,
   Ts = 0.0 , 
   u_min = -1.0 ,
   u_max = 1.0 ,


  }, -- 13th controller end
{ 
    type_ = 0 , 
    name = "pitchDescend",

   input = 
    {
     prop = "pitch", 
     scale = 1.,
     },

numberofoutput=1,

   output= 
   {
           "elevator",
    },

    reference = 
   {
     prop =  "targetPitch", 
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.85 ,
   beta  =1.0 ,
   alpha = 0.1 ,
   gamma = 0.0 ,
   Ti    = 0.5 ,
   Td=   0.00001 ,
   Ts = 0.0 , 
   u_min = -1.0 ,
   u_max = 1.0 ,



   

   }, 


}, 

numberoffilters = 0, 

filters =
{ 1,
},








 



