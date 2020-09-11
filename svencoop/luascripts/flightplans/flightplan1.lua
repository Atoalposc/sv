
naerodromes = 2,

aerodromes = 
{
  {
name ="firstAirport",

  position = {10.,100.,10. },
    direction = { 1.0,0.,0.},
    length = 300. ,
    isReverseLandingAllowed = true,

},

  {
 name ="secondAirport",

    position = {2000.,100.,20000. },
    direction = { 0.7,0.,0.3},
    length = 300. ,
    isReverseLandingAllowed = true,

},
},
      
	npoints = 4,

     points =
	{
       { 
        name="start",
        on_ground= 1,
        airport="firstAirport", -- actually could be found by proximity. if "" then the following section is read - here it is scipped
        lat =10.0,
        lon =10.0,
        alt =0.0,
        speed=0.0,
        crossat=0.0, -- minimum crossing altitude - so if not achived - keep no less than.
        time=0,  --if not specified then nothing
      wait=false,
      waitime=0, --till or wait sometime
        
         
        },

          {
           name="1",
        on_ground= 0, 
        airport="", 
        lat =1300.0, --x  is latitude
        lon =1700.0, -- z is longitude
        alt =200.0, -- above ground ( or above plane ?). the ground is 109.2 
        speed=32.0, --m/s multiply by 0,277777778 to get km/h
        crossat=100.0, -- minimum crossing altitude - so if not achived - keep no less than.
        time=0,  --if not specified then nothing
      wait=true,
      waitime=120, -- till or wait sometime -- will clarify later.

        },
       {
          name="2",
        on_ground= 0, 
        airport="", 
        lat =1700.0, --x  is latitude
        lon =2100.0, -- z is longitude
        alt =220.0, -- above ground ( or above plane ?). the ground is 109.2 
        speed=32.0, --m/s multiply by 0,277777778 to get km/h
        crossat=10.0, -- minimum crossing altitude - so if not achived - keep no less than.
        time=0,  --if not specified then nothing
      wait=true,
      waitime=120, -- till or wait sometime -- will clarify later.

        },



      {
       name="end",
        on_ground= 1,
        airport="secondAirport", -- actually could be found by proximity. if "" then the following section is read - here it is scipped
        lat =2500.0,
        lon =3000.0,
        alt =0.0,
        speed=0.0,
        crossat=0.0, -- minimum crossing altitude - so if not achived - keep no less than.
        time=0,  --if not specified then nothing
      wait=false,
      waitime=0, --till or wait sometime

        },

      }, -- end points




 } -- init table end
