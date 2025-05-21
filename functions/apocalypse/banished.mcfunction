execute at @s unless dimension savage_weapons:aftermath run title @s times 100 300 100
execute at @s unless dimension savage_weapons:aftermath run title @s title {"text":"You are dead...","color":"red","bold":"true","italic":"true"}
execute at @s unless dimension savage_weapons:aftermath run title @s subtitle {"text":"Forever...","color":"red","bold":"true","italic":"true"}
execute at @s unless dimension savage_weapons:aftermath in savage_weapons:aftermath run tp 0 100 0
execute in savage_weapons:aftermath run spawnpoint 
gamemode spectator @s
clear @s
