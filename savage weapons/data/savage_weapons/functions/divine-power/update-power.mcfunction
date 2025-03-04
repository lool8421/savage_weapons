scoreboard players set @s sw_DP 0
scoreboard players set temp1 sw_var 0

execute store result score temp1 sw_var run data get entity @s Inventory[{Slot:100b}].tag.DivinePower
scoreboard players operation @s sw_DP += temp1 sw_var
execute store result score temp1 sw_var run data get entity @s Inventory[{Slot:101b}].tag.DivinePower
scoreboard players operation @s sw_DP += temp1 sw_var
execute store result score temp1 sw_var run data get entity @s Inventory[{Slot:102b}].tag.DivinePower
scoreboard players operation @s sw_DP += temp1 sw_var
execute store result score temp1 sw_var run data get entity @s Inventory[{Slot:103b}].tag.DivinePower
scoreboard players operation @s sw_DP += temp1 sw_var