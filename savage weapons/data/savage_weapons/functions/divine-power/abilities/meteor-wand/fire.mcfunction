scoreboard players remove @s sw_meteor 2
scoreboard players set divisor sw_var 2
scoreboard players operation power sw_var = @s sw_DP 
scoreboard players operation power sw_var /= divisor sw_var
scoreboard players add power sw_var 1

execute store result score casterX sw_var run data get entity @s Pos[0] 100
execute store result score casterY sw_var run data get entity @s Pos[1] 100
execute store result score casterZ sw_var run data get entity @s Pos[2] 100

tag @s add sw_caster

summon fireball ^ ^ ^5 {Tags:['sw_fireball','sw_temporary']}
execute as @e[type=fireball,tag=sw_fireball,distance=..10] at @s run function savage_weapons:divine-power/abilities/meteor-wand/fireball-stats

tag @s remove sw_caster