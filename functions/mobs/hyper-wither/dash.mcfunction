summon minecraft:marker ^ ^ ^5 {Tags:['sw_witherdirection']}
execute as @e[tag=sw_witherdirection] at @s run tp @s ~ ~0.5 ~

execute store result score motionX sw_var run data get entity @s Motion[0] 100
execute store result score motionY sw_var run data get entity @s Motion[1] 100
execute store result score motionZ sw_var run data get entity @s Motion[2] 100

execute store result score witherX sw_var run data get entity @s Pos[0] 100
execute store result score witherY sw_var run data get entity @s Pos[1] 100
execute store result score witherZ sw_var run data get entity @s Pos[2] 100

execute store result score targetX sw_var run data get entity @e[tag=sw_witherdirection,limit=1] Pos[0] 100
execute store result score targetY sw_var run data get entity @e[tag=sw_witherdirection,limit=1] Pos[1] 100
execute store result score targetZ sw_var run data get entity @e[tag=sw_witherdirection,limit=1] Pos[2] 100

scoreboard players operation targetX sw_var -= witherX sw_var
scoreboard players operation targetY sw_var -= witherY sw_var
scoreboard players operation targetZ sw_var -= witherZ sw_var




execute store result entity @s Motion[0] double 0.02 run scoreboard players get targetX sw_var
execute store result entity @s Motion[1] double 0.02 run scoreboard players get targetY sw_var
execute store result entity @s Motion[2] double 0.02 run scoreboard players get targetZ sw_var


kill @e[tag=sw_witherdirection]
