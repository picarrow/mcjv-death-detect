# AUTHOR: Picarrow

# To run this test, append this function to the #death_detect:tick_on_death function tag
# Kill pigs and non-pigs to observe

execute if entity @s[type=minecraft:pig] run function death_detect:testing/test_1
execute if entity @s[type=!minecraft:pig] run particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 1 1 normal @a
