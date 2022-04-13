class Wave extends GameObject {

  Wave() {
    x=random(25, width-25);
    y=-50;
    dx=0;
    dy=random(1, 2);
    w=80;
    h=40;
  }


  void show() {
    if (mode==PLAY)image(log, x-w/2, y-h/2);
    
  }

  void act() {
    if (rectRect(x,y, w, h, myShip.x, myShip.y, myShip.w, myShip.h)) {
      mode=GAMEOVER;
    }

    if (mode==PAUSE) {
      dy=0;
      fill(#5ABECE);
    } else dy=random(1, 2);

    if (y>=height) {
      hasDied();
    }
    y+=dy;
  }
}



boolean hasDied() {
  return false;
}
