var move = false
var playerW = 20

	if (life <= 0) {
		room_restart()	
	}
 
 
	if(x >= room_width - playerW) {
		x = room_width - playerW
	} else if(x <= playerW) {
		x = playerW
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
	
	
	if(move){
		if(!audio_is_playing(mus_walk)) {
			audio_play_sound(mus_walk, 0, false)		  		
		}
	} else {
		audio_stop_sound(mus_walk)	
	}


//ATIRANDO
	if(keyboard_check_pressed(ord("X"))) {
		if(ammo > 0) {
			var objBull = instance_create_depth(x+(image_xscale),y+(4*image_yscale),1,obj_pizza)
			objBull.vspeed = -10*image_yscale
			ammo--
			atirando = true
			
			if(!audio_is_playing(mus_shoot))
				audio_play_sound(mus_shoot, 0 , false)
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

	if (Score == 100) {
		room_goto(rm_win)
	}


