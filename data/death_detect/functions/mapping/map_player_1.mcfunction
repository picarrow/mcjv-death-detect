# AUTHOR: Picarrow

data modify entity @s text set value "{\"selector\":\"@p[tag=ddt.subject]\"}"
data modify storage death_detect:_ _.temp.mapping.text_to_parse set from entity @s text
kill @s

execute store result score #_left_pnt ddt._ run data get storage death_detect:_ _.temp.mapping.text_to_parse
scoreboard players remove #_left_pnt ddt._ 226
scoreboard players operation #_left_pnt ddt._ /= #4 ddt._
execute store result storage death_detect:_ _.temp.mapping.left_pnt int 1 run scoreboard players add #_left_pnt ddt._ 2

function death_detect:mapping/map_player_2 with storage death_detect:_ _.temp.mapping
