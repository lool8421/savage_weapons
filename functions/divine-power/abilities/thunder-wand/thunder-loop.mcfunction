scoreboard players add steps sw_var 1
execute if score steps sw_var matches 10.. if entity @e[type=!#savage_weapons:inanimates,tag=!sw_spark,tag=!sw_caster,distance=..6] facing entity @e[type=!#savage_weapons:inanimates,tag=!sw_spark,tag=!sw_caster,limit=1,sort=nearest] feet run tp ^ ^ ^1
execute unless entity @e[type=!#savage_weapons:inanimates,tag=!sw_spark,tag=!sw_caster,distance=..6] rotated as @e[tag=sw_caster,limit=1] run tp ^ ^ ^1

particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0.01 10

scoreboard players remove temp sw_var 1

execute if entity @e[type=!#savage_weapons:inanimates,tag=!sw_spark,tag=!sw_caster,distance=..3] run function savage_weapons:divine-power/abilities/thunder-wand/thunder-hit
execute unless block ~ ~ ~ #savage_weapons:sw_passables run function savage_weapons:divine-power/abilities/thunder-wand/thunder-hit

execute unless block ~ ~ ~ #savage_weapons:sw_passables run scoreboard players set temp sw_var 0
 
execute if score temp sw_var matches ..0 run kill @s
execute if score temp sw_var matches ..0 run tag @e remove sw_caster

execute unless score temp sw_var matches ..0 at @s run function savage_weapons:divine-power/abilities/thunder-wand/thunder-loop