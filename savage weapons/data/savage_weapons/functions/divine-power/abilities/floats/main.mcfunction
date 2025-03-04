scoreboard players remove @s sw_mana 12
effect give @s slow_falling 1 0 true

execute if score @s sw_DP matches 8..11 at @s run function savage_weapons:divine-power/abilities/floats/slowfall
execute if score @s sw_DP matches 12..19 at @s run function savage_weapons:divine-power/abilities/floats/hover
execute if score @s sw_DP matches 20..74 at @s run function savage_weapons:divine-power/abilities/floats/up-slow
execute if score @s sw_DP matches 75.. at @s run function savage_weapons:divine-power/abilities/floats/up-fast

tag @s add sw_floating