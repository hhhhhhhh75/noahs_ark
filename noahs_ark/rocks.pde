class Rock extends GameObject {

  Rock() {
    x=random(25, width-25);
    y=-50;
    dx=0;
    dy=random(1, 2);
    w=50;
    h=50;
    j = random(1, 3);
  }


  void show() {
    var img = loadImage("pictures/RockGame.png");
    //img.resize(75,25);
    image(img, x, y);
    //fill(#767676);
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
