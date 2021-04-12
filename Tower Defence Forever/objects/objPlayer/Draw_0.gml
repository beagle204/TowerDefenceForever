/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;
draw_self();


if place_meeting(x, y, objPedestal){
	object_set_sprite( 0, sprPointer );
	global.OverThePedestal = 1;
	if (mouse_check_button_pressed(mb_left)) {
		image_speed = 1;
	}
	if (image_index = 3) {
		image_speed = 0;
		image_index = 0;
	}
}else{
	image_index = 0;
	image_speed = 0;
	global.OverThePedestal = 0;
	objPlayer.visible = true;
}
var shouldbenormal = 0;
var i;
for (i = 0; i < instance_number(objDebris); i += 1)
{
	if(objDebris.ImBeingHoveredOver==1){
		shouldbenormal = 1;
	}
}

if (shouldbenormal == 0){
	sprite_index = sprPointer;
}