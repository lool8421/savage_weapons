
scoreboard players add @s sw_orbital_time 1





execute if predicate savage_weapons:overworld_check at @s run function savage_weapons:divine-power/abilities/orbital/fills/overworld
execute unless predicate savage_weapons:overworld_check at @s run function savage_weapons:divine-power/abilities/orbital/fills/other
function savage_weapons:divine-power/abilities/orbital/fills/damages

execute if score @s sw_orbital_time matches -20 run function savage_weapons:divine-power/abilities/orbital/animations/beam-summon
execute if score @s sw_orbital_time matches -20.. at @s run function savage_weapons:divine-power/abilities/orbital/animations/beam-loop

execute if score @s sw_orbital_time >= @s sw_orbital_cap run kill @e[type=block_display,distance=..1]
execute if score @s sw_orbital_time >= @s sw_orbital_cap run kill @s