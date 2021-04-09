/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
sprite_index = sprPedestal;
if (global.PedestalHasDropped = 0){
	y+=47;
	x+=2;
	global.PedestalHasDropped = 1;
	alarm[0] = 60;
}