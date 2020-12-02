var enemies = choose(obj_enemy, obj_enemy2)

instance_create_depth(irandom(room_width),y,1,enemies)
self.tempo = random_range(50, 90);
alarm[0] = self.tempo;