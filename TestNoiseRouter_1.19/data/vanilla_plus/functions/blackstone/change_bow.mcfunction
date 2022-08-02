tag @s add WitherSkeletonArcher
data modify entity @s DeathLootTable set value "vanilla_plus:entities/wither_skeleton_archer"
loot replace entity @s weapon.mainhand loot vanilla_plus:combats/wither_snake
item replace entity @s weapon.offhand with minecraft:tipped_arrow{display:{Name:'{"text":"衰弱の矢","italic":false}'},CustomModelData:9999,CustomPotionEffects:[{Id:20,Amplifier:0b,Duration:100}],CustomPotionColor:0}