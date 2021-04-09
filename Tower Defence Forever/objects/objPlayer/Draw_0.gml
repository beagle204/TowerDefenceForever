/// @description Insert description here
// You can write your code in this editor
draw_self();
if place_meeting(x, y, objPedestal){
	global.OverThePedestal = 1;
	
	
	//draw_text(window_mouse_get_x(),window_mouse_get_y(), "ON THE PEDESTAL");
}else{
	global.OverThePedestal = 0;
}