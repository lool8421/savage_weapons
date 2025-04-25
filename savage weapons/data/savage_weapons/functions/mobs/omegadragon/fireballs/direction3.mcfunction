tag @s add sw_temporary
tag @s add sw_omega_fireball
tag @s remove sw_dragon_fireball_3
team join sw_omegadragon


execute store result entity @s Motion[0] double 0.01 run scoreboard players get dx3 sw_var
execute store result entity @s Motion[1] double 0.01 run scoreboard players get dy3 sw_var
execute store result entity @s Motion[2] double 0.01 run scoreboard players get dz3 sw_var