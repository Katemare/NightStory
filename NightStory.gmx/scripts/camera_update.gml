if not stable and stabilize then
{
    speed=0
}
else if refresh then
{
    if Player.char_dir=DIR_LEFT and (not stable or Player.x-(x-width/2)<=min_view_distance) then
    {
        // Player too close to the left border
        CameraGoal.x=Player.x-full_view_distance
        camera_clamp_goal()
        stable=false
    }
    else if Player.char_dir=DIR_RIGHT and (not stable or (x+width/2)-Player.x<=min_view_distance) then
    {
        // Player too close to the right border
        CameraGoal.x=Player.x+full_view_distance
        camera_clamp_goal()
        stable=false
    }
}

stabilize=false
refresh=false

if not stable and Player.char_moving then
{    
    camera_update_speed()
}

