team join sw_fireballs
tp @s ~ ~1 ~

scoreboard players set min rng 0
scoreboard players set max rng 200
scoreboard players set subtract sw_var 100


execute store result score fireballX sw_var run data get entity @s Pos[0] 100
execute store result score fireballY sw_var run data get entity @s Pos[1] 100
execute store result score fireballZ sw_var run data get entity @s Pos[2] 100

scoreboard players operation fireballX sw_var -= casterX sw_var
scoreboard players operation fireballY sw_var -= casterY sw_var
scoreboard players operation fireballZ sw_var -= casterZ sw_var

function rng:rng 
scoreboard players operation out rng -= subtract sw_var
scoreboard players operation fireballX sw_var += out rng

function rng:rng 
scoreboard players operation out rng -= subtract sw_var
scoreboard players operation fireballZ sw_var += out rng

execute store result entity @s Motion[0] double 0.025 run scoreboard players get fireballX sw_var
execute store result entity @s Motion[1] double 0.025 run scoreboard players get fireballY sw_var
execute store result entity @s Motion[2] double 0.025 run scoreboard players get fireballZ sw_var



execute store result entity @s ExplosionPower byte 1 run scoreboard players get power sw_var

tag @s remove sw_fireball