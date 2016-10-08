if refresh then
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
    
    refresh=false
}

if not stable then
{
    var delta=CameraGoal.x-x
    var distance=abs(delta)
    var dir=sign(delta);
            
    if stabilize and distance>min_view_distance then
    {
        CameraGoal.x=Player.x
        camera_clamp_goal()
        delta=CameraGoal.x-x
        distance=abs(delta)
        delta=distance*dir
        stabilize=false
    }
    
    if distance>1 then
    {
        speed=dir*min(distance*camera_speed_portion, camera_speed_max, abs(speed)+camera_accel)
    }
    else
    {
        speed=0
        stable=true
    }
}

