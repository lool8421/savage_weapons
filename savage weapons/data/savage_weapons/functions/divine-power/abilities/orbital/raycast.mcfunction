scoreboard players remove lifespan sw_var 1
execute rotated as @s run tp ^ ^ ^1 

execute unless block ~ ~ ~ #savage_weapons:sw_passables run scoreboard players set lifespan sw_var 0 
execute unless block ~ ~ ~ #savage_weapons:sw_passables summon marker run function savage_weapons:divine-power/abilities/orbital/hit
particle minecraft:soul_fire_flame

execute if score lifespan sw_var matches 1.. at @s run function savage_weapons:divine-power/abilities/orbital/raycast
execute unless score lifespan sw_var matches 1.. run kill @s