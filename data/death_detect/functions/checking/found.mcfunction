# AUTHOR: Picarrow

scoreboard players set #_found ddt._ 1
execute if score @s ddt.selectable matches 0 at @s run function #death_detect:tick_dying
