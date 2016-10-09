var delta=CameraGoal.x-x
var distance=abs(delta)
var dir=sign(delta);

if distance>1 then
{
    speed=dir*min(distance*camera_speed_portion, camera_speed_max, abs(speed)+camera_accel)
    // Parallax speed is updated in begin_draw, or else it lags behind for some reason
}
else
{
    // stopping
    speed=0
    with Parallax speed=0
    stable=true
}
