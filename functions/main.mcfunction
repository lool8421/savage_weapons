
#initialization functions
scoreboard players add timer sw_var 1
execute as @a run function savage_weapons:divine-power/update-power


#armor operations
execute if score timer sw_var matches 10 as @a run function savage_weapons:divine-power/effects

execute as @a[scores={sw_DP=8..,sw_sneak=1..,sw_mana=12..},nbt={OnGround:0b}] at @s unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:lava run function savage_weapons:divine-power/abilities/floats/main
execute as @a[scores={sw_DP=8..,sw_sneak=1..,sw_mana=12..},nbt={OnGround:0b}] at @s run function savage_weapons:divine-power/abilities/floats/void-save
execute as @a[tag=sw_floating,scores={sw_sneak=0}] run effect clear @s levitation
execute as @a[tag=sw_floating,scores={sw_sneak=0}] run effect clear @s slow_falling
execute as @a[tag=sw_floating,scores={sw_sneak=0}] run tag @s remove sw_floating

effect give @a[scores={sw_slowfall=2..}] levitation 1 255 true
effect give @a[scores={sw_slowfall=2..}] slow_falling 1 255 true
effect clear @a[scores={sw_slowfall=1}] levitation
effect clear @a[scores={sw_slowfall=1}] slow_falling

scoreboard players remove @a[scores={sw_slowfall=1..}] sw_slowfall 1
execute as @a[scores={sw_DP=1..}] unless score @s sw_mana matches 5000.. run function savage_weapons:divine-power/mana/regen


#wand stuff
execute as @a[scores={sw_wand=1..,sw_DP=1..}] run function savage_weapons:divine-power/wand-init

execute as @a[scores={sw_rampage_duration=1..}] at @s rotated as @s run function savage_weapons:divine-power/abilities/rampage-wand/loop
scoreboard players remove @a[scores={sw_rampage_cd=1..}] sw_rampage_cd 1
execute as @a[nbt=!{SelectedItem:{tag:{wand:"ray"}}}] run tag @s remove sw_deathray
execute as @a[tag=sw_deathray] at @s run function savage_weapons:divine-power/abilities/death-ray/loop-start
execute as @a[scores={sw_meteor=1..}] at @s rotated as @s anchored feet run function savage_weapons:divine-power/abilities/meteor-wand/fire

scoreboard players remove @a[scores={sw_orbital_cd=1..}] sw_orbital_cd 1

#orbital
execute as @e[type=marker,tag=sw_orbitalpoint] at @s run function savage_weapons:divine-power/abilities/orbital/beam

#mobs
execute if score timer sw_var matches 10 as @e[tag=sw_hyperwither] run function savage_weapons:mobs/hyper-wither/hyperwither-behavior

function savage_weapons:mobs/omegadragon/revive
execute if score timer sw_var matches 9 as @e[type=ender_dragon,tag=sw_omegadragon] at @s run function savage_weapons:mobs/omegadragon/behavior
execute as @e[tag=sw_dragon_damage] at @s unless entity @e[distance=..2,tag=sw_omega_fireball] run function savage_weapons:mobs/omegadragon/fireballs/damage

execute as @e[tag=sw_bomb] run scoreboard players remove @s sw_explosion_timer 1
execute as @e[tag=sw_bomb] if score @s sw_explosion_timer matches 0 at @s run function savage_weapons:explosions/large
execute as @e[tag=sw_bomb] if score @s sw_explosion_timer matches 0 run kill @s

#banishment and apocalypse
execute as @a[tag=sw_banished] run function savage_weapons:apocalypse/banished
execute if score apoc_state sw_var matches 1 run function savage_weapons:apocalypse/countdown

#cleanup
execute as @e[tag=sw_temporary] run function savage_weapons:entity-lifespan
scoreboard players set @a sw_sneak 0
execute if score timer sw_var matches 10.. run scoreboard players set timer sw_var 0