##
 # correct_stairs.mcfunction
 # 
 #
 # Created by .
##
execute at @s if block ~ ~-1 ~ sandstone_stairs[waterlogged=true,facing=east,half=bottom,shape=straight] run setblock ~ ~-1 ~ sandstone_stairs[waterlogged=false,facing=east,half=bottom,shape=straight]
execute at @s if block ~ ~-1 ~ sandstone_stairs[waterlogged=true,facing=north,half=bottom,shape=straight] run setblock ~ ~-1 ~ sandstone_stairs[waterlogged=false,facing=north,half=bottom,shape=straight]
execute at @s if block ~ ~-1 ~ sandstone_stairs[waterlogged=true,facing=west,half=bottom,shape=straight] run setblock ~ ~-1 ~ sandstone_stairs[waterlogged=false,facing=west,half=bottom,shape=straight]
execute at @s if block ~ ~-1 ~ sandstone_stairs[waterlogged=true,facing=south,half=bottom,shape=straight] run setblock ~ ~-1 ~ sandstone_stairs[waterlogged=false,facing=south,half=bottom,shape=straight]
setblock ~ ~ ~ air