##
 # tick.mcmeta.mcfunction
 # 
 #
 # Created by KKMNNOIR.


### There are generic commands.

##
# in Mushroom island
# Sometimes Brown Mooshroom spawns.
execute as @e[type=mooshroom,predicate=vanilla_plus:in_mushroom_island,tag=!brownDone,nbt={Type:"red"}] run function vanilla_plus:mushroom_island/brown

# in Icy Chasm -- Replace Skeleton with Stray
execute as @e[type=skeleton,predicate=vanilla_plus:in_nether_frost,tag=!Done] at @s run function vanilla_plus:nether_frost/replace_stray

# Ice creeper
execute as @e[type=creeper,predicate=vanilla_plus:in_nether_frost,tag=!IcyCreeper] at @s run tag @s add IcyCreeper
execute as @e[tag=IcyCreeper] at @s run function vanilla_plus:nether_frost/icy_creeper_ambient

#Frozen Zombie spawns
execute as @e[type=zombie,predicate=vanilla_plus:in_nether_frost,tag=!FrozenZombie] at @s run data merge entity @s {CustomName:'{"text": "Frozen Zombie","color": "#315CD4","bold": true,"italic": false}',Tags:["FrozenZombie"],PersistenceRequired:0b,Team:"NameHidden"}
##Frozen Zombie attacks with snowball
execute as @e[tag=FrozenZombie] at @s run function vanilla_plus:nether_frost/frozen_zombie_ambient

# Frozen Zombie's snowball
execute as @e[tag=SnowballAttack] at @s run particle dust 0.788 0.953 1.000 2 ~ ~ ~ 0 0 0 1 0 force

## in Blackstone biomes 
# Some Wither Skeletons equip bows - Wither Snake.
execute as @e[type=minecraft:wither_skeleton,tag=!changeDone,predicate=vanilla_plus:in_blackstone] at @s run function vanilla_plus:blackstone/check_chance

# This bow gives Wither effect to arrow.
# execute as @e[type=arrow,nbt={inGround:0b}] at @s if entity @e[distance=..5,predicate=vanilla_plus:hand_wither_snake] unless data entity @s Potion run data merge entity @s {Color:0,CustomPotionEffects:[{Id:20b,Amplifier:1b,Duration:100}],Potion:"minecraft:empty"}

# Ruined Portal -- Replace Netherrack with Other blocks to match terrain.
execute as @e[type=minecraft:armor_stand,tag=Replacer] at @s run function vanilla_plus:replace_portal_blocks

## Diamond Forest -- Hoglin jockey
execute as @e[type=zoglin,tag=!vpCheckedSpawned,predicate=vanilla_plus:in_diamond_forest] run function vanilla_plus:diamond_cave/spawn_check_ground
execute as @e[type=hoglin,predicate=vanilla_plus:in_diamond_forest,tag=!Done] at @s run function vanilla_plus:diamond_cave/ride_pigman

## Modified Pillager Outpost
# Sometimes, Witches throw lingering potion
execute as @e[type=potion,predicate=vanilla_plus:linger_chance] at @s if entity @e[type=witch,tag=OutpostWarrior,distance=..3] run data modify entity @s Item.id set value "minecraft:lingering_potion"

## Desert Pillager Outpost
# Open cage
execute as @e[type=item_frame,tag=vpButtonDetector,tag=!vpOpened] at @s if block ^ ^ ^ #buttons[powered=true] run function vanilla_plus:pillager_outpost/desert/open_cage/open_1

# Fill a well with water
execute as @e[tag=vpFillWater] at @s run function vanilla_plus:pillager_outpost/desert/fill_water

## Snowy Pillager castle
# unless block ~ ~ ~ beacon kill itself
execute as @e[tag=vpDebuffer] at @s unless block ~ ~ ~ minecraft:beacon run kill @s