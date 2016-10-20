var to_stabilize=false
if char_moving and not char_target_moving then to_stabilize=true

character_update()

if to_stabilize and speed=0 then CameraManager.stabilize=true
if char_moving then player_refresh() else player_update_focus(true) // moving only
