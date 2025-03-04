scoreboard players remove @s sw_mana 2000
scoreboard players set @s sw_rampage_cd 100


tag @s add sw_rampage_caster
execute if entity @s[nbt={ActiveEffects:[{Id:11,Amplifier:4b}]}] run tag @s add sw_resistant
effect give @a[tag=!resistant] resistance 5 4 true

execute store result score @s sw_rampage_duration run scoreboard players get @s sw_DP
scoreboard players set temp sw_var 2
scoreboard players operation @s sw_rampage_duration *= temp sw_var 
scoreboard players set temp sw_var 10
scoreboard players operation @s sw_rampage_duration += temp sw_var 
execute if score @s sw_rampage_duration matches 100.. run scoreboard players set @s sw_rampage_duration 100