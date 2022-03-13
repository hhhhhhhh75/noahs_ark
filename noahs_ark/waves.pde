class Wave extends GameObject {

  Wave() {
    x=random(25, width-25);
    y=-50;
    dx=0;
    dy=random(1, 2);
    w=50;
    h=50;
  }


  void show() {
    var img = loadImage("pictures/WaterGame2.png");
    image(img, x, y);
    //fill(#6EE8ED);
    //rect(x, y, w, h);
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



boolean hasDied() {
  return false;
}
