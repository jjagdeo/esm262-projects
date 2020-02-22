recurrence = function(total_yrs, magnitude_rank) {
  interval = ((1 + total_yrs)/magnitude_rank)
  total_yrs = ifelse((total_yrs < 0), return("Total years must be greater than zero"))
  return(interval)
}