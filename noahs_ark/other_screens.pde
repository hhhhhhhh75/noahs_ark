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
  f=0;
}
void intro() {
  background(#5ABECE);
  fill (#000000);
  textFont(font);
  textAlign (CENTER);
  text("FLOOD", 200, 150);
  text("ESCAPE", 200, 220);
  fill (#5ABECE);
  stroke(#365F6C);
  strokeWeight(6);

  println(mouseX, mouseY);
  rect(290, 390, 140, 100);
  rect(110, 390, 140, 100);
  fill (#FFCE29);
  stroke(#FFCE29);
  strokeWeight(8);
  line(290, 400, 290, 420);
  line(275, 420, 305, 420);
  arc(290, 375, 40, 50, -0.8, PI+QUARTER_PI, CHORD);
  triangle(75, 360, 75, 420, 150, 390);
  if (f==1) {
    f=0;
    if (rectRect(215, 330, 140, 100, mouseX, mouseY, 1, 1)) {
      if (mode==INTRO) {
        mode=HIGHSCORE;
      }
    }
    if (rectRect(35, 330, 140, 100, mouseX, mouseY, 1, 1)) {
      if (mode==INTRO) {
        mode=PLAY;
      }
    }
  }
  noStroke();
}

void highscore() {
  background(#5ABECE);
  fill (#000000);
  rect(width/2,450,150,100);
  fill (#000000);
  textFont(smaller_font);
  textAlign (CENTER);
  text("HIGHSCORE", 200, 150);
  textFont(smaller_font);
  fill (#FFCE29);
  String[] lines = loadStrings("/data/scores.txt");
  top_score.append(lines);
  int k = Integer.parseInt(top_score.get(0));
  text(k, 165, 355);
  
  if (f==1) {
    f=0;
    if (rectRect(354, 15, 37, 37, mouseX, mouseY, 10, 10)) {
      if (mode==PAUSE) {
        mode=PLAY;
      } else mode=PAUSE;
    }
  }
  rotate(radians(-17));
  noStroke();
  star(0, 350, 15, 30, 5);
  f=0;
}
void mouseClicked() {
  f=1;
}
void mouseReleased() {
  if (mode==GAMEOVER) {
    mode=INTRO;
  }
}
