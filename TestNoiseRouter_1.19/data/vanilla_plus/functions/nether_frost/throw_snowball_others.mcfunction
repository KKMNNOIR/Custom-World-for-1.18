##
 # throw_snowball_others.mcfunction
 # 
 #
 # Created by .
##
summon potion ~ ~2 ~ {Motion:[0.0,0.1,0.0],Tags:["fromZombie","SnowballAttack"],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomPotionColor:10287359,CustomPotionEffects:[{Id:2b,Amplifier:2b,Duration:100},{Id:20,Amplifier:1b,Duration:21}]}}}
execute as @e[tag=fromZombie] at @s run function vanilla_plus:nether_frost/snowball_operation_others
scoreboard players reset @s SnowballTimer

tag @e[tag=SnowballTarget] remove SnowballTarget

# Slowness Resist