
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air destroy

execute store result score @s sw_ylvl run data get entity @s Pos[1]
execute if predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..-61 run fill ~-3 -64 ~-3 ~3 ~3 ~3 air destroy
execute unless predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..3 run fill ~-3 0 ~-3 ~3 ~3 ~3 air destroy


summon creeper ~ ~ ~ {Fuse:0s,Invulnerable:1b,Ignited:1b,ExplosionRadius:30b,Invisible:1b,Attributes:[{Base:1023f,Name:"minecraft:generic.max_health"}],Health:1023f}