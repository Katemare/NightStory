var text=argument0

var line, i, len, test_s='', cur_h=0, test_h, cur_line=0, char, char2, to_break=false;
line[0]=''

len=string_length(text)
for (i=1; i<=len; i++)
{
    to_break=false
    char=string_char_at(text, i)
    if i+1<=len then char2=string_char_at(text, i+1) else char2=''
    if char='#' then
    {
        if char2='#' then
        {
            test_s+='#'
            i++
        }
        else to_break=true
    }
    else
    {
        test_s+=char
        test_h=string_height_ext(test_s, line_sep, message_width-padding*2)
        if cur_h=0 or test_h=cur_h then test_h=cur_h
        else to_break=true
    }
    
    if to_break then
    {
        line[cur_line]=test_s
        cur_line++
        cur_h=0
        test_s=''
    }
}
if test_s!='' then line[cur_line]=test_s

return line
