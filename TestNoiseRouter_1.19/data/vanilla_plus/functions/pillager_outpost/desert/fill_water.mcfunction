##
 # fill_water.mcfunction
 # 
 #
 # Created by .
##
setblock ~ ~ ~ spruce_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=true]
setblock ~ ~ ~-1 spruce_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=true]
setblock ~1 ~ ~ spruce_trapdoor[facing=east,half=bottom,open=true,powered=false,waterlogged=true]
setblock ~ ~ ~1 spruce_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=true]
setblock ~-1 ~ ~ spruce_trapdoor[facing=west,half=bottom,open=true,powered=false,waterlogged=true]
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 sandstone
kill @s