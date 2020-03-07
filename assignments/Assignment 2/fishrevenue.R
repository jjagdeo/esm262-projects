# Function to calculate fish revenue per location
# Inputs: Table with fish prices and table with fish counts per location
# Outputs: Most frequently caught fish in each location, total revenue for each location, and total fisheries revenue sum
# Option output: By user request, generate graph of revenue by location and total revenue (as text)

fishrevenue = function(fish_cost, fish_locations) {
  fish_locations = as.factor(fish_locations)
  nspecies = summary(fish_locations$possible_fish)
  most_frequent = which.max(summary(fish_locations))
  dominant = names(summary(fish_locations))
  return(list(num = nspecies, dominant = dominant, most_frequent = most_frequent))
}