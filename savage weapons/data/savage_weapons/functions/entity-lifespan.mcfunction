execute unless score @s sw_lifespans matches 1.. run scoreboard players set @s sw_lifespans 100
execute if score @s sw_lifespans matches 1.. run scoreboard players remove @s sw_lifespans 1
execute if score @s sw_lifespans matches 1 run kill @s