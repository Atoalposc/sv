
--the description

description = "ControllersDefault",

--the position

numberofcontrollers = 2, -- there would be 30



controllers = 
{  { 
    type_= 0 , -- PIDController
    name = "forceController",

   input = {
     prop = "curSpeed", --m/s
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "controlForce", --changes
    },

    reference = {
     prop =  "targetSpeed", -- might be missed should be "".
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  =  2000. , --proportional gain 
   beta  =1.0 , --input value weighting factor
   alpha = 0.1 , --low pass filter weighing factor 
   gamma = 1.0 , --input value weighing factor for unfiltered derivative error 
   Ti    = 10.0 ,--integrator time
   Td=   0.00001 ,--derivator time
   Ts = 0.0 , -- default , Sampling interval
   u_min = -40000.0 , -- minimum default clamp
   u_max =  40000.0 , -- maximum default clamp



    --enable here I use automata ( enter exit )
    --<prop>/autopilot/locks/speed</prop> 
    --<value>speed-with-throttle</value> 

   }, -- first controller end


{ 
    type_= 0 , -- PIDController
    name = "rotController", --wing leveler based on desired roll deg

   input = {
     prop = "headingError", --degrees (0) --slip angle on wheels.
     scale = 1.,
     },

numberofoutput=1,

   output= {
           "wheelPos", --fromWheelPos compute forces on wheels ( depending on slip angles )
    },

    reference = {
     prop =  "", -- might be missed should be "". --if input was error - but it is no
     value = 0.0, 
     scale = 1.,
     offset =0.,
   },
  

   Kp  = -0.1 ,
   beta  =1.0 ,
   alpha = 0.1 ,
   gamma = 1.0 ,
   Ti    = 10.0 ,
   Td=   0.00001 ,
   Ts = 0.0 , -- default was 
   u_min = -1.0 ,
   u_max = 1.0 ,



    --enable here I use automata ( enter exit )
    --<prop>/autopilot/locks/speed</prop> 
    --<value>speed-with-throttle</value> 

   }, -- second controller end
},

numberoffilters = 0, -- here filters will follow.

filters =
{ 1,
},




