
scoreboard players set apoc_time sw_var 1200 
scoreboard players set apoc_state sw_var 1

title @a times 10 30 10
title @a subtitle [{"text":"XXXXX","obfuscated":true,"color":"dark_gray"},{"text":"ACTIVATED","obfuscated":false,"color":"dark_red","bold":"true"},{"text":"XXXXX","obfuscated":true,"color":"dark_gray"}]
title @a title [{"text":"XXXXX","obfuscated":true,"color":"dark_gray"},{"text":" THE COSMOCIDE DEVICE ","color":"dark_red","bold":"true","obfuscated":false},{"text":"XXXXX","obfuscated":true,"color":"dark_gray"}]
playsound minecraft:entity.wither.spawn master @a

execute at @p run summon lightning_bolt ~5 ~ ~0
execute at @p run summon lightning_bolt ~4 ~ ~3
execute at @p run summon lightning_bolt ~3 ~ ~4
execute at @p run summon lightning_bolt ~0 ~ ~5
execute at @p run summon lightning_bolt ~-3 ~ ~4
execute at @p run summon lightning_bolt ~-4 ~ ~3
execute at @p run summon lightning_bolt ~-5 ~ ~0
execute at @p run summon lightning_bolt ~-4 ~ ~-3
execute at @p run summon lightning_bolt ~-3 ~ ~-4
execute at @p run summon lightning_bolt ~0 ~ ~-5
execute at @p run summon lightning_bolt ~3 ~ ~-4
execute at @p run summon lightning_bolt ~4 ~ ~-3
execute at @p run summon lightning_bolt ~5 ~ ~0
execute at @p run summon lightning_bolt ~3 ~ ~4
execute at @p run summon lightning_bolt ~-3 ~ ~4
execute at @p run summon lightning_bolt ~-4 ~ ~-3