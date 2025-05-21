tp @s ^ ^ ^2
tp @s @s

scoreboard players set temp2 sw_var 0
execute unless block ~ ~ ~ #savage_weapons:sw_passables run scoreboard players set temp2 sw_var 1
execute unless block ~ ~1 ~ #savage_weapons:sw_passables run scoreboard players set temp2 sw_var 1
execute unless block ~ ~2 ~ #savage_weapons:sw_passables run scoreboard players set temp2 sw_var 1
execute if entity @e[tag=!sw_rampage_caster,distance=..2,type=!item] run scoreboard players set temp2 sw_var 1
execute if score temp2 sw_var matches 1 at @s run function savage_weapons:divine-power/abilities/rampage-wand/destroy

particle minecraft:dust 1 0.2 0.2 1 ~ ~0.5 ~ 0.5 0.5 0.5 0.1 50
particle minecraft:flame ~ ~0.5 ~ 0.5 0.5 0.5 0.02 50


scoreboard players remove @s sw_rampage_duration 1
execute if score @s sw_sneak matches 1.. run scoreboard players set @s sw_rampage_duration 0
execute if block ~ ~ ~ #savage_weapons:sw_resistant run scoreboard players set @s sw_rampage_duration 0
execute if score @s sw_rampage_duration matches ..0 run function savage_weapons:divine-power/abilities/rampage-wand/finish

