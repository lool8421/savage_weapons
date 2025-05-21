fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #savage_weapons:sw_passables
setblock ~ ~ ~ air destroy

summon creeper ~ ~ ~ {Fuse:0s,Invulnerable:1b,Ignited:1b,ExplosionRadius:20b,Invisible:1b,Attributes:[{Base:1023f,Name:"minecraft:generic.max_health"}],Health:1023f}