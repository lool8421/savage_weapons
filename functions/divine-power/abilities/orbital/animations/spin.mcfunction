execute as @e[type=minecraft:block_display] store result score rotation sw_var run data get entity @s Rotation[0]
scoreboard players add rotation sw_var 2
execute as @e[type=minecraft:block_display] store result entity @s Rotation[0] float 1 run scoreboard players get rotation sw_var