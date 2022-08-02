##
 # open_1.mcfunction
 # 
 #
 # Created by .
##
fill ^1 ^-2 ^-1 ^3 ^ ^-1 minecraft:air replace minecraft:iron_bars
function vanilla_plus:pillager_outpost/desert/open_cage/reset_button
playsound block.chain.break block @a ^2 ^-2 ^-1 1 0
tag @s add vpOpened