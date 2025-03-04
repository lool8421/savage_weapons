execute store result score @s sw_ylvl run data get entity @s Pos[1]

execute if entity @s[nbt={Dimension:"minecraft:overworld"}] if score @s sw_ylvl matches ..-64 if score @s sw_DP matches 8.. run function savage_weapons:divine-power/abilities/floats/void-save-trigger
execute if entity @s[nbt=!{Dimension:"minecraft:overworld"}] if score @s sw_ylvl matches ..0 if score @s sw_DP matches 8.. run function savage_weapons:divine-power/abilities/floats/void-save-trigger


