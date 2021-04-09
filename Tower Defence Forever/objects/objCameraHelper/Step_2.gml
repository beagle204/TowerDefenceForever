/// @description Insert description here
// You can write your code in this editor

var camX = camera_get_view_x(oCam);
var camY = camera_get_view_y(oCam);
var camW = camera_get_view_width(oCam);
var camH = camera_get_view_height(oCam);

if (mouse_check_button(mb_middle)){
	var move_x = device_mouse_x_to_gui(0) - mouse_x_previous;
	var move_y = device_mouse_y_to_gui(0) - mouse_y_previous;
	
	camX -= move_x;
	camY -= move_y;
}else{
	var targetX = objPlayer.x -camW/2;
	var targetY = objPlayer.y - camH/2;
	
	targetX = clamp(targetX, 0, room_width - camW);
	targetY = clamp(targetY, 0, room_height - camH);
	
	
	camX = lerp(camX, targetX, CAM_SMOOTH);
	camY = lerp(camY, targetY, CAM_SMOOTH);
}

var wheel = mouse_wheel_down() - mouse_wheel_up();

if (wheel !=0){
	wheel *= 0.1;
	
	var addW = camW * wheel;
	var addH = camH * wheel;
	
	camW += addW;
	camH += addH;
	
	camX -= addW / 2;
	camY -= addH / 2;
	
}
// Apply Shake
var shake = power(shakeValue, 2) * shakePower;
camX += random_range(-shake, shake);
camY += random_range(-shake, shake);

//apply camera position
camera_set_view_pos(oCam, camX, camY);
camera_set_view_size(oCam, camW, camH);
camera_set_view_angle(oCam, random_range(-shake, shake) * 0.5);

mouse_x_previous = device_mouse_x_to_gui(0);
mouse_y_previous = device_mouse_y_to_gui(0);

if (shakeValue > 0) shakeValue -= 0.1;