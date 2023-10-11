# AUTHOR: Picarrow

scoreboard players set * ddt.selectable 0
scoreboard players set @e ddt.selectable 1

data modify storage death_detect:_ _.tmap set from storage death_detect:_ _.map
execute if data storage death_detect:_ _.tmap[0] run function death_detect:check_loop
data remove storage death_detect:_ _.tmap
data remove storage death_detect:_ _.tentry

execute as @e[type=#death_detect:mobs,predicate=!death_detect:mapped] run function death_detect:map
