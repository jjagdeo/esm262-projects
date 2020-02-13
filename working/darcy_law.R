darcy_law = function(hydraulic_conductivity, cross_section_area, hydraulic_head) {
  result = -hydraulic_conductivity*cross_section_area*hydraulic_head
  return(result)
}