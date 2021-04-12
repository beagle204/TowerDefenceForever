draw_self();
if (ImBeingHoveredOver == 1){
	if (mySpriteName == "small tree"){
			
			if (shouldbeX == 0){
				objPlayer.sprite_index = sprSawSelector;
			}
			
			if (shouldbeX ==1){
				objPlayer.sprite_index = sprErrorSelector;	
			}
			objPlayer.image_index = sawHelper/5;
			sawHelper ++;
			
			
			draw_sprite(sprTopLeftSelector, animateHelper, x - 2, y -5);
			draw_sprite(sprTopRightSelector, animateHelper, x + 9, y -5);
			draw_sprite(sprBottomLeftSelector, animateHelper, x - 2, y + 10);
			draw_sprite(sprBottomRightSelector, animateHelper, x + 9, y +10);
			
			if (mouse_check_button_pressed(mb_left)) {
				if (global.Coin < 50){
					global.ShouldbeShaking = 1;
					shouldbeX = 1
					xHelper =0;
				}
			}
			
			if (shouldbeX ==1){
				xHelper ++;
			}
			
			if (xHelper == 50){
				xHelper =0;
				shouldbeX =0;
			}
	}
	if (mySpriteName == "medium tree"){
			draw_sprite(sprTopLeftSelector, animateHelper, x - 2, y -5);
			draw_sprite(sprTopRightSelector, animateHelper, x + 9, y -5);
			draw_sprite(sprBottomLeftSelector, animateHelper, x - 2, y + 26);
			draw_sprite(sprBottomRightSelector, animateHelper, x + 9, y +26);
	}
}