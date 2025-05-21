tp ^ ^ ^-2

execute if score @s sw_DP matches 1..4 run execute as @e[tag=!sw_rampage_caster,distance=..4] run damage @s 30 minecraft:explosion
execute if score @s sw_DP matches 5..8 run execute as @e[tag=!sw_rampage_caster,distance=..6] run damage @s 75 minecraft:explosion
execute if score @s sw_DP matches 9..12 run execute as @e[tag=!sw_rampage_caster,distance=..8] run damage @s 150 minecraft:explosion
execute if score @s sw_DP matches 13..16 run execute as @e[tag=!sw_rampage_caster,distance=..12] run damage @s 250 minecraft:explosion
execute if score @s sw_DP matches 17..99 run execute as @e[tag=!sw_rampage_caster,distance=..16] run damage @s 99 minecraft:generic_kill
execute if score @s sw_DP matches 17..99 run execute as @e[tag=!sw_rampage_caster,distance=..16] run damage @s 500 minecraft:explosion
execute if score @s sw_DP matches 100.. run execute as @e[tag=!sw_rampage_caster,distance=..24] run damage @s 500 minecraft:generic_kill
execute if score @s sw_DP matches 100.. run execute as @e[tag=!sw_rampage_caster,distance=..24] run damage @s 2500 minecraft:explosion


execute if score @s sw_DP matches 1..8 at @s run function savage_weapons:explosions/large
execute if score @s sw_DP matches 9..16 at @s run function savage_weapons:explosions/xl
execute if score @s sw_DP matches 17..99 at @s run function savage_weapons:explosions/xxl
execute if score @s sw_DP matches 100.. at @s run function savage_weapons:explosions/apocalypse


execute unless entity @s[tag=sw_resistant] run effect clear @s resistance 
effect give @s resistance 1 4 true
effect give @s slow_falling 1 0 true

tag @s remove sw_resistant

tag @s remove sw_rampage_caster