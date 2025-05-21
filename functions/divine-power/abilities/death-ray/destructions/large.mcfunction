fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air 
execute store result score @s sw_ylvl run data get entity @s Pos[1]
execute if predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..-61 run fill ~-3 -64 ~-3 ~3 ~3 ~3 air
execute unless predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..3 run fill ~-3 0 ~-3 ~3 ~3 ~3 air


execute as @e[distance=..5,tag=!sw_caster] run damage @s 100 generic

scoreboard players add explosions sw_var 1
execute if score explosions sw_var matches 1.. run function savage_weapons:explosions/medium
execute if score explosions sw_var matches 1.. run scoreboard players set explosions sw_var 0