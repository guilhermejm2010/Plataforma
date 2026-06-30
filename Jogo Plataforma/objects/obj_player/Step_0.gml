
verticalspeed += gravity1;

var move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
horizontalspeed = move * 4;

if (keyboard_check_pressed(ord("W")) && on_ground)
{
    verticalspeed = jump_force;
}

if (place_meeting(x, y + verticalspeed, obj_Floor1))
{
    while (!place_meeting(x, y + sign(verticalspeed), obj_Floor1))
    {
        y += sign(verticalspeed);
    }

    verticalspeed = 0;
}
else
{
    y += verticalspeed;
}

on_ground = place_meeting(x, y + 1, obj_Floor1);

if (place_meeting(x + horizontalspeed, y, obj_Floor1))
{
    while (!place_meeting(x + sign(horizontalspeed), y, obj_Floor1))
    {
        x += sign(horizontalspeed);
    }

    horizontalspeed = 0;
}
else
{
    x += horizontalspeed;
}
