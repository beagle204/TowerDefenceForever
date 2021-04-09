/// @description Insert description here
// You can write your code in this editor

//frame 14 is when the pedestal is hitting the ground
if (animation_hit_frame(13)){
	audio_play_sound(snd_hitting_ground,10,false);
	global.ShouldbeShaking = 1;
}

//frame 14 is when the pedestal is hitting the ground
if (animation_hit_frame(18)){
	audio_play_sound(snd_sword_falling,10,false);
}

//frame 14 is when the pedestal is hitting the ground
if (animation_hit_frame(26)){
	audio_play_sound(snd_sword_flash,10,false);
}

//i dont wnat anything to happen unless we've swapped sprites.
if (sprite_index = sprPedestal){

	if (global.OverThePedestal = 1){
		
		if (mouse_check_button_pressed(mb_left)) {
			image_speed = 1;
			randomize();
			audio_play_sound(scrPlayRandomBlip(irandom_range(1,10)),10,false);
			
			var xDiff = irandom_range(-20,20);
			var yDiff = irandom_range(-20,20);
	
			//this is set up for dmg numbers, reuse if needed.
			with instance_create_layer(mouse_x + xDiff, mouse_y + yDiff, "DmgNumbers", objPedestalNumbers){
		
				var randomNumber = irandom_range(1,1);
				resources = randomNumber;
				size = 1;
			}
	
		}
		if (image_index = 2) {
			image_speed = 0;
			image_index = 0;
		}	
	}
}