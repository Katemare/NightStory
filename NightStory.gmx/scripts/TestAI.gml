var update_phase=false
if phase=no_phase then
{
    // init
    phase=init_phase
    update_phase=true
}
else if alarm[0]=0 then
{
    // repeat
    if phase=standing_phase
    {
        if char_dir=DIR_LEFT then char_target_dir=DIR_RIGHT else char_target_dir=DIR_LEFT
        phase=moving_phase
    }
    else phase=standing_phase
    update_phase=true
}
if update_phase then
{
    if phase=moving_phase then
    {
        char_target_moving=true
        alarm_set(0, moving_phase_length)
    }
    else
    {
        char_target_moving=false
        alarm_set(0, standing_phase_length)    
    }
}
