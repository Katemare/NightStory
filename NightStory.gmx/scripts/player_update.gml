if char_target_moving and (not char_moving or char_dir!=char_target_dir) then
{
    // started moving or changed direction
    char_dir=char_target_dir
    
    sprite_index=char_moving_sprite
    image_xscale=char_dir
    speed=accel_moving*char_dir
    
    char_moving=true
}
else if char_moving and not char_target_moving then
{
    // update stopping
    if abs(speed)<accel_stopping then speed=0 else speed-=accel_stopping*char_dir
    if speed=0 then
    {
        // finished stopping
        sprite_index=char_standing_sprite
        char_moving=false
        CameraManager.stabilize=true
    }
}
else if char_moving then
{
    // update moving
    if abs(speed)<max_speed then speed+=accel_moving*char_dir
}
if char_moving then CameraManager.refresh=true
