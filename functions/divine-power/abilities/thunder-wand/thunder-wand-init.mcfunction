scoreboard players remove @s sw_mana 400

scoreboard players set temp2 sw_var 20
scoreboard players operation temp sw_var = @s sw_DP
scoreboard players operation temp sw_var += temp2 sw_var

scoreboard players operation power sw_var = @s sw_DP
scoreboard players set steps sw_var 0

tag @s add sw_caster
summon marker ~ ~ ~ {Tags:["sw_spark"]} 
execute as @e[tag=sw_spark] at @s run tp ~ ~1.5 ~-1 
execute as @e[tag=sw_spark] at @s run tp ^ ^ ^1

execute as @e[tag=sw_spark] at @s run function savage_weapons:divine-power/abilities/thunder-wand/thunder-loop 