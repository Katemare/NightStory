var moving_only=argument0

var me=id
var nearest=noone
var nearest_distance=TILESIZE*TILES_H*2

with FocusObject
{
    if not focusable then continue
    if moving_only and (not movable or (xprevious=x and yprevious=y)) then continue
    if not place_meeting(x, y, Player) and sign(x-me.x)!=me.char_dir then continue
    var distance=distance_to_object(Player)
    if distance>nearest_distance then continue
    if distance>focus_distance then continue
    
    nearest_distance=distance
    nearest=id
}

if nearest!=in_focus then
{
    if in_focus!=noone then in_focus.focused=false
    in_focus=nearest
    if nearest!=noone then in_focus.focused=true
}
