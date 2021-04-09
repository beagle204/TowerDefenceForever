/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
center_x = display_get_gui_width()/2;
center_y = display_get_gui_height()/2;
if (global.Sequencer == 1){
	draw_set_font(fntPedestalFont);
	draw_text_ext_transformed_color(center_x-49,center_y-9,"DEFEND THE PEDESTAL",5,500, 1, 1, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_ext_transformed_color(center_x-50,center_y-10,"DEFEND THE PEDESTAL",5,500, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	if (doOnce == 1){
		alarm[0] = 300;
		doOnce = 0;
	}
	//global.Sequencer =0;//alarm will take us to the next sequence
}