execute if block ~ ~2.5 ~ #savage_weapons:sw_passables run tp @s ~ ~1.2 ~
scoreboard players operation temp sw_var = @s sw_DP
scoreboard players operation temp sw_var += @s sw_DP
execute if score temp sw_var matches 41.. run scoreboard players set temp sw_var 40


scoreboard players set @s sw_slowfall 2
scoreboard players remove @s sw_mana 100

execute at @s run function savage_weapons:divine-power/abilities/tp-wand/tp-wand-loop