<<<<<<< HEAD
if(obj_budi.typedWord == word && image_index == 2 && instance_place(x, y, obj_budi)){
	 
    // Add 1 carrot to inventory
    global.carrot += 1;

    // Reset the crop to "not grown"
    image_index = 0;
=======
if(obj_budi.typedWord == word && instance_place(x, y, obj_budi)){
	if(stage == 1 && !inventory_has(obj_water_bucket)){
		show_message("You need water")
		return;
	}
	obj_budi.typedWord = ""
	if(stage != 2){
		instance_create_layer(room_width / 2, room_height/ 2, "UI", obj_popup)
	}
	
	stage += 1
	if(stage == 1){
		word = "water"
	} else if (stage == 2){
		word = "collect"
	}
	
	if(stage >= 2){
		is_watered = true
	}
>>>>>>> 6679e719d36d905fbd694b52ed70be941673bbaf
}