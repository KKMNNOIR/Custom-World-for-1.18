##
 # detect.mcfunction
 # 
 #
 # Created by .
##
execute as @e[type=item_frame,tag=vpButtonDetector] at @s if block ^ ^ ^ #buttons[powered=true] run function vanilla_plus:pillager_outpost/desert/open_cage/open_1