#Function describing water stored in a watershed/year using simplified inflow/outflow processes

waterstorage = function(precip, evap, runoff, watershed_size) {
  storage = (precip - (evap + runoff)) * watershed_size #multiply by watershed size to get volumetric storage from rate inputs: precip, evap, runoff
  precip = ifelse((precip < 0), return("Precipitation must be greater than or equal to zero"), precip)
  evap = ifelse((evap < 0), return("Evaporation cannot be negative"), evap)
  runoff = ifelse((runoff < 0), return("Runoff cannot be negative"), runoff)
  return(storage)
}
