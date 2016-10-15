focused=false
font_color=unfocused_color
focus_index=-1
if not instance_exists(Menu) then menu=instance_create(0, 0, Menu)
else if instance_number(Menu)=1 then menu=instance_find(Menu, 0)
else menu=noone // determined by creation code
