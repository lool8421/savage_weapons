
scoreboard players set @s sw_orbital_cd 300
scoreboard players set lifespan sw_var 200
scoreboard players operation power sw_var = @s sw_DP

execute at @s run summon marker ^ ^ ^2 {Tags:["sw_raycast"]} 
data modify entity @e[tag=sw_raycast,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute as @e[tag=sw_raycast] at @s rotated as @s run function savage_weapons:divine-power/abilities/orbital/raycast