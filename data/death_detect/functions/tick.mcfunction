# AUTHOR: Picarrow

scoreboard players set * ddt.selectable 0
scoreboard players set @e ddt.selectable 1

data modify storage death_detect:_ _.temp.checking.map set from storage death_detect:_ _.map
execute if data storage death_detect:_ _.temp.checking.map[0] run function death_detect:checking/loop

execute as @e[type=#death_detect:mobs,predicate=!death_detect:mapped] run function death_detect:mapping/map

data remove storage death_detect:_ _.temp
