scoreboard players remove @s sw_mana 250

scoreboard players operation power sw_var = @s sw_DP
scoreboard players add power sw_var 50
scoreboard players set temp sw_var 10
scoreboard players operation power sw_var /= temp sw_var

summon marker ^ ^ ^5 {Tags:['sw_direction']}


execute store result score xfish sw_var run data get entity @s Pos[0] 100
execute store result score yfish sw_var run data get entity @s Pos[1] 100
scoreboard players add yfish sw_var 100
execute store result score zfish sw_var run data get entity @s Pos[2] 100

execute store result score dxfish sw_var run data get entity @e[tag=sw_direction,limit=1] Pos[0] 100
execute store result score dyfish sw_var run data get entity @e[tag=sw_direction,limit=1] Pos[1] 100
execute store result score dzfish sw_var run data get entity @e[tag=sw_direction,limit=1] Pos[2] 100

scoreboard players operation dxfish sw_var -= xfish sw_var 
scoreboard players operation dyfish sw_var -= yfish sw_var 
scoreboard players operation dzfish sw_var -= zfish sw_var 

scoreboard players operation dxfish sw_var *= power sw_var 
scoreboard players operation dyfish sw_var *= power sw_var
scoreboard players operation dzfish sw_var *= power sw_var


kill @e[tag=sw_direction]

scoreboard players set min rng 0
scoreboard players operation max rng = @s sw_DP
execute if score max rng matches 31.. run scoreboard players set max rng 30 
function rng:rng

execute if score out rng matches 0..3 positioned ^ ^ ^1 summon cod run function savage_weapons:divine-power/abilities/fish-cannon/fish-properties
execute if score out rng matches 4..7 positioned ^ ^ ^1 summon pufferfish run function savage_weapons:divine-power/abilities/fish-cannon/fish-properties
execute if score out rng matches 8..11 positioned ^ ^ ^1 summon guardian run function savage_weapons:divine-power/abilities/fish-cannon/fish-properties
execute if score out rng matches 12..15 positioned ^ ^ ^3 summon elder_guardian run function savage_weapons:divine-power/abilities/fish-cannon/guardian-properties
execute if score out rng matches 16..19 positioned ^ ^ ^3 summon wither run function savage_weapons:divine-power/abilities/fish-cannon/fish-properties
execute if score out rng matches 20..24 positioned ^ ^ ^10 summon ender_dragon run function savage_weapons:divine-power/abilities/fish-cannon/megalodon
execute if score out rng matches 25..29 positioned ^ ^ ^3 summon ghast run function savage_weapons:divine-power/abilities/fish-cannon/ghast
execute if score out rng matches 30 positioned ^ ^ ^10 summon wither run function savage_weapons:divine-power/abilities/fish-cannon/hyperwither


