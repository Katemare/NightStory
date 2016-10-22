if not instance_exists(Message) then instance_create(0, 0, Message)

with Message
{
    if keyboard_check(vk_space) then text_speed=text_speed_fast else text_speed=text_speed_normal
    var new_text=argument0
    var new_portrait=argument1
    
    message_height=string_height("A")*max_lines+line_sep*(max_lines-1)
    
    portrait=new_portrait
    if portrait>0 then
    {
        portrait_width=max(sprite_get_width(portrait), portrait_width_min)
        // counting from base_x (left) and base_y (bottom)
        portrait_x=portrait_width-sprite_get_width(portrait)/2
        portrait_y=max(message_height/2, sprite_get_height(portrait)/2)
    }
    else
    {
        portrait_width=0
        portrait_x=0
        portrait_y=0
    }
    // end if
    message_width=view_wview[0]-portrait_width-margin*2
    
    text=message_prepare(new_text)
    cursor=0
    cursor_line=0
    ended=false
    message_print()
}
