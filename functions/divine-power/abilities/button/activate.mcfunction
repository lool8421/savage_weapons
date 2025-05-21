execute if score @s sw_DP matches 100.. if score apoc_state sw_var matches 1 run tellraw @s {"text":"It's too late, you can't stop what you've caused...","color":"red"}

execute if score @s sw_DP matches 100.. unless score apoc_state sw_var matches 1 run scoreboard players set apoc_time sw_var 1200 

execute if score @s sw_DP matches 100.. run scoreboard players set apoc_state sw_var 1

execute unless score @s sw_DP matches 100.. run say {"text":"You're not insane enough to press it... yet...","color":"red"}