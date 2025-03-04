execute if entity @s[nbt={SelectedItem:{tag:{wand:"teleport"}}}] if score @s sw_mana matches 100.. at @s anchored feet rotated as @s run function savage_weapons:divine-power/abilities/tp-wand/tp-wand-init
execute if entity @s[nbt={SelectedItem:{tag:{wand:"thunder"}}}] if score @s sw_mana matches 400.. at @s rotated as @s anchored eyes run function savage_weapons:divine-power/abilities/thunder-wand/thunder-wand-init
execute if entity @s[nbt={SelectedItem:{tag:{wand:"rampage"}}}] if score @s sw_mana matches 2000.. unless score @s sw_rampage_cd matches 1.. at @s anchored eyes rotated as @s run function savage_weapons:divine-power/abilities/rampage-wand/init
execute if entity @s[nbt={SelectedItem:{tag:{wand:"ray"}}}] run function savage_weapons:divine-power/abilities/death-ray/init
execute if entity @s[nbt={SelectedItem:{tag:{wand:"meteor"}}}] if score @s sw_mana matches 2000.. run function savage_weapons:divine-power/abilities/meteor-wand/init
execute if entity @s[nbt={SelectedItem:{tag:{wand:"eternityGauntlet"}}}] if score @s sw_mana matches 5000.. run function savage_weapons:divine-power/abilities/eternity-gauntlet/init

scoreboard players set @s sw_wand 0