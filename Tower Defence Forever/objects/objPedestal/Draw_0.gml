/// @description Insert description here
// You can write your code in this editor
draw_self();
if (global.OverThePedestal =1){
	draw_sprite(sprTopLeftSelector, animateHelper, x - 2, y -3);
	draw_sprite(sprTopRightSelector, animateHelper, x + 12, y -3);
	draw_sprite(sprBottomLeftSelector, animateHelper, x - 2, y + 12);
	draw_sprite(sprBottomRightSelector, animateHelper, x + 12, y +12);}