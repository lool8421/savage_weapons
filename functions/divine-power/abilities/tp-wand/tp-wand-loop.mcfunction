particle minecraft:dust 0.5 0.5 1 1 ~ ~1 ~ 0.1 0.1 0.1 0.5 5 normal
execute if block ^ ^ ^0.5 #savage_weapons:sw_passables if block ^ ^1.5 ^0.5 #savage_weapons:sw_passables if block ~ ~2 ~ #savage_weapons:sw_passables run tp @s ^ ^ ^0.5
tp @s @s
scoreboard players remove temp sw_var 1
execute unless block ^ ^ ^0.5 #savage_weapons:sw_passables run scoreboard players set temp sw_var 0

execute store result score @s sw_ylvl run data get entity @s Pos[1]
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] if score @s sw_ylvl matches ..-64 run function savage_weapons:divine-power/abilities/tp-wand/tp-void
execute if entity @s[nbt=!{Dimension:"minecraft:overworld"}] if score @s sw_ylvl matches ..0 run function savage_weapons:divine-power/abilities/tp-wand/tp-void
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] if score @s sw_ylvl matches 315.. run tp ^ ^ ^0.5 
execute if entity @s[nbt=!{Dimension:"minecraft:overworld"}] if score @s sw_ylvl matches 249.. run tp ^ ^ ^0.5 



execute if score temp sw_var matches 1.. at @s run function savage_weapons:divine-power/abilities/tp-wand/tp-wand-loop