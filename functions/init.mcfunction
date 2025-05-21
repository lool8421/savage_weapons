say loading complete!

team add sw_fireballs
team modify sw_fireballs collisionRule never
team modify sw_fireballs friendlyFire false

team add sw_hyperwither
team modify sw_hyperwither color red

team add sw_omegadragon
team modify sw_omegadragon color dark_purple
team modify sw_omegadragon friendlyFire false
team modify sw_omegadragon collisionRule never

gamerule commandModificationBlockLimit 9999999

scoreboard objectives add sw_DP dummy 
scoreboard objectives add sw_var dummy
scoreboard objectives add sw_slowfall dummy
scoreboard objectives add sw_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sw_wand minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add sw_mana dummy
scoreboard objectives add sw_ylvl dummy
scoreboard objectives add sw_lifespans dummy

scoreboard objectives add sw_rampage_cd dummy
scoreboard objectives add sw_rampage_duration dummy
scoreboard objectives add sw_meteor dummy

scoreboard objectives add sw_orbital_time dummy
scoreboard objectives add sw_orbital_cap dummy
scoreboard objectives add sw_orbital_cd dummy

scoreboard objectives add sw_explosion_timer dummy