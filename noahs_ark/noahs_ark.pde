import processing.javafx.*;

ArrayList<GameObject> engine ;
boolean wkey, akey, skey, dkey, spacekey;
float h = 0;
int time;
int wait = 1000;
int total_time_elasped;
int min;
int mode;
int timer_pos=5;
int f;
int score=0;
StringList top_score, temp;
PFont font, smaller_font;
final int INTRO=0;
final int PLAY=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int HIGHSCORE=4;

Ship myShip;
void setup() {

  
    timer_pos=0;
  time = millis();
  top_score = new StringList();
  size(400, 600, FX2D);
  engine= new ArrayList<GameObject>(1000);
  rectMode(CENTER);
  myShip= new Ship();
  font = loadFont("Trebuchet-BoldItalic-90.vlw");
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
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==HIGHSCORE) {
    highscore();
  } else{
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
