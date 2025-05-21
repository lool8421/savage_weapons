#NO U, not even /kill will be able to kill this boss, deal with it

#all defenders will turn into revive stars when it's not sitting on an omegadragon
execute as @e[tag=sw_omegadragon_defender] at @s unless entity @e[type=ender_dragon,tag=sw_omegadragon,distance=..6] run kill @s
#all revive stars will turn into omegadragon defender endermites if the omegadragon is still alive
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",tag:{sw_special:"omegadragon_revive"}}}] at @s run function savage_weapons:mobs/omegadragon/revive-item

#all revive stars will turn into an omegadragon and a defenser if the dragon is not alive


#clear the revive stars
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",tag:{sw_special:"omegadragon_revive"}}}]