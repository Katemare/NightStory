var action=argument0, key=argument1

if not responsive then exit
if on_cooldown and key=cooldown_key then exit

on_cooldown=true
cooldown_key=key
alarm_set(0, cooldown_timer)

script_execute(action)
