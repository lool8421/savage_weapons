scoreboard players remove @s sw_meteor 2
scoreboard players set divisor sw_var 2
scoreboard players operation power sw_var = @s sw_DP 
scoreboard players operation power sw_var /= divisor sw_var
scoreboard players add power sw_var 1

execute store result score casterX sw_var run data get entity @s Pos[0] 100
execute store result score casterY sw_var run data get entity @s Pos[1] 100
execute store result score casterZ sw_var run data get entity @s Pos[2] 100



execute at @s rotated as @s positioned ^ ^ ^5 summon fireball run function savage_weapons:divine-power/abilities/meteor-wand/fireball-stats