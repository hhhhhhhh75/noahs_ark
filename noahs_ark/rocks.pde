class Rock extends GameObject {

  Rock() {
    x=random(25, width-25);
    y=-50;
    dx=0;
    dy=random(1, 2);
    w=random(50,70);
    h=w;
    j = random(1, 3);
  }


  void show() {
    fill(#767676);
    ellipse(x, y, w, h);

  }

  void act() {
    if (rectRect(x, y, w, h, myShip.x, myShip.y, myShip.w, myShip.h)) {
      mode=GAMEOVER;
      
    }

    if (y>=height) {
      hasDied();
    }
    y+=dy;
  }
}
