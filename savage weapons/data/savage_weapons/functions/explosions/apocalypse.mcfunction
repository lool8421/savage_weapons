fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air destroy

execute store result score @s sw_ylvl run data get entity @s Pos[1]
execute if predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..-57 run fill ~-7 -64 ~-7 ~7 ~7 ~7 air destroy
execute unless predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..7 run fill ~-7 0 ~-7 ~7 ~7 ~7 air destroy

#center
summon creeper ~ ~ ~ {Tags:["sw_nuke"]}

#area above

summon creeper ~ ~24 ~ {Tags:["sw_nuke"]}
summon creeper ~-12 ~12 ~-12 {Tags:["sw_nuke"]}
summon creeper ~12 ~12 ~-12 {Tags:["sw_nuke"]}
summon creeper ~-12 ~12 ~12 {Tags:["sw_nuke"]}
summon creeper ~12 ~12 ~12 {Tags:["sw_nuke"]}

#even ground

summon creeper ~-18 ~ ~18 {Tags:["sw_nuke"]}
summon creeper ~-18 ~ ~-18 {Tags:["sw_nuke"]}
summon creeper ~18 ~ ~18 {Tags:["sw_nuke"]}
summon creeper ~18 ~ ~-18 {Tags:["sw_nuke"]}

summon creeper ~ ~ ~24 {Tags:["sw_nuke"]}
summon creeper ~ ~ ~-24 {Tags:["sw_nuke"]}
summon creeper ~24 ~ ~ {Tags:["sw_nuke"]}
summon creeper ~-24 ~ ~ {Tags:["sw_nuke"]}

#area below

summon creeper ~ ~-24 ~ {Tags:["sw_nuke"]}
summon creeper ~-12 ~-12 ~-12 {Tags:["sw_nuke"]}
summon creeper ~12 ~-12 ~-12 {Tags:["sw_nuke"]}
summon creeper ~-12 ~-12 ~12 {Tags:["sw_nuke"]}
summon creeper ~12 ~-12 ~12 {Tags:["sw_nuke"]}



execute as @e[tag=sw_nuke] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #savage_weapons:sw_passables 
execute as @e[tag=sw_nuke] run data merge entity @s {NoAI:1b,NoGravity:1b,Fuse:0s,Invulnerable:1b,Ignited:1b,ExplosionRadius:40b,Invisible:1b}
tp @s @s