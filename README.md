***Download Stable Versions from [Releases](https://github.com/picarrow/mcjv-death-detect/releases)***
# Death Detect v1.0.0
This Minecraft data pack library provides an easy method to execute as mobs that are dying (including players).
<details>
<summary>Drop-Down List of Compatible Mobs</summary>

- minecraft:allay
- minecraft:axolotl
- minecraft:bat
- minecraft:bee
- minecraft:blaze
- minecraft:camel
- minecraft:cat
- minecraft:cave_spider
- minecraft:chicken
- minecraft:cod
- minecraft:cow
- minecraft:creeper
- minecraft:dolphin
- minecraft:donkey
- minecraft:drowned
- minecraft:elder_guardian
- minecraft:ender_dragon
- minecraft:enderman
- minecraft:endermite
- minecraft:evoker
- minecraft:fox
- minecraft:frog
- minecraft:ghast
- minecraft:giant
- minecraft:glow_squid
- minecraft:goat
- minecraft:guardian
- minecraft:hoglin
- minecraft:horse
- minecraft:husk
- minecraft:illusioner
- minecraft:iron_golem
- minecraft:llama
- minecraft:magma_cube
- minecraft:mooshroom
- minecraft:mule
- minecraft:ocelot
- minecraft:panda
- minecraft:parrot
- minecraft:phantom
- minecraft:pig
- minecraft:piglin
- minecraft:piglin_brute
- minecraft:pillager
- minecraft:player
- minecraft:polar_bear
- minecraft:pufferfish
- minecraft:rabbit
- minecraft:ravager
- minecraft:salmon
- minecraft:sheep
- minecraft:shulker
- minecraft:silverfish
- minecraft:skeleton
- minecraft:skeleton_horse
- minecraft:slime
- minecraft:sniffer
- minecraft:snow_golem
- minecraft:spider
- minecraft:squid
- minecraft:stray
- minecraft:strider
- minecraft:tadpole
- minecraft:trader_llama
- minecraft:tropical_fish
- minecraft:turtle
- minecraft:vex
- minecraft:villager
- minecraft:vindicator
- minecraft:wandering_trader
- minecraft:warden
- minecraft:witch
- minecraft:wither
- minecraft:wither_skeleton
- minecraft:wolf
- minecraft:zoglin
- minecraft:zombie
- minecraft:zombie_horse
- minecraft:zombie_villager
- minecraft:zombified_piglin
</details>

## 🟧 Installation
Download the data pack from releases and install the ZIP into your data packs folder.
The ZIP does not need to be extracted.
## 🟧 How to Use
This data pack should not be modified directly, as that can contribute to compatibility issues across data packs.  
The only intended way to interface with it is by overriding the **death_detect:tick_dying** function tag.  
Functions appended to the **death_detect:tick_dying** function tag via override will execute as each dying mob of that tick.  
***Do not*** flag the json key replace as true in overriding function tags as that can also contribute to compatitbility issues.

If a function called by death_detect:tick_dying loses the dying mob from its context, it can be retrieved using macros.  
Call another function with storage **death_detect:_** and path **_.temp.checking.entry**.  
The dying mob's UUID, which can be executed as, is accessed using the macro entry **<span>$</span>(uuid)**.  
**<span>$</span>(name)**, if it's a player, and **<span>$</span>(score_holder)** are also provided.
## 🟧 Credit
Thanks to [@gibbsly](https://github.com/gibbsly), who authored the gu namespace.  
Thanks to [@CloudWolfYT](https://github.com/CloudWolfYT), who discovered a neat way to extract player names.
