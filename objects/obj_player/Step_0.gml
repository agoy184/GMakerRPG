//Horizontal movement with D and A keys
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
//Vertical movement with S and W keys
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//move&collide stops player hor/ver movespeed when it collides with tilemap given (Tiles_Col)
move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

//If the player is moving..
if (_hor != 0 or _ver != 0) {
    //Change walking sprite depending on where they are heading
    if (_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;
            
} else {
    //Change idle sprite when they aren't moving based on where they facing
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;    
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;    
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;        
}

if (hp <= 0) {
    game_restart();
}