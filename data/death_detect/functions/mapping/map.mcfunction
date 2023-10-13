# AUTHOR: Picarrow

scoreboard players set @s ddt.mapped 1

execute if entity @s[type=minecraft:player] run function death_detect:mapping/map_player
execute if entity @s[type=!minecraft:player] run function death_detect:mapping/map_non_player

data modify storage death_detect:_ _.map append from storage death_detect:_ _.temp.mapping.entry
