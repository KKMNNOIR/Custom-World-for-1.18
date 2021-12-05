##
 # switch.mcfunction
 # 
 #
 # Created by .
##
execute as @e[type=item_frame,tag=vpSwitch] at @s unless data entity @s {ItemRotation:0b} run function vanilla_plus:pillager_outpost/desert/entrance/secret_chest/break