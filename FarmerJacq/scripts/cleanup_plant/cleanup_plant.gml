// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cleanup_plant(x,y){
	//remove purification overlay
	with instance_position(x*150, y*150, obj_pure_area) instance_destroy(); 
	with instance_position(x*150, y*150, obj_plant) instance_destroy(); 
	//update sprouts structure
	for (var i = -1; i <= 1; i++) {
		for (var j = -1; j <= 1; j++) {
			if (global.ds_sprouts_instances[# x + i , y + j] != 0 ) {		
				global.ds_sprouts_instances[# x + i , y + j] = 0 ;
				global.purification -= 1;
			} 
		}
	}
}