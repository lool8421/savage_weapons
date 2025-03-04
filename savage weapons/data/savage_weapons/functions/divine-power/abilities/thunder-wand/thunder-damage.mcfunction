execute if score power sw_var matches 1..4 as @e[distance=..3,tag=!sw_caster] run damage @s 10 minecraft:lightning_bolt 
execute if score power sw_var matches 5..8 as @e[distance=..4,tag=!sw_caster] run damage @s 25 minecraft:lightning_bolt 
execute if score power sw_var matches 9..12 as @e[distance=..5,tag=!sw_caster] run damage @s 50 minecraft:lightning_bolt 


execute if score power sw_var matches 13..16 as @e[distance=..6,tag=!sw_caster] run damage @s 75 minecraft:lightning_bolt 
execute if score power sw_var matches 13..16 run function savage_weapons:explosions/mini

execute if score power sw_var matches 17..99 as @e[distance=..20,tag=!sw_caster] run damage @s 30 minecraft:generic_kill  
execute if score power sw_var matches 17..99 as @e[distance=..8,tag=!sw_caster] run damage @s 150 minecraft:lightning_bolt
execute if score power sw_var matches 17..99 run function savage_weapons:explosions/medium


execute if score power sw_var matches 100.. as @e[distance=..20,tag=!sw_caster] run damage @s 200 minecraft:generic_kill  
execute if score power sw_var matches 100.. as @e[distance=..20,tag=!sw_caster] run damage @s 1000 minecraft:lightning_bolt  
execute if score power sw_var matches 100.. run function savage_weapons:explosions/xxl
execute if score power sw_var matches 13.. as @e[tag=sw_caster] run tp @s @s