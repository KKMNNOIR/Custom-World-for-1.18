##
 # success.mcfunction
 # 
 #
 # Created by .
##
summon stray ~ ~ ~ {Tags: ["Icy"]}
tp ~ -200 ~
execute as @e[tag=Icy,predicate=vanilla_plus:in_nether_frost] at @s run data modify entity @s {} merge from storage vanilla_plus:skeleton_data {}