/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
verticalspeed += gravity1;

if (place_meeting(x, y + verticalspeed, obj_floor))
{
    while (!place_meeting(x, y + sign(verticalspeed), obj_floor))
    {
        y += sign(verticalspeed);
    }

    verticalspeed = 0;
}
else
{
    y += verticalspeed;
}

if (place_meeting(x + horizontalspeed, y, obj_floor))
{
    while (!place_meeting(x + sign(horizontalspeed), y, obj_floor))
    {
        x += sign(horizontalspeed);
    }

    horizontalspeed = 0;
}
else
{
    x += horizontalspeed;
}

var player = instance_nearest(x, y, obj_player);

if (player != noone)
{
    if (point_distance(x, y, player.x, player.y) < 200)
    {
        if (player.x > x)
        {
            horizontalspeed = 2;
            image_xscale = 1;
        }
        else
        {
            horizontalspeed = -2;
            image_xscale = -1;
        }
    }
    else
    {
        horizontalspeed = 0;
    }
}

if (place_meeting(x, y, obj_player))
{
    var player = instance_place(x, y, obj_player);

    if (player.atacando && can_take_damage)
    {
        vida -= player.attack_damage;
		if (player.x < x)
{
    knockback = 10;
}
else
{
    knockback = -10;
}
		can_take_damage = false;
		flash = 6; 
    }
}
if (!obj_player.atacando)
{
    can_take_damage = true;
}

if (vida <= 0)
{
instance_destroy()	
}

if (flash > 0)
{
    flash--;
}

if (knockback != 0)
{
    if (!place_meeting(x + knockback, y, obj_floor))
    {
        x += knockback;
    }

   
    knockback *= 0.8;

    
    if (abs(knockback) < 0.2)
    {
        knockback = 0;
    }
}
