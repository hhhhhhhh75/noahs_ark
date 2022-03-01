import processing.javafx.*;

ArrayList<GameObject> engine ;
boolean wkey, akey, skey, dkey, spacekey;
float h = 0;
Ship myShip;
void setup() {
  size(400, 600, FX2D);
  engine= new ArrayList<GameObject>(1000);
  rectMode(CENTER);
  noStroke();
  myShip= new Ship();
  engine.add(myShip);
}
void draw() {
  h=random(10);
  
  if(h>=9.95){
    engine.add(new Rock());
  }
  
  if(h>=9.95){
    engine.add(new Wave());
  }
  
  
  background(#5ABECE);
  int i =engine.size()-1;

  while (i>=0) {
    GameObject obj=engine.get(i);
    obj.show();
    obj.act();
    if (obj.hasDied()) {
      engine.remove(i);
    }
    i--;
  }
}

void keyPressed() {
  if (key=='w'||key=='W') wkey=true;
  if (key=='a'||key=='A') akey=true;
  if (key=='s'||key=='S') skey=true;
  if (key=='d'||key=='D') dkey=true;
  if (key==' ')         spacekey=true;
}
void keyReleased() {
  if (key=='w'||key=='W') wkey=false;
  if (key=='a'||key=='A') akey=false;
  if (key=='s'||key=='S') skey=false;
  if (key=='d'||key=='D') dkey=false;
  if (key==' ')         spacekey=false;
}
