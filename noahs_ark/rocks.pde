class Rock extends GameObject {

  Rock() {
    x=random(25, width-25);
    y=-50;
    dx=0;
    dy=random(1, 2);
    w=50;
    h=50;
    j = random(1,3);
  }


  void show() {
    fill(#767676);

    var img = loadImage("rock" + (round(j)));
    img.resize(50, 50);
    image(img, x, y);
  }

  void act() {
  
    if (rectRect(x, y, w, h, myShip.x, myShip.y, myShip.w, myShip.h)){
      exit();
    }
    
    if (y<=height) {
      hasDied();
    }
    y+=dy;
  }
}

 
