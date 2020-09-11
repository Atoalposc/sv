
--the description

description = "AIPlane",
modelPath = "graphics/FokkerDr1.mgm",
cock_campos1X = -0.17,
cock_campos1Y = 0.70,
cock_campos1Z = 0.0,



--the position

x = 970.0,
z = 970.0,
altitude =0.0,
yaw = 0.0,
speed = 0.0,


speedRearWheelDisengage = 100.0 , -- km/h ? used during takeoff.

--fictspeed =0.000501,
-- fictspeed =0.0000001,
--radius

-- radius = 3.,

flightplan = "flightplan1.lua",

controllers = "default\\Controllers.lua",

targetSpeed = 200. , -- initial desiredspeed for takeoff for specific airplane

rearWheelDisengageSpeed = 16.0 , -- m/s or 64.8 km/h
takeoffSpeed =           28.0, -- 100 km/h
targetTakeOffAoA = 2.2, -- degrees  or use target pitch.

