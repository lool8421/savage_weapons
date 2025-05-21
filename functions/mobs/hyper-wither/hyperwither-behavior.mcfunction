execute at @s as @e[distance=..12,tag=!sw_hyperwither] unless score @s sw_DP matches 100.. run damage @s 20 minecraft:generic_kill by @e[tag=sw_hyperwither,limit=1,sort=nearest]
execute at @s as @e[distance=..12,tag=!sw_hyperwither] unless score @s sw_DP matches 100.. run damage @s 200 minecraft:magic by @e[tag=sw_hyperwither,limit=1,sort=nearest]
execute if predicate savage_weapons:wither-target at @s rotated as @s facing entity @p[distance=..60,gamemode=survival] eyes unless entity @p[distance=..10,gamemode=survival] run function savage_weapons:mobs/hyper-wither/dash

execute store result score @s sw_ylvl run data get entity @s Pos[1]
execute at @s if predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..-80 run data modify entity @s Motion[1] set value 3.0d
execute at @s unless predicate savage_weapons:overworld_check if score @s sw_ylvl matches ..-16 run data modify entity @s Motion[1] set value 3.0d

data modify entity @s ActiveEffects append value {Id:7,Duration:1,Amplifier:0b}