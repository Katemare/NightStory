#define menu_item_focus
if focused then exit

var me=id

focused=true
font_color=focused_color

with menu
{
    focus_index=me.focus_index
    _menu_refresh_focus()
}

#define _menu_refresh_focus
// called with Menu context
if in_focus!=noone then with in_focus _menu_item_unfocus()
in_focus=items[focus_index]

#define _menu_item_unfocus
focused=false
font_color=unfocused_color