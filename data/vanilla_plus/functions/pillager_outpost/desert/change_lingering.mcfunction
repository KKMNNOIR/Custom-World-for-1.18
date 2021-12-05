##
 # change_lingering.mcfunction
 # 
 #
 # Created by .
##
execute as @e[type=potion,predicate=vanilla_plus:linger_chance] at @s if entity @e[type=witch,tag=OutpostWarrior,distance=..3] run data modify entity @s Item.id set value "minecraft:lingering_potion"