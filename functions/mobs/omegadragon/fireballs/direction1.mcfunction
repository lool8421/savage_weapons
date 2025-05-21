tag @s add sw_temporary
tag @s add sw_omega_fireball
tag @s remove sw_dragon_fireball_1
team join sw_omegadragon


execute store result entity @s Motion[0] double 0.01 run scoreboard players get dx sw_var
execute store result entity @s Motion[1] double 0.01 run scoreboard players get dy sw_var
execute store result entity @s Motion[2] double 0.01 run scoreboard players get dz sw_var