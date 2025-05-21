particle minecraft:poof ~ ~ ~ 1 1 1 1 500

#explosion effect
summon creeper ~ ~ ~ {Tags:['sw_thanos','sw_boom'],Fuse:0s,Invulnerable:1b,Ignited:1b,Invisible:1b,Attributes:[{Base:1023f,Name:"minecraft:generic.max_health"}],Health:1023f}
execute store result entity @e[tag=sw_boom,limit=1] ExplosionRadius byte 1 run scoreboard players get power sw_var
tag @e[tag=sw_boom] remove sw_boom

execute if score casterDP sw_var matches 17..99 run damage @s 100 minecraft:generic_kill
execute if score casterDP sw_var matches 100.. run damage @s 1000 minecraft:generic_kill

execute if score casterDP sw_var matches 1..4 run damage @s 20 minecraft:explosion
execute if score casterDP sw_var matches 5..8 run damage @s 50 minecraft:explosion
execute if score casterDP sw_var matches 9..12 run damage @s 150 minecraft:explosion
execute if score casterDP sw_var matches 13..16 run damage @s 400 minecraft:explosion
execute if score casterDP sw_var matches 17..99 run damage @s 1000 minecraft:explosion



execute if score casterDP sw_var matches 12.. run function savage_weapons:divine-power/abilities/eternity-gauntlet/titan-effect
execute if score casterDP sw_var matches 20..99 run function savage_weapons:divine-power/abilities/eternity-gauntlet/god-effect
execute if score casterDP sw_var matches 100.. run function savage_weapons:divine-power/abilities/eternity-gauntlet/chaos-god-effect