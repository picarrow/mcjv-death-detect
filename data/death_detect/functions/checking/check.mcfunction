# AUTHOR: Picarrow

scoreboard players set #_found ddt._ 0
$execute as $(ref) run function death_detect:checking/found
execute if score #_found ddt._ matches 0 run function death_detect:checking/not_found with storage death_detect:_ _.temp.checking.entry
