x += 2;
//Until the sprite has moved 20 frames, move it w/ x+=2 until the sprite moves a bit per frame hence the "animation"
if (x>xstart + 20) {
    alarm[1]=1;
} else {
    alarm[0]=1;
}