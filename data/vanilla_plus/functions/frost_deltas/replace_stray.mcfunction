##
 # replace_stray.mcfunction
 # 
 #
 # Created by .
##
tag @s add Done
data modify storage vanilla_plus:skeleton_data {} merge from entity @s {}
execute if predicate vanilla_plus:stray_chance run function vanilla_plus:frost_deltas/success