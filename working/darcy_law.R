darcy_law = function(hydraulic_conductivity, cross_section_area, hydraulic_head) {
  
  if (cross_section_area < 0) return("Cross section area cannot be negative")
  
  if (hydraulic_head > 1000000) return("Reconsider hydraulic head value")
  
  result = -hydraulic_conductivity*cross_section_area*hydraulic_head
  
  return(result)
  
}