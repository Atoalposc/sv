-------------------------[[ General world parameters ]]-------------------------
-------------------------------------------------------------------------------

-------------------------[[ Human plane  parameters ]]-------------------------
-------------------------------------------------------------------------------
-------------------------------------------------
-- DO NOT MODIFY FOLLOWING LINES:
-------------------------------------------------

function Init(varpath)



local initable =
{

-------------------------------------------------
-- You can add yor variables HERE:
-------------------------------------------------

--the description

description = "humanPlane",
modelPath = "graphics/FokkerDr1.mgm",
cockpitPath = "graphics/FokkerDr1_Cockpit.mgm",

SoundScriptPath ="LuaScripts/Fokker_DR1.lua",
ReactCallBackClass="FokkerDrIReactCallBackClass",


cock_campos1X = -0.17,
cock_campos1Y = 0.70,
cock_campos1Z = 0.0,

modelPath2 = "graphics/Camel.mgm",
cockpitPath2 = "graphics/Camel_Cockpit.mgm",
cock_campos2X = -0.50,
cock_campos2Y = 0.72,
cock_campos2Z = 0.0,




--the position

x = 8830.0,
z = 7980.0,
altitude = 0.0,
yaw = 0.0,
speed = 0.0,

-- Atmosphere

wind = 0.0,
direction = 180.0,
turbulence = 0.0,

--fictspeed =0.000501,
fictspeed =0.0000001,
--radius

radius = 3.,

-------------------------------------------------
-- DO NOT CHANGE ANYTHING AFTER THIS LINE
-------------------------------------------------
}


		varpath = varpath .. ":"
		
		local out = initable

		while string.find(varpath,':') do
			
			dotpos = string.find(varpath,':')

			--print(varpath)
			--print(dotpos)
            
tn = string.sub(varpath,0,dotpos-1)

local convertible = tonumber(tn)

if convertible == nil then
             out = out[tn]	
else
out = out[convertible]

end

	
			--out = out[tn]		
			--print(out)

			varpath = string.sub(varpath,dotpos+1)
		end


		return out



end




