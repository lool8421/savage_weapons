scoreboard players set temp sw_var 0
execute if score power sw_var matches 1..4 run function savage_weapons:divine-power/abilities/death-ray/destructions/tiny
execute if score power sw_var matches 5..8 run function savage_weapons:divine-power/abilities/death-ray/destructions/small
execute if score power sw_var matches 9..12 run function savage_weapons:divine-power/abilities/death-ray/destructions/medium
execute if score power sw_var matches 13..16 run function savage_weapons:divine-power/abilities/death-ray/destructions/large
execute if score power sw_var matches 17..74 run function savage_weapons:divine-power/abilities/death-ray/destructions/extra-large
execute if score power sw_var matches 75.. run function savage_weapons:divine-power/abilities/death-ray/destructions/obliteration