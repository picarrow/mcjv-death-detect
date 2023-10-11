# AUTHOR: Picarrow

data modify storage death_detect:_ _.loaded set value 1b

scoreboard objectives add ddt._ dummy
scoreboard objectives add ddt.mapped dummy
scoreboard objectives add ddt.selectable dummy

scoreboard players set #4 ddt._ 4
