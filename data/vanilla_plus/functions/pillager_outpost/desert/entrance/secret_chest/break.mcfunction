##
 # break.mcfunction
 # 
 #
 # Created by .
##
execute as @e[tag=vpSwitch] at @s run fill ^-1 ^-1 ^-1 ^-2 ^ ^-1 minecraft:air destroy
execute as @e[tag=vpSwitch] at @s run data merge entity @s {ItemRotation:0b}
advancement revoke @s only vanilla_plus:pillager_outpost/desert/secret_switch