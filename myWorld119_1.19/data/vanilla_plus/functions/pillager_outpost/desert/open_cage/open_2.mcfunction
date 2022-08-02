##
 # open_2.mcfunction
 # 
 #
 # Created by .
##
fill ^1 ^-1 ^-1 ^3 ^-1 ^-1 minecraft:air replace minecraft:iron_bars
playsound block.chain.break block @a ^2 ^-1 ^-1 1 0
schedule function vanilla_plus:pillager_outpost/desert/open_cage/open_3 1s replace