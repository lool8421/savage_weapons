tp @s ^ ^ ^1
particle minecraft:dust 1 0.2 0.2 1 ~ ~ ~ 0.1 0.1 0.1 1 5

scoreboard players remove temp sw_var 1

scoreboard players set temp2 sw_var 0
execute unless block ~ ~ ~ air run scoreboard players set temp2 sw_var 1
execute if entity @e[tag=!sw_caster,tag=!sw_beam,distance=..3] run scoreboard players set temp2 sw_var 1
execute if score temp2 sw_var matches 1.. at @s run function savage_weapons:divine-power/abilities/death-ray/destructions/select

execute if score temp sw_var matches ..0 run tag @a remove sw_caster
execute if score temp sw_var matches ..0 run kill @s
execute if score temp sw_var matches 1.. at @s run function savage_weapons:divine-power/abilities/death-ray/loop