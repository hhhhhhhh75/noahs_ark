PImage [] rocks;

class Ship extends GameObject {


  Ship () {
    x=width/2;
    y=height-100;
    w = 50;
    h = 80;
    dx=0;
    dx=y;
  }


  void show() {
    fill(#6C3902);
    rect(x,y,w,h);
  }

  void act() {
    if (x>=width-25){
       x=width-25; 
    }
    if (x<=25){
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
