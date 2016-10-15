var timer=argument0
var script=argument1
if not instance_exists(FadeOut) then instance_create(0, 0, FadeOut)
with FadeOut
{
    if timer=0 then timer=fade_time else fade_time=timer
    complete_script=script
    alarm_set(0, timer)
}
