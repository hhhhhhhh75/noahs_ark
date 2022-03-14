void play() {

  
  
  engine.remove(myShip);
  engine.add(myShip);

  h=random(10);

  if (h>=9.95) {
    engine.add(new Rock());
  }

  if (h>=9.95) {
    engine.add(new Wave());
  }

  background(#5ABECE);
  timer();

}

void gameOver() {
  total_time_elasped = 0;
  min=0;
  engine.remove(myShip);
  background(0, 0, 0);
  fill (255, 255, 255);
  textAlign (CENTER);
  textSize(50);
  text("you died", 200, 150);
  text("try again", 200, 400);

  int i=0;
  while (engine.size()>0){
    engine.remove(i);
  }
}
void intro() {
  background(#5ABECE);
  fill (#000000);
  textFont(font);
  textAlign (CENTER);
  text("FLOOD", 200, 150);
  text("ESCAPE", 200, 220);
  textFont(smaller_font);
  text("press to begin", 200, 400);
}

void mouseReleased() {
  if (mode==INTRO) {
    mode=PLAY;
  } else if (mode==GAMEOVER) {
    mode=INTRO;
  }
}
