data modify entity @s DragonPhase set value 5


execute facing entity @e[type=!#savage_weapons:inanimates,tag=!sw_omegadragon,distance=..120,sort=nearest] eyes run tp ^ ^ ^5 
execute facing entity @p[distance=..120] eyes run tp ^ ^ ^5 
particle minecraft:dragon_breath ~ ~ ~ 10 10 10 1 1000

execute as @e[distance=..30,tag=!sw_omegadragon] run damage @s 500 generic_kill
execute if entity @e[type=!#savage_weapons:inanimates,tag=!sw_omegadragon,distance=..120] rotated as @s run function savage_weapons:mobs/omegadragon/fireballs/fire
execute if entity @a[distance=..150] run function savage_weapons:mobs/omegadragon/messages

#idk why it faces backwards
execute store result score temp sw_var run data get entity @s Rotation[0]
scoreboard players add temp sw_var 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get temp sw_var