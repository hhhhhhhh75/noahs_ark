void play() {
  score=0;


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
  pauseButton();
  f=0;
}

void gameOver() {
  while (min>0) {
    score+=60;
    min=min-1;
  }
  score+=total_time_elasped;
  total_time_elasped = 0;
  min=0;
  engine.remove(myShip);
  background(0, 0, 0);
  fill (255, 255, 255);
  textAlign (CENTER);
  textSize(50);
  text("you died", 200, 150);
  text("try again", 200, 400);


  while (engine.size()>0) {
    engine.remove(0);
  }
  
  println(score);
  String s = String.valueOf(score);
  top_score.append(s);
  top_score.sort();
 
  String highscore=top_score.get(0);
  String[] list = split(highscore, ' ');
  saveStrings("/data/scores.txt", list);
  String[] lines = loadStrings("/data/scores.txt");
  for (int i = 0; i < lines.length; i++) {
    println(lines[i]);
  }
}

void pause() {
  engine.remove(myShip);
  background(#5ABECE);
  fill (#365F6C);
  textAlign (CENTER);
  textSize(50);
  text("PAUSE", width/2, height/2);
  pauseButton();
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

void highscore() {
}
void mouseClicked() {
  f=1;
}
void mouseReleased() {
  if (mode==INTRO) {
    mode=PLAY;
  } else if (mode==GAMEOVER) {
    mode=INTRO;
  }
}
