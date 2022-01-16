##
 # frozen_zombie.mcfunction
 # 
 #
 # Created by .
##
execute as @e[type=zombie,predicate=vanilla_plus:in_nether_frost,tag=!FrozenZombie] at @s run data merge entity @s {CustomName:'{"text": "Frozen Zombie","color": "#315CD4","bold": true,"italic": false}',Tags:["FrozenZombie"],PersistenceRequired:0b,Team:"NameHidden"}
##Frozen Zombie attacks with snowball
execute as @e[tag=FrozenZombie] at @s run function vanilla_plus:nether_frost/frozen_zombie_ambient
advancement revoke @s only vanilla_plus:nether_frost/frozen_zombie_attack