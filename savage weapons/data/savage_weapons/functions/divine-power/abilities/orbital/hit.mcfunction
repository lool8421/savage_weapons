tag @s add sw_orbitalpoint
scoreboard players operation @s sw_orbital_cap = power sw_var
scoreboard players add @s sw_orbital_cap 20
execute if score @s sw_orbital_cap matches 100.. run scoreboard players set @s sw_orbital_cap 100
execute at @s run function savage_weapons:divine-power/abilities/orbital/animations/mark


scoreboard players set @s sw_orbital_time -100