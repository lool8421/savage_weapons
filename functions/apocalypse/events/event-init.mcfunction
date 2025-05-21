
weather thunder 

execute if score apoc_time sw_var matches ..-1 run tag @a add sw_banished

execute if score apoc_time sw_var matches 0..1000 run function savage_weapons:apocalypse/events/earthquake
execute if score apoc_time sw_var matches 0..400 run function savage_weapons:apocalypse/events/earthquake
execute if score apoc_time sw_var matches 0..400 run function savage_weapons:apocalypse/events/earthquake

execute if score apoc_time sw_var matches 0..800 as @a at @s summon marker run function savage_weapons:apocalypse/events/destructions
execute if score apoc_time sw_var matches 0..800 as @a at @s summon marker run function savage_weapons:apocalypse/events/summons


execute if score apoc_time sw_var matches 0..1000 if predicate savage_weapons:50percent as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s
execute if score apoc_time sw_var matches 0..700 if predicate savage_weapons:10percent as @a at @s run playsound minecraft:entity.wither.spawn master @s
execute if score apoc_time sw_var matches 0..400 if predicate savage_weapons:3percent as @a at @s run playsound minecraft:entity.ender_dragon.death master @s