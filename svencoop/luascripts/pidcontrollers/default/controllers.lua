
--the description

description = "ControllersDefault",

--the position

numberofcontrollers = 11, -- there would be 30



controllers = 
{  { 
    type_= 0 , -- PIDController
    name = "throttleController",

   input = {
     prop = "airspeed", --km/h
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "engine[0]/throttle", --changes
    },

    reference = {
     prop =  "target-speed", -- might be missed should be "".
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.03 , --proportional gain 
   beta  =1.0 , --input value weighting factor
   alpha = 0.1 , --low pass filter weighing factor 
   gamma = 0.0 , --input value weighing factor for unfiltered derivative error 
   Ti    = 10.0 ,--integrator time
   Td=   0.00001 ,--derivator time
   Ts = 0.0 , -- default , Sampling interval
   u_min = 0.0 , -- minimum default clamp
   u_max = 1.0 , -- maximum default clamp



    --enable here I use automata ( enter exit )
    --<prop>/autopilot/locks/speed</prop> 
    --<value>speed-with-throttle</value> 

   }, -- first controller end


{ 
    type_= 0 , -- PIDController
    name = "WingLeveler", --wing leveler based on desired roll deg

   input = {
     prop = "rolldeg", --degrees (0)
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "aileron", --roll of the joystick
    },

    reference = {
     prop =  "", -- might be missed should be "". --desiredBank
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.8 ,
   beta  =1.0 ,
   alpha = 0.1 ,
   gamma = 0.0 ,
   Ti    = 10.0 ,
   Td=   0.00001 ,
   Ts = 0.02 , -- default was 0.02
   u_min = -1.0 ,
   u_max = 1.0 ,



    --enable here I use automata ( enter exit )
    --<prop>/autopilot/locks/speed</prop> 
    --<value>speed-with-throttle</value> 

   }, -- second controller end

{ 
    type_= 0 , -- PIDController
    name = "AOAhold",

   input = {
     prop = "alphaAoA", --deg (or radians ?)
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "elevator",
    },

    reference = {
     prop =  "targetAOA", --deg
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = -0.05 ,
   beta  =1.0 ,
   alpha = 0.1 ,
   gamma = 0.0 ,
   Ti    = 0.5 ,
   Td=   0.00001 ,
   Ts = 0.0 , -- default
   u_min = -1.0 ,
   u_max = 1.0 ,



    --enable here I use automata ( enter exit )
    --<prop>/autopilot/locks/speed</prop> 
    --<value>speed-with-throttle</value> 

   }, -- third controller end

{ 
    type_= 0 , -- PIDController
    name = "autolandingRateDescent", -- stage 1 of landing.

   input = {
     prop = "altitudeAboveGround", --h = Altitude - runaway altitude.
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "targetClimbrate", -- here it is target descending rate
    },

    reference = {
     prop =  "", -- might be missed should be "".
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.007, --proportional gain 
   beta  =1.0 , --input value weighting factor
   alpha = 0.1 , --low pass filter weighing factor 
   gamma = 0.0 , --input value weighing factor for unfiltered derivative error 
   Ti    = 10.0 ,--integrator time
   Td=  0.001,--derivator time
   Ts = 0.0 , -- default , Sampling interval
   u_min = -3.6 , -- minimum default clamp
   u_max = -0.10 , -- maximum default clamp



    --enable here I use automata ( enter exit )
    --<prop>/autopilot/locks/speed</prop> 
    --<value>speed-with-throttle</value> 

   }, -- forth controller end

{ 
    type_= 0 , -- PIDController
    name = "autolandingElevatorPos", --stage2 

   input = {
     prop = "veticalSpeed", --m/s ( vertical speed m/s) compared with reference climbrate
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "elevator",
    },

    reference = {
     prop =  "targetClimbrate", -- might be missed should be "".
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = -0.015, --proportional gain 
   beta  =1.0 , --input value weighting factor
   alpha = 0.1 , --low pass filter weighing factor 
   gamma = 0.0 , --input value weighing factor for unfiltered derivative error 
   Ti    = 2.0,--integrator time
   Td=   0.00001,--derivator time
   Ts = 0.8 , -- default , Sampling interval
   u_min = -1.0 , -- I think this shuold be much less minimum default clamp
   u_max = 1.0 , -- maximum default clamp



    --enable here I use automata ( enter exit )
    --<prop>/autopilot/locks/speed</prop> 
    --<value>speed-with-throttle</value> 

   }, -- fith controller end

-- two stage heading hold controller.

{ 
    type_= 0 , -- PIDController
    name = "courseHoldController1", -- stage 1 of course hold.

   input = {
     prop = "headingError", --h = Altitude - runaway altitude.
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "targetRoll", --   target roll
    },

    reference = {
     prop =  "", -- might be missed should be "".
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 2.5, --proportional gain 
   beta  =1.0 , --input value weighting factor
   alpha = 0.1 , --low pass filter weighing factor 
   gamma = 0.0 , --input value weighing factor for unfiltered derivative error 
   Ti    = 10.0 ,--integrator time
   Td=  0.001,--derivator time
   Ts = 0.0 , -- default , Sampling interval
   u_min = -35.0 , -- minimum  IMPORTANT - should be somehow combined into plane power limits 
   u_max = 35.0 , -- maximum 



    

   }, -- sith controller end
--second heading hold degree.
{ 
    type_= 0 , -- PIDController
    name = "courseHoldController2", --stage2 

   input = {
     prop = "rolldeg", --
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "aileron",
    },

    reference = {
     prop =  "targetRoll", -- might be missed should be "".
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.095, --proportional gain 
   beta  =1.0 , --input value weighting factor
   alpha = 0.1 , --low pass filter weighing factor 
   gamma = 0.0 , --input value weighing factor for unfiltered derivative error 
   Ti    = 10.0,--integrator time
   Td=   0.00001,--derivator time
   Ts = 0.03 , -- default , Sampling interval
   u_min = -1.0 , -- I think this shuold be much less minimum default clamp
   u_max = 1.0 , -- maximum default clamp


 

   }, -- seventh controller end



-- two stage speed control by pitch ( near aerodrome ) and maybe in some circunstances



{ 
    type_= 0 , -- PIDController -- the one for speed decreease . Also have something for speed increase.
    name = "speedbyPitchController1", -- stage 1 of speed by ptich  hold.

   input = {
     prop = "airspeed", --h = Altitude - runaway altitude.
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "targetPitch", --   target pitch
    },

    reference = {
     prop =  "target-speed", -- might be missed should be "".
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = -0.05, --proportional gain 
   beta  =1.0 , --input value weighting factor
   alpha = 0.1 , --low pass filter weighing factor 
   gamma = 0.0 , --input value weighing factor for unfiltered derivative error 
   Ti    = 0.05 ,--integrator time
   Td=  0.001,--derivator time
   Ts = 0.0 , -- default , Sampling interval
   u_min = -1.0 , -- minimum  IMPORTANT - should be somehow combined into plane power limits 
   u_max = 15.0 , -- maximum 



    

   }, -- eight controller end
-- second speed by pitch controller.

{ 
    type_= 0 , -- PIDController
    name = "speedbyPitchController2", --stage2 

   input = {
     prop = "pitchdeg", -- deg
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "elevator",
    },

    reference = {
     prop =  "targetPitch", -- might be missed should be "".
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = -0.001 ,--proportional gain 
   beta  =1.0 , --input value weighting factor
   alpha = 0.1 , --low pass filter weighing factor 
   gamma = 0.0 , --input value weighing factor for unfiltered derivative error 
   Ti    = 1.0,--integrator time
   Td=   0.00001,--derivator time
   Ts = 0.0 , -- default , Sampling interval
   u_min = -1.0 , -- I think this shuold be much less minimum default clamp
   u_max = 1.0 , -- maximum default clamp


 

   }, -- ninth controller end


-- rudder controller to avoid  slipping /skidding during turn ( coordinated turn ).



{ 
    type_= 0 , -- PIDController
    name = "desiredYawRateController", -- 

   input = {
     prop = "yawRate", -- deg
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "rudder",
    },

    reference = {
     prop =  "desiredyawRate", -- might be missed should be "".
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = -0.066 ,--proportional gain 
   beta  =1.0 , --input value weighting factor
   alpha = 0.1 , --low pass filter weighing factor 
   gamma = 0.0 , --input value weighing factor for unfiltered derivative error 
   Ti    = 1.0,--integrator time
   Td=   0.00001,--derivator time
   Ts = 0.0 , -- default , Sampling interval
   u_min = -1.0 , -- I think this shuold be much less minimum default clamp
   u_max = 1.0 , -- maximum default clamp


 

   }, -- tenth controller end

-- rudder controller to avoid  slipping /skidding during start up .



{ 
    type_= 0 , -- PIDController
    name = "takeoffYawController", -- 

   input = {
     prop = "yaw", -- deg
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "rudder",
    },

    reference = {
     prop =  "targetyaw", -- might be missed should be "".
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = 0.0066 ,--proportional gain 
   beta  =1.0 , --input value weighting factor
   alpha = 0.1 , --low pass filter weighing factor 
   gamma = 0.0 , --input value weighing factor for unfiltered derivative error 
   Ti    = 1.0,--integrator time
   Td=   0.00001,--derivator time
   Ts = 0.0 , -- default , Sampling interval
   u_min = -1.0 , -- I think this shuold be much less minimum default clamp
   u_max = 1.0 , -- maximum default clamp


 

   }, -- eleventh controller end





 

}, --controllers end

numberoffilters = 0, -- here filters will follow.

filters =
{ 1,
},





