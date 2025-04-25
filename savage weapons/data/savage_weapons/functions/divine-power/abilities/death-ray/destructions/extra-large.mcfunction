fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air 
execute store result score @s sw_ylvl run data get entity @s Pos[1]
execute if predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..-59 run fill ~-5 -64 ~-5 ~5 ~5 ~5 air
execute unless predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..5 run fill ~-5 0 ~-5 ~5 ~5 ~5 air


execute as @e[distance=..7,tag=!sw_caster] run damage @s 30 generic_kill
execute as @e[distance=..7,tag=!sw_caster] run damage @s 200 generic

scoreboard players add explosions sw_var 1
execute if score explosions sw_var matches 1.. run function savage_weapons:explosions/large
execute if score explosions sw_var matches 1.. run scoreboard players set explosions sw_var 0