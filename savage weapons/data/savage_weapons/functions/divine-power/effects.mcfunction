#legendary armor
execute if score @s sw_DP matches 1.. run effect give @s speed 1 0 true
execute if score @s sw_DP matches 1.. run effect give @s haste 1 1 true
execute if score @s sw_DP matches 2.. run effect clear @s darkness
execute if score @s sw_DP matches 2.. run effect clear @s blindness
execute if score @s sw_DP matches 2.. run effect clear @s nausea
execute if score @s sw_DP matches 2.. run effect give @s jump_boost 1 0 true
execute if score @s sw_DP matches 3.. run effect give @s water_breathing 1 0 true
execute if score @s sw_DP matches 3.. run effect give @s strength 1 0 true
execute if score @s sw_DP matches 4.. run effect give @s resistance 1 0 true
execute if score @s sw_DP matches 4.. run effect give @s night_vision 20 0 true

#mythical armor
execute if score @s sw_DP matches 5.. run effect give @s speed 1 2 true
execute if score @s sw_DP matches 5.. run effect give @s haste 1 4 true
execute if score @s sw_DP matches 6.. run effect give @s jump_boost 1 1 true
execute if score @s sw_DP matches 6.. run effect give @s dolphins_grace 1 1 true
execute if score @s sw_DP matches 7.. run effect give @s strength 1 2 true
execute if score @s sw_DP matches 7.. run effect give @s fire_resistance 1 2 true
execute if score @s sw_DP matches 8.. run effect give @s resistance 1 1 true
execute if score @s sw_DP matches 8.. run effect give @s regeneration 1 0 true

#titan armor
execute if score @s sw_DP matches 9.. run effect clear @s poison
execute if score @s sw_DP matches 9.. run effect clear @s wither
execute if score @s sw_DP matches 9.. run effect clear @s hunger
execute if score @s sw_DP matches 10.. run effect give @s speed 1 4 true
execute if score @s sw_DP matches 10.. run effect give @s haste 1 9 true
execute if score @s sw_DP matches 11.. run effect give @s jump_boost 1 2 true
execute if score @s sw_DP matches 11.. run effect give @s strength 1 4 true
execute if score @s sw_DP matches 12.. run effect give @s saturation 1 1 true

#demigod armor
execute if score @s sw_DP matches 13.. run effect give @s speed 1 7 true
execute if score @s sw_DP matches 13.. run effect give @s haste 1 19 true
execute if score @s sw_DP matches 13.. run effect give @s glowing 1 0 true
execute if score @s sw_DP matches 14.. run effect give @s jump_boost 1 3 true
execute if score @s sw_DP matches 15.. run effect give @s strength 1 8 true
execute if score @s sw_DP matches 16.. run effect give @s resistance 1 2 true
execute if score @s sw_DP matches 16.. run effect give @s instant_health 1 0 true

#god armor
execute if score @s sw_DP matches 17.. run effect give @s speed 1 14 true
execute if score @s sw_DP matches 17.. run effect give @s haste 1 49 true
execute if score @s sw_DP matches 18.. run effect give @s jump_boost 1 5 true
execute if score @s sw_DP matches 19.. run effect give @s strength 1 15 true
execute if score @s sw_DP matches 20.. run effect give @s resistance 1 3 true

#chaos god armor
execute if score @s sw_DP matches 75.. run effect give @s resistance 1 4 true
execute if score @s sw_DP matches 75.. run effect give @s speed 1 29 true
execute if score @s sw_DP matches 75.. run effect give @s jump_boost 1 19 true
execute if score @s sw_DP matches 75.. run effect give @s strength 1 255 true
execute if score @s sw_DP matches 75.. run effect give @s instant_health 10 1 true
execute if score @s sw_DP matches 75.. run effect give @s haste 1 127 true