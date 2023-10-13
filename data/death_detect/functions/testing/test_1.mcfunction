# AUTHOR: Picarrow

execute if entity @s[nbt={DeathTime:0s}] run function death_detect:testing/test_2

execute store result score #_rot ddt._ run data get entity @s Rotation[0] 100
scoreboard players add #_rot ddt._ 6000
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #_rot ddt._

execute if entity @s[nbt={DeathTime:16s}] run function death_detect:testing/test_3

playsound minecraft:entity.pig.ambient neutral @a ~ ~ ~ 1.5 2 0
