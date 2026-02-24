#macro DoTick event_user(4)
timer -= delta_time/1000000;
if (timer <= 0) 
{
    timer = tick_length;
    with all DoTick;
}