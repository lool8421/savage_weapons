spreadplayers ~ ~ 1 100 false @s

execute if score apoc_time sw_var matches 0..600 if predicate savage_weapons:3percent at @s run summon wither
execute if score apoc_time sw_var matches 0..500 if predicate savage_weapons:3percent at @s run summon ender_dragon
execute if score apoc_time sw_var matches 0..400 if predicate savage_weapons:3percent at @s run function savage_weapons:mobs/doomsday-ghast/summon
execute if score apoc_time sw_var matches 0..300 if predicate savage_weapons:3percent at @s run function savage_weapons:mobs/hyper-wither/summon
execute if score apoc_time sw_var matches 0..200 if predicate savage_weapons:1percent at @s run function savage_weapons:mobs/omegadragon/summon


kill @s