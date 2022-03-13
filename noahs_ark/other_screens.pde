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

  fill(#365F6C);
  //textSize(50);
  textFont(smaller_font);
  if (total_time_elasped>=60) {
    total_time_elasped = 0;
    min = min + 1;
  }

  if (total_time_elasped<=9) {
    text(min + ":" + "0" + total_time_elasped, 65, 50);
  } else {
    text(min + ":" + total_time_elasped, 65, 50);
  }

  if (millis() - time >= wait) {
    //https://stackoverflow.com/questions/12417937/create-a-simple-countdown-in-processing
    total_time_elasped += 1;
    time = millis();
  }
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
  textSize(50);
  text("FLOOD ESCAPE", 200, 150);
  text("press to begin", 200, 400);
}

void mouseReleased() {
  if (mode==INTRO) {
    mode=PLAY;
  } else if (mode==GAMEOVER) {
    mode=INTRO;
  }
}
