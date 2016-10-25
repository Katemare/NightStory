var converted=0
switch keyboard_key
{
    case vk_enter: converted=vk_space; break;
    case "W": converted=vk_up; break;
    case "S": converted=vk_down; break;
    case "A": converted=vk_left; break;
    case "D": converted=vk_right; break;
}
return converted
