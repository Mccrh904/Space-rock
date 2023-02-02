 if(keyboard_check(vk_left)){
	image_angle = image_angle + 5;	
}

if(keyboard_check(vk_right)){
	image_angle = image_angle - 5;	
}

if(keyboard_check(vk_up)){
	motion_add(image_angle, 0.05);
}

if(keyboard_check_pressed(vk_space)){
	var inst = instance_create_layer(x,y, "instances", obj_bullet);
	inst.direction = image_angle;
	audio_play_sound(snd_zap, 1, false);
}

move_wrap(true,true,sprite_width/2);

if(keyboard_check_pressed(vk_lshift) and bomb > 0){
	bomb -= 1
	instance_destroy(obj_asteroid);
	audio_play_sound(snd_explode, 1, false);
	repeat(50){
		repeat(10)
		instance_create_layer(x,y,"Instances",obj_debris);
		
	}
}


