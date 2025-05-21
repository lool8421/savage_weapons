scoreboard players set temp sw_var 0
execute if entity @s[nbt={SelectedItem:{tag:{wand:"ray"}}},tag=sw_deathray] run scoreboard players set temp sw_var 1
execute if entity @s[nbt={SelectedItem:{tag:{wand:"ray"}}}] unless score temp sw_var matches 1 run tag @s add sw_deathray
execute if score temp sw_var matches 1 run tag @s remove sw_deathray 
