# AUTHOR: Picarrow

scoreboard players set @s ddt.mapped 1

function gu:generate
data modify storage death_detect:_ _.tentry.uuid set from storage gu:main out

execute if entity @s[type=minecraft:player] summon minecraft:text_display run function death_detect:map_if_player with storage death_detect:_ _.tentry

data modify storage death_detect:_ _.map append from storage death_detect:_ _.tentry
data remove storage death_detect:_ _.tentry
