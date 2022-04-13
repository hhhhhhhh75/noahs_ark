class Ship extends GameObject {


  Ship () {
    x=width/2;
    y=height-100;
    w = 75;
    h = 45;
    dx=0;
    dx=y;
  }


  void show() {

    image(ark, x-w/2, y-h/2);
  }

  void act() {
    if (x>=width-27) {
      x=width-25;
    }
    if (x<=27) {
      x=25;
    }


    dx=0;

    if (akey) dx=-5;
    if (dkey) dx=5;

    x+=dx;
  }

  boolean hasDied() {
    return false;
  }
}
