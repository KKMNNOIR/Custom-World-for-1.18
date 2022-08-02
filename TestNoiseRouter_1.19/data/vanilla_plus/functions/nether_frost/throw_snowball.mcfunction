##
 # throw_snowball.mcfunction
 # 
 #
 # Created by .
##
# Start
data modify entity @s NoAI set value 1b
data modify entity @s NoAI set value 0b
tag @p[distance=4..16] add SnowballTarget
tp @s ^ ^ ^ facing entity @p[tag=SnowballTarget]
summon potion ~ ~2 ~ {Motion:[0.0,0.1,0.0],Tags:["fromZombie","SnowballAttack"],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomPotionColor:10287359,CustomPotionEffects:[{Id:2b,Amplifier:2b,Duration:100},{Id:20,Amplifier:1b,Duration:21}]}}}
execute as @e[tag=fromZombie] at @s run function vanilla_plus:nether_frost/snowball_operation
scoreboard players reset @s SnowballTimer

tag @p[tag=SnowballTarget] remove SnowballTarget

# Slowness Resist
