##
 # frozen_zombie_ready_attack.mcfunction
 # 
 #
 # Created by .
##
# Timer set
scoreboard players add @s SnowballTimer 1
execute if score @s SnowballTimer matches 30.. run function vanilla_plus:nether_frost/throw_snowball