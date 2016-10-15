var slug=argument0

// I hate switch peculiar syntax. --EvilCat
switch slug
{
case 'new_game':
    room_goto(TestRoom); // TEMP
    break;
case 'exit':
    game_end()
    break;
}
