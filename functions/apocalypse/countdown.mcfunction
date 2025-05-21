scoreboard players remove apoc_time sw_var 1

execute if score apoc_time sw_var matches 799..1199 run function savage_weapons:apocalypse/messages1
execute if score apoc_time sw_var matches -701..-1 run function savage_weapons:apocalypse/messages2
function savage_weapons:apocalypse/events/event-init
execute if score apoc_time sw_var matches ..-1200 run scoreboard players set apoc_time sw_var -1200