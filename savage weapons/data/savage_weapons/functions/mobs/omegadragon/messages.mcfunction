scoreboard players set min rng 1
scoreboard players set max rng 3000
function rng:rng

execute if score out rng matches 1..30 run tellraw @a[distance=..150] [{"text":"<"},{"text":"OmegaDragon","bold":"true","color":"dark_purple"},{"text":">"},{"color":"dark_red","bold":"true","text":" SO COURAGEOUS OF YOU TO APPROACH AN OMNIPOTENT BEING!"}]
execute if score out rng matches 31..60 run tellraw @a[distance=..150] [{"text":"<"},{"text":"OmegaDragon","bold":"true","color":"dark_purple"},{"text":">"},{"color":"dark_red","bold":"true","text":" NOT EVEN YOUR CREATIVE POWERS WILL DEFEAT ME, GIVE UP!"}]
execute if score out rng matches 61..90 run tellraw @a[distance=..150] [{"text":"<"},{"text":"OmegaDragon","bold":"true","color":"dark_purple"},{"text":">"},{"color":"dark_red","bold":"true","text":" THIS IS MY DOMAIN NOW, LEAVE IT OR I'LL FORCE YOU TO DO SO!"}]
execute if score out rng matches 91..120 run tellraw @a[distance=..150] [{"text":"<"},{"text":"OmegaDragon","bold":"true","color":"dark_purple"},{"text":">"},{"color":"dark_red","bold":"true","text":" YOUR EXISTENCE WILL BE ERASED FROM THE ASTRAL PLANE!"}]
execute if score out rng matches 121..150 run tellraw @a[distance=..150] [{"text":"<"},{"text":"OmegaDragon","bold":"true","color":"dark_purple"},{"text":">"},{"color":"dark_red","bold":"true","text":" I SEE YOU, YOU CAN'T ESCAPE DEATH, ACCEPT YOUR FATE!!!"}]
execute if score out rng matches 151..180 run tellraw @a[distance=..150] [{"text":"<"},{"text":"OmegaDragon","bold":"true","color":"dark_purple"},{"text":">"},{"color":"dark_red","bold":"true","text":" YOU MADE A FATAL MISTAKE BY GETTING THIS CLOSE TO ME..."}]
execute if score out rng matches 181..210 run tellraw @a[distance=..150] [{"text":"<"},{"text":"OmegaDragon","bold":"true","color":"dark_purple"},{"text":">"},{"color":"dark_red","bold":"true","text":" YOUR EXISTENCE IS MEANINGLESS, MORTAL"}]
