class Wave extends GameObject {

  Wave() {
    x=random(25, width-25);
    y=-50;
    dx=0;
    dy=random(1, 2);
    w=random(50,70);
    h=random(30,40);
  }


  void show() {
    if (mode==INTRO || mode==PLAY || mode==GAMEOVER){
      
    fill(#78DEED);
    }
    rect(x,y,w,h);

  }

  void act() {
    if (rectRect(x-5, y+20, w, h, myShip.x, myShip.y, myShip.w, myShip.h)) {
      mode=GAMEOVER;

    }
    
    if (mode==PAUSE){
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
