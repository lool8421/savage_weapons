
scoreboard players operation casterDP sw_var = @s sw_DP
scoreboard players set @s sw_mana 0
scoreboard players set divisor sw_var 3
scoreboard players operation power sw_var = @s sw_DP
scoreboard players operation power sw_var /= divisor sw_var
scoreboard players add power sw_var 2

tag @s add sw_thanos
execute at @s as @e[type=!#savage_weapons:inanimates,distance=..100,tag=!sw_thanos] if predicate savage_weapons:50percent at @s run function savage_weapons:divine-power/abilities/eternity-gauntlet/snap-effects
tag @s remove sw_thanos