##
 # icy_creeper_ambient.mcfunction
 # 
 #
 # Created by .
##
particle dust_color_transition 0.149 0.773 1 1 0.910 0.976 1.000 ~ ~ ~ 0.25 0.5 0.25 5 10 force
execute if entity @p[distance=..3,gamemode=!creative] run data modify entity @s ActiveEffects append value {Id:2,ShowParticles:1b,Amplifier:2b,Duration:120}
execute if data entity @s {ignited:1b} run data modify entity @s ActiveEffects append value {Id:2,ShowParticles:1b,Amplifier:2b,Duration:120}