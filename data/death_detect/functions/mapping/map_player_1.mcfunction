# AUTHOR: Picarrow

data modify entity @s text set value "{\"selector\":\"@p[tag=ddt.subject]\"}"
data modify storage death_detect:_ _.temp.mapping.text_to_parse set from entity @s text
kill @s

execute store result score #_len_of_name ddt._ run data get storage death_detect:_ _.temp.mapping.text_to_parse
scoreboard players remove #_len_of_name ddt._ 226
scoreboard players operation #_len_of_name ddt._ /= #4 ddt._

scoreboard players operation #_end_of_uuid ddt._ = #_len_of_name ddt._
scoreboard players operation #_end_of_uuid ddt._ += #_len_of_name ddt._
scoreboard players add #_end_of_uuid ddt._ 33
execute store result storage death_detect:_ _.temp.mapping.args.end_of_uuid int 1 run scoreboard players get #_end_of_uuid ddt._

scoreboard players operation #_start_of_uuid ddt._ = #_end_of_uuid ddt._
scoreboard players add #_start_of_uuid ddt._ 36
execute store result storage death_detect:_ _.temp.mapping.args.start_of_uuid int 1 run scoreboard players get #_start_of_uuid ddt._

scoreboard players operation #_start_of_name ddt._ = #_len_of_name ddt._
scoreboard players add #_start_of_name ddt._ 2
execute store result storage death_detect:_ _.temp.mapping.args.start_of_name int 1 run scoreboard players get #_start_of_name ddt._

function death_detect:mapping/map_player_2 with storage death_detect:_ _.temp.mapping.args
