fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air 
execute store result score @s sw_ylvl run data get entity @s Pos[1]
execute if predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..-63 run fill ~-1 -64 ~-1 ~1 ~1 ~1 air
execute unless predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..1 run fill ~-1 0 ~-1 ~1 ~1 ~1 air


execute as @e[distance=..3,tag=!sw_caster] run damage @s 20 generic