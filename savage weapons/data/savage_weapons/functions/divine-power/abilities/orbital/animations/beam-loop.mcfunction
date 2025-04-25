execute as @e[type=block_display,tag=sw_orbital_beam] at @s run function savage_weapons:divine-power/abilities/orbital/animations/spin
particle minecraft:dust 0.75 0.75 1.0 1 ~ ~ ~ 10 10 10 0.5 1000
playsound minecraft:block.beacon.activate master @a[distance=..200] ~ ~ ~ 100