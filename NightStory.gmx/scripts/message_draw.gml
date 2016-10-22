draw_set_font(font)

var base_x=view_xview[0], base_y=view_yview[0]+view_hview[0]
var text_x=base_x+margin, text_y=base_y-margin
if portrait>0 then
{
    text_x+=portrait_width
    draw_sprite(portrait, 0, base_x+portrait_x, base_y-portrait_y)
}

draw_set_color(message_color)
draw_rectangle(text_x, text_y-message_height, text_x+message_width, text_y, false)
text_x+=padding
text_y-=padding

draw_set_color(font_color)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)
var i, len, to_print=''
len=array_length_1d(text)
for (i=max_lines-1; i>=0; i--)
{
    if i<cursor_line or (i=cursor_line and ended) then
    {
        to_print=text[i]
    }
    else if i=cursor_line then
    {
        to_print=string_copy(text[i], 1, cursor)
    }        
    else
    {
        to_print=''
    }
    
    if to_print!='' then draw_text(text_x, text_y, to_print)
    
    if i>0 then
    {
        if i>len-1 then
            text_y-=string_height("A")-line_sep
        else
            text_y-=string_height(text[i])-line_sep
        // end if
    }
}
