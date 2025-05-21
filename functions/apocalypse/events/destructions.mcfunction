spreadplayers ~ ~ 1 100 false @s

execute if score apoc_time sw_var matches 0..800 at @s run summon lightning_bolt
execute if score apoc_time sw_var matches 0..600 at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air 
execute if score apoc_time sw_var matches 0..400 at @s run summon fireball ~ ~150 ~ {ExplosionPower:5,Motion:[2.0d,-10.0d,1.0d],Tags:["sw_temporary"]}


kill @s