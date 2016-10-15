// collect items, sort by order
var me=id, sorted=ds_priority_create()
with MenuItem
{
    if menu!=me then continue;
    ds_priority_add(sorted, id, order+y/1000)
}

if ds_priority_size(sorted)=0 then show_error("No menu items!", true)

// default params
in_focus=noone
menu_width=0

items[0]=0; // init array
items_by_slug=ds_map_create()

// populate items
var counter=0, item_width
while ds_priority_size(sorted)>0
{
    items[counter]=ds_priority_find_min(sorted)
    items[counter].focus_index=counter
    ds_map_add(items_by_slug, items[counter].slug, items[counter])
    ds_priority_delete_min(sorted)
    
    // calculate menu width
    with items[counter] label_set_font()
    item_width=string_width(items[counter].title)
    if item_width>menu_width then menu_width=item_width
    
    counter++
}
ds_priority_destroy(sorted)

menu_width+=extra_menu_width

// refresh all items
var i, l=array_length_1d(items)
for (i=0; i<l; i++)
{
    with items[i] menu_item_refresh()
}

// focnus on first item
with items[0] menu_item_focus()
