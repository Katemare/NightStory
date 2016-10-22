cursor++
if cursor>string_length(text[cursor_line]) then
{
    if cursor_line>=array_length_1d(text)-1 then
    {
        ended=true
    }
    else
    {
        cursor_line++
        cursor=1
    }
}
if not ended then alarm_set(0, text_speed)
