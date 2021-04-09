///@func animation_hit_frame(frame)
///@desc Returns true on the first frame the specified frame will be displayed
///@arg frame
function animation_hit_frame(_frame) {
    var _speed = game_get_speed(gamespeed_fps) / sprite_get_speed(sprite_index);
    return (image_index >= _frame + 1 - image_speed / _speed) && (image_index < _frame + 1);
}