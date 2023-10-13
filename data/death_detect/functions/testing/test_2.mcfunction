# AUTHOR: Picarrow

data modify entity @s NoAI set value 0b

summon minecraft:marker 0.0 0.0 0.0 {Tags:["direction"]}
data modify entity @e[tag=direction,limit=1] Rotation set from entity @p Rotation
execute as @e[tag=direction,limit=1] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[tag=direction,limit=1] at @s run tp @s ^2 ^ ^ ~ ~
data modify entity @s Motion set from entity @e[tag=direction,limit=1] Pos
kill @e[tag=direction]

data modify entity @s Motion[1] set value 0.8d
