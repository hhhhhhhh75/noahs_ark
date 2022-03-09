int mode;
String[] s;
float [] a;
PFont font;

final int INTRO=0;
final int PLAY=1;
final int GAMEOVER=3;

void setup() {
  size(400, 600);
   font = loadFont("Harrington-48.vlw");
  mode=INTRO;
  font = loadFont("Harrington-48.vlw");

}


void draw() {
  println(mode);  //framework
  if (mode==INTRO) {
    intro();
  } else if (mode==PLAY) {
    play();
  } else if (mode==GAMEOVER) {
    gameOver();
  } else {
    println("something is wrong");
  }
}
