##
 # reset_button.mcfunction
 # 
 #
 # Created by .
##
execute if block ^ ^ ^ birch_button[face=wall,facing=north,powered=true] run setblock ^ ^ ^ birch_button[face=wall,facing=north,powered=false]
execute if block ^ ^ ^ birch_button[face=wall,facing=east,powered=true] run setblock ^ ^ ^ birch_button[face=wall,facing=east,powered=false]
execute if block ^ ^ ^ birch_button[face=wall,facing=south,powered=true] run setblock ^ ^ ^ birch_button[face=wall,facing=south,powered=false]
execute if block ^ ^ ^ birch_button[face=wall,facing=west,powered=true] run setblock ^ ^ ^ birch_button[face=wall,facing=west,powered=false]