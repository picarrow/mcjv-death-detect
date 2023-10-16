# AUTHOR: Picarrow

data modify storage death_detect:_ _.temp.checking.entry set from storage death_detect:_ _.temp.checking.map[-1]
function death_detect:checking/check with storage death_detect:_ _.temp.checking.entry

data remove storage death_detect:_ _.temp.checking.map[-1]
execute if data storage death_detect:_ _.temp.checking.map[0] run function death_detect:checking/loop
