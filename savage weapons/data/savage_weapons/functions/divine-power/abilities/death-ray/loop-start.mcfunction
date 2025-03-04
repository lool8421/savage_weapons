
execute at @s run summon marker ~ ~2 ~ {Tags:["sw_beam"]}
scoreboard players set explosions sw_var 5

tag @s add sw_caster

execute if score @s sw_mana matches ..100 run tag @s remove sw_deathray
scoreboard players remove @s sw_mana 50 

scoreboard players operation power sw_var = @s sw_DP
scoreboard players operation temp sw_var = @s sw_DP
scoreboard players set temp2 sw_var 3
scoreboard players operation temp sw_var *= temp2 sw_var
scoreboard players set temp2 sw_var 10
scoreboard players operation temp sw_var += temp2 sw_var
execute if score temp sw_var matches 101.. run scoreboard players set temp sw_var 100


tp @e[tag=sw_beam] @s
execute as @e[tag=sw_beam] at @s run tp ~ ~1.5 ~ 
execute as @e[tag=sw_beam] at @s run tp ^ ^ ^1
execute as @e[tag=sw_beam] at @s run function savage_weapons:divine-power/abilities/death-ray/loop