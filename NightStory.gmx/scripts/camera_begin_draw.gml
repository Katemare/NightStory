background_x[0] = view_xview[0]
if not stable then
{
    view_xview[0]=x-width/2
    view_yview[0]=y-height/2
    
    var me=id
    with Parallax
    {
        speed=parallax_depth_mult*me.speed
    }
}
