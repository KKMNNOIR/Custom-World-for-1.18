##
 # used_wither_snake.mcfunction
 # 
 #
 # Created by .
##
# This bow gives Wither effect to arrow.
advancement revoke @s only vanilla_plus:items/wither_snake
scoreboard players reset @s usedWitherSnake
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:20210224}}}] as @e[type=arrow,nbt={inGround:0b},distance=..5] unless data entity @s Potion unless data entity @s {pickup:0b} run data merge entity @s {Color:328965,CustomPotionEffects:[{Id:20,Amplifier:1b,Duration:100}],Potion:"minecraft:empty"}

# execute as @e[type=arrow,nbt={inGround:0b}] at @s if entity @e[distance=..5,predicate=vanilla_plus:hand_wither_snake] unless data entity @s Potion run data merge entity @s {Color:0,CustomPotionEffects:[{Id:20,Amplifier:1b,Duration:100}],Potion:"minecraft:empty"}