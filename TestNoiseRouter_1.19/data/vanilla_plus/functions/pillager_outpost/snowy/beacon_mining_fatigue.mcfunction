##
 # beacon_mining_fatigue.mcfunction
 # 
 #
 # Created by .
##
execute if entity @e[tag=vpDebuffer,predicate=vanilla_plus:beacon_check,predicate=vanilla_plus:fatigue_beacon_distance] run effect give @s minecraft:mining_fatigue 9 2 true
advancement revoke @s only vanilla_plus:pillager_outpost/snowy/fatigue_beacon