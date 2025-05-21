fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air 
execute store result score @s sw_ylvl run data get entity @s Pos[1]
execute if predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..-61 run fill ~-7 -64 ~-7 ~7 ~7 ~7 air
execute unless predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..3 run fill ~-7 0 ~-7 ~7 ~7 ~7 air


execute as @e[distance=..9,tag=!sw_caster] run damage @s 200 generic_kill
execute as @e[distance=..9,tag=!sw_caster] run damage @s 1000 generic

scoreboard players add explosions sw_var 1
execute if score explosions sw_var matches 2.. run function savage_weapons:explosions/xl
execute if score explosions sw_var matches 2.. run scoreboard players set explosions sw_var 0