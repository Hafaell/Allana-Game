y += spd

	if(y >= room_height + 1) {
		obj_player.life--
		instance_destroy()
	}
