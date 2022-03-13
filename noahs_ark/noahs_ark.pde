import processing.javafx.*;

ArrayList<GameObject> engine ;
boolean wkey, akey, skey, dkey, spacekey;
float h = 0;
int time;
int wait = 1000;
int total_time_elasped;
int min;
int mode;
boolean homescreen = true;
PFont font, smaller_font;
PImage ocean;
final int INTRO=0;
final int PLAY=1;
final int GAMEOVER=3;

Ship myShip;



void setup() {
  time = millis();
  size(400, 600, FX2D);
  engine= new ArrayList<GameObject>(1000);
  rectMode(CENTER);
  noStroke();
  myShip= new Ship();
  font = loadFont("Trebuchet-BoldItalic-75.vlw");
  smaller_font = loadFont("Trebuchet-BoldItalic-50.vlw");
  mode=INTRO;
}
void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==PLAY) {
    play();
  } else if (mode==GAMEOVER) {
    gameOver();
  } else {
    println("something is wrong");
  }

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
