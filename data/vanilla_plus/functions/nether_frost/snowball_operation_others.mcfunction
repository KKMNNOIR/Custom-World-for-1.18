##
 # snowball_operation.mcfunction
 # 
 #
 # Created by .
##

# particle

# Set OWner
playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0
# data modify entity @s Owner set from entity @e[distance=..5,tag=FrozenZombie,sort=nearest,limit=1] UUID

# Face player
# tp @s ^ ^ ^ facing entity @p[tag=SnowballTarget]

# Get Snowball Position
execute store result score @s PosIX run data get entity @s Pos[0] 1000
execute store result score @s PosIY run data get entity @s Pos[1] 1000
execute store result score @s PosIZ run data get entity @s Pos[2] 1000

#Summon AEC
execute positioned ^ ^1 ^5 run summon area_effect_cloud ^ ^2.5 ^0.1 {Duration:0,Tags:["TargetMarker"],Particle:"block air"}

# Get AEC Position
execute store result score @s PosFX run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[0] 1000
execute store result score @s PosFY run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[1] 1000
execute store result score @s PosFZ run data get entity @e[tag=TargetMarker,sort=nearest,limit=1] Pos[2] 1000

# Calicurate difference
scoreboard players operation @s PosIX -= @s PosFX
scoreboard players operation @s PosIY -= @s PosFY
scoreboard players operation @s PosIZ -= @s PosFZ

execute store result entity @s Motion[0] double -0.0001 run scoreboard players get @s PosIX
execute store result entity @s Motion[1] double -0.0001 run scoreboard players get @s PosIY
execute store result entity @s Motion[2] double -0.0001 run scoreboard players get @s PosIZ
tag @s remove fromZombie

