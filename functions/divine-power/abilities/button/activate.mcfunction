execute if score @s sw_DP matches 100.. if score apoc_state sw_var matches 1 run tellraw @s {"text":"It's too late, you can't stop what you've caused...","color":"red"}

execute if score @s sw_DP matches 100.. unless score apoc_state sw_var matches 1 run function savage_weapons:divine-power/abilities/button/true-activate

execute unless score @s sw_DP matches 100.. run tellraw @s {"text":"You're not insane enough to press it... yet...","color":"red"}
