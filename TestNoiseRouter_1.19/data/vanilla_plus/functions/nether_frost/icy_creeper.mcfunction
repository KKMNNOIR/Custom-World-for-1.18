##
 # icy_creeper.mcfunction
 # 
 #
 # Created by .
##
execute as @e[type=creeper,predicate=vanilla_plus:in_nether_frost] at @s run tag @s add IcyCreeper
execute as @e[tag=IcyCreeper] at @s run function vanilla_plus:nether_frost/icy_creeper_ambient
