##
 # ride.mcfunction
 # 
 #
 # Created by .
##
tag @s add Done
data modify entity @s CannotBeHunted set value 1b
data modify entity @s Passengers append value {id:"minecraft:zombified_piglin",HandItems:[{id:"minecraft:golden_sword"}]}
