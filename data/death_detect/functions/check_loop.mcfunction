# AUTHOR: Picarrow

data modify storage death_detect:_ _.tentry set from storage death_detect:_ _.tmap[0]
function death_detect:check with storage death_detect:_ _.tentry

data remove storage death_detect:_ _.tmap[0]
execute if data storage death_detect:_ _.tmap[0] run function death_detect:check_loop
