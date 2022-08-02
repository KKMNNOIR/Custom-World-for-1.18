##
 # change_bow.mcfunction
 # 
 #
 # Created by .
##
# まだタグのついてない個体のみ確率判定
execute as @e[type=minecraft:wither_skeleton,tag=!changeDone,predicate=vanilla_plus:in_blackstone] at @s run function vanilla_plus:blackstone/check_chance