##
 # snowball_ready_others.mcfunction
 # 
 #
 # Created by .
##
scoreboard players add @s SnowballTimer 1
execute if score @s SnowballTimer matches 30.. run function vanilla_plus:frost_deltas/throw_snowball_others