execute if entity @e[type=ender_dragon,tag=sw_omegadragon,distance=..6] summon minecraft:endermite run function savage_weapons:mobs/omegadragon/revive-defender 
execute unless entity @e[type=ender_dragon,tag=sw_omegadragon,distance=..6] positioned ~ ~-33.26 ~ run function savage_weapons:mobs/omegadragon/summon
tellraw @a [{"text":"<"},{"text":"OmegaDragon","bold":"true","color":"dark_purple"},{"text":">"},{"color":"dark_red","bold":"true","text":" NOT EVEN YOUR COMMAND MAGIC IS ABLE TO DEFEAT ME, NOW DIE!!!"}]

clear @a[distance=..500]
gamemode spectator @a[distance=..500]
kill @e[type=!item,tag=!sw_omegadragon,distance=..500]