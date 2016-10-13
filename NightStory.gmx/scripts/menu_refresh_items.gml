var me=id, sorted=ds_priority_create()
with MenuItem
{
    if menu!=me then continue;
    ds_priority_add(sorted, id, order)
}

if ds_priority_size(sorted)=0 then show_error("No menu items!", true)

in_focus=noone
items=0 // clear array
items[0]=0; // re-init array
var counter=0
while ds_priority_size(sorted)>0
{
    items[counter]=ds_priority_find_min(sorted)
    items[counter].focus_index=counter
    counter++
    ds_priority_delete_min(sorted)
}
ds_priority_destroy(sorted)

focus_index=0
menu_refresh_focus()
