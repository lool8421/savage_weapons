
summon marker ^ ^ ^10 {Tags:['sw_direction']}

execute store result score x sw_var run data get entity @s Pos[0] 100
execute store result score y sw_var run data get entity @s Pos[1] 100
execute store result score z sw_var run data get entity @s Pos[2] 100

execute store result score dx sw_var run data get entity @e[tag=sw_direction,limit=1] Pos[0] 100
execute store result score dy sw_var run data get entity @e[tag=sw_direction,limit=1] Pos[1] 100
execute store result score dz sw_var run data get entity @e[tag=sw_direction,limit=1] Pos[2] 100

scoreboard players operation dx sw_var -= x sw_var 
scoreboard players operation dy sw_var -= y sw_var 
scoreboard players operation dz sw_var -= z sw_var 
kill @e[tag=sw_direction]

#2nd
summon marker ^1.5 ^ ^10 {Tags:['sw_direction2']}
execute store result score dx2 sw_var run data get entity @e[tag=sw_direction2,limit=1] Pos[0] 100
execute store result score dy2 sw_var run data get entity @e[tag=sw_direction2,limit=1] Pos[1] 100
execute store result score dz2 sw_var run data get entity @e[tag=sw_direction2,limit=1] Pos[2] 100

scoreboard players operation dx2 sw_var -= x sw_var 
scoreboard players operation dy2 sw_var -= y sw_var 
scoreboard players operation dz2 sw_var -= z sw_var 
kill @e[tag=sw_direction2]

#3rd
summon marker ^-1.5 ^ ^10 {Tags:['sw_direction3']}

execute store result score dx3 sw_var run data get entity @e[tag=sw_direction3,limit=1] Pos[0] 100
execute store result score dy3 sw_var run data get entity @e[tag=sw_direction3,limit=1] Pos[1] 100
execute store result score dz3 sw_var run data get entity @e[tag=sw_direction3,limit=1] Pos[2] 100

scoreboard players operation dx3 sw_var -= x sw_var 
scoreboard players operation dy3 sw_var -= y sw_var 
scoreboard players operation dz3 sw_var -= z sw_var 
kill @e[tag=sw_direction3]

summon fireball ^ ^ ^12 {Tags:['sw_dragon_fireball_1'],Passengers:[{id:"minecraft:marker",Tags:['sw_dragon_damage','sw_temporary']}]}
summon fireball ^2 ^ ^12 {Tags:['sw_dragon_fireball_2'],Passengers:[{id:"minecraft:marker",Tags:['sw_dragon_damage','sw_temporary']}]}
summon fireball ^-2 ^ ^12 {Tags:['sw_dragon_fireball_3'],Passengers:[{id:"minecraft:marker",Tags:['sw_dragon_damage','sw_temporary']}]}
execute as @e[tag=sw_dragon_fireball_1] run function savage_weapons:mobs/omegadragon/fireballs/direction1
execute as @e[tag=sw_dragon_fireball_2] run function savage_weapons:mobs/omegadragon/fireballs/direction2
execute as @e[tag=sw_dragon_fireball_3] run function savage_weapons:mobs/omegadragon/fireballs/direction3