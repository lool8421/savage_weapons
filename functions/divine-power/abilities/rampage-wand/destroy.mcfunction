tp @s ^ ^ ^4
execute store result score @s sw_ylvl run data get entity @s Pos[1]
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] if score @s sw_DP matches 20.. if score @s sw_ylvl matches ..-61 run fill ~-2 -64 ~-2 ~2 -60 ~2 air destroy
execute if entity @s[nbt=!{Dimension:"minecraft:overworld"}] if score @s sw_DP matches 20.. if score @s sw_ylvl matches ..2 run fill ~-2 0 ~-2 ~2 4 ~2 air destroy


execute if score @s sw_DP matches 1..4 run execute as @e[tag=!sw_rampage_caster,distance=..2] run damage @s 20 minecraft:explosion
execute if score @s sw_DP matches 5..8 run execute as @e[tag=!sw_rampage_caster,distance=..3] run damage @s 40 minecraft:explosion
execute if score @s sw_DP matches 9..12 run execute as @e[tag=!sw_rampage_caster,distance=..4] run damage @s 100 minecraft:explosion
execute if score @s sw_DP matches 13..16 run execute as @e[tag=!sw_rampage_caster,distance=..6] run damage @s 200 minecraft:explosion
execute if score @s sw_DP matches 17..99 run execute as @e[tag=!sw_rampage_caster,distance=..8] run damage @s 50 minecraft:generic_kill
execute if score @s sw_DP matches 17..99 run execute as @e[tag=!sw_rampage_caster,distance=..8] run damage @s 400 minecraft:explosion
execute if score @s sw_DP matches 100.. run execute as @e[tag=!sw_rampage_caster,distance=..10] as @a[distance=..10] unless score @s sw_DP matches 100.. run clear @s
execute if score @s sw_DP matches 100.. run execute as @e[tag=!sw_rampage_caster,distance=..10] run damage @s 250 minecraft:generic_kill
execute if score @s sw_DP matches 100.. run execute as @e[tag=!sw_rampage_caster,distance=..10] run damage @s 1000 minecraft:explosion


execute if score @s sw_DP matches 1..8 run function savage_weapons:explosions/medium
execute if score @s sw_DP matches 9..16 run function savage_weapons:explosions/large
execute if score @s sw_DP matches 17..99 run function savage_weapons:explosions/xl
execute if score @s sw_DP matches 100.. run function savage_weapons:explosions/xxl
tp @s ^ ^ ^-6