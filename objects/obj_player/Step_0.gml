var move = false

	if (life <= 0) {
		room_restart()	
	}
 
 
	if(x >= room_width) {
		x = 0
	} else if(x <= 0) {
		x = room_width
	}
 
 
 
//ANDANDO
	if(keyboard_check(vk_right)) {
		x+=spd
		image_xscale = -1
		move = true
	}else if(keyboard_check(vk_left)) {
		x-=spd
		image_xscale = 1
		move = true
	}

//ATIRANDO
	if(keyboard_check_pressed(ord("X"))) {
		if(ammo > 0) {
			var objBull = instance_create_depth(x+(image_xscale),y+(4*image_yscale),1,obj_pizza)
			objBull.vspeed = -10*image_yscale
			ammo--
			atirando = true
		}
	}
	
	if(atirando){
         sprite_index = spr_p_atirando;
	}else{
        if(move) {
			sprite_index = spr_p_andando;
		} else if(move && atirando) {
			sprite_index = spr_p_atirando;
		} else {
			sprite_index = spr_p;
		}
	}

//SCORE

	if (Score == 2) {
		room_goto(rm_win)
	}

