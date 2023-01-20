instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_asteroid_huge){
		instance_create_layer(x,y,"instances",obj_asteroid);
	}
}

