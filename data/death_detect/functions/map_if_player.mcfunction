# AUTHOR: Picarrow

$data modify entity @s text set value "{\"selector\":\"$(uuid)\"}"
data modify storage death_detect:_ _.tselector.text set from entity @s text
kill @s

execute store result score #_left_pnt ddt._ run data get storage death_detect:_ _.tselector.text
scoreboard players remove #_left_pnt ddt._ 226
scoreboard players operation #_left_pnt ddt._ /= #4 ddt._
execute store result storage death_detect:_ _.tselector.left_pnt int 1 run scoreboard players add #_left_pnt ddt._ 2

function death_detect:map_if_player_grab_name with storage death_detect:_ _.tselector

data remove storage death_detect:_ _.tselector
