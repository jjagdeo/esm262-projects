waterstorage = function(inflow, precip, evap, infiltrat, outflow) {
  storage = inflow + precip - evap - infiltrat - outflow
  precip = ifelse((precip < 0), return("Precipitation must be greater than or equal to zero"), precip)
  evap = ifelse((evap < 0), return("Evaporation cannot be negative"), evap)
  return(storage)
}