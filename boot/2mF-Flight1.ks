SET lp TO SHIP:GEOPOSITION.
COPYPATH("0:touchdown", "touchdown").
LOCK STEERING TO UP.
LOCK THROTTLE TO 1.
STAGE.
TOGGLE GEAR.
WAIT UNTIL ORBIT:APOAPSIS > 10000.
TOGGLE RCS.
LOCK THROTTLE TO 0.
WAIT UNTIL SHIP:VERTICALSPEED < 0.
RUN TOUCHDOWN(lp).
SET SHIP:CONTROL:PILOTMAINTHROTTLE TO 0.
LOCK THROTTLE TO 0.

