if resolve_script=-1 then show_error("No menu resolve!", true)
var slug=items[focus_index].slug
script_execute(resolve_script, slug)
