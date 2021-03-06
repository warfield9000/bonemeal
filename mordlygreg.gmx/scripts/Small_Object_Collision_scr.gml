//Wall Collisions

//set a different collision mask here, so that walking around is easier

//horizontal collisions
if (place_meeting(x + newX, y, Small_obj) == true)
{
    //left
    if (Dir == 180) { spd = 0; }
    else if (Dir > 90 && Dir < 180) { Dir = 90; spd /= 1.5; }       //force up
    else if (Dir > 180 && Dir < 270) { Dir = 270; spd /= 1.5; }     //force down
    
    //right
    if (Dir == 0 || Dir == 360) { spd = 0; }
    else if (Dir > 0 && Dir < 90) { Dir = 90; spd /= 1.5; }         //force up
    else if (Dir > 270 && Dir < 360) { Dir = 270; spd /= 1.5; }     //force down
}

//vertical collisions
if (place_meeting(x, y + newY, Small_obj) == true)
{
    //up
    if (Dir == 90) { spd = 0; }
    else if (Dir > 0 && Dir < 90) { Dir = 0; spd /= 1.5; }       //force right
    else if (Dir > 90 && Dir < 180) { Dir = 180; spd /= 1.5; }     //force left
    
    //down
    if (Dir == 270) { spd = 0; }
    else if (Dir > 270 && Dir < 360) { Dir = 0; spd /= 1.5; }         //force right
    else if (Dir > 180 && Dir < 270) { Dir = 180; spd /= 1.5; }     //force left
}

//then reset collisions back to normal so that more precise collisions can be used with combat
