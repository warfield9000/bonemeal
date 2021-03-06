var h = display_get_height()/global.scaleFactor;
var w = display_get_width()/global.scaleFactor;

var dx = w/2;
var dy = 87;

var cyl = hud_revolver_02_spr;
var fill = hud_revolver_03_full_spr;
var empty = hud_revolver_03_empty_spr;
var bottom = hud_revolver_reloadIndicator_spr;
var top = hud_revolver_04_spr;

//chamber0 means the 6th chamber for some reason, I'll get mad at me later
if (cylinder[1] != 0) {chmb1 = fill;} else {chmb1 = empty;}
if (cylinder[2] != 0) {chmb2 = fill;} else {chmb2 = empty;}
if (cylinder[3] != 0) {chmb3 = fill;} else {chmb3 = empty;}
if (cylinder[4] != 0) {chmb4 = fill;} else {chmb4 = empty;}
if (cylinder[5] != 0) {chmb5 = fill;} else {chmb5 = empty;}
if (cylinder[0] != 0) {chmb6 = fill;} else {chmb6 = empty;}
 

if (rot != newRot && rot%60 == 0) {lerpI = 0;}

var a = 1;
if (lerpI < 1) { lerpI += 1/6; a = 0; }
else if (lerpI > 1) {lerpI = 1;}

//show_debug_message(lerpI);


if (rot >= 360) {rot -= 360;} else if (rot < 0) {rot += 360;}
if (newRot >= 360) {newRot -= 360;} else if (newRot < 0) {newRot += 360;}

rot = lerp(newRot+60, newRot, lerpI);


//draw bottom
draw_sprite_ext(bottom, 0, dx, dy, 1, 1, 0, c_white, a);

//draw cylinder
draw_sprite_ext(cyl, 0, dx, dy, 1, 1, rot, c_white, 1);

//draw the chambers
draw_sprite_ext(chmb1, 0, dx, dy, 1, 1, rot, c_white, 1);   //chamber 1
draw_sprite_ext(chmb2, 0, dx, dy, 1, 1, rot+60, c_white, 1);   //chamber 2
draw_sprite_ext(chmb3, 0, dx, dy, 1, 1, rot+(2*60), c_fuchsia, 1);   //chamber 3
draw_sprite_ext(chmb4, 0, dx, dy, 1, 1, rot+(3*60), c_lime, 1);   //chamber 4
draw_sprite_ext(chmb5, 0, dx, dy, 1, 1, rot+(4*60), c_white, 1);   //chamber 5
draw_sprite_ext(chmb6, 0, dx, dy, 1, 1, rot+(5*60), c_red, 1);   //chamber 6

//draw top
draw_sprite(top, 0, dx, dy);
