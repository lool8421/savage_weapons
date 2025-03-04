fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air 
execute store result score @s sw_ylvl run data get entity @s Pos[1]
execute if predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..-62 run fill ~-2 -64 ~-2 ~2 ~2 ~2 air
execute unless predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..2 run fill ~-2 0 ~-2 ~2 ~2 ~2 air


execute as @e[distance=..4,tag=!sw_caster] run damage @s 40 generic

scoreboard players add explosions sw_var 1
execute if score explosions sw_var matches 1.. run summon creeper ~ ~ ~ {Fuse:0s,Invulnerable:1b,Ignited:1b,ExplosionRadius:2b,Invisible:1b,Attributes:[{Base:1023f,Name:"minecraft:generic.max_health"}],Health:1023f}
execute if score explosions sw_var matches 1.. run scoreboard players set explosions sw_var 0