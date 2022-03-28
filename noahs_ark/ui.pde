void timer() {

  stroke(#365F6C);
  strokeWeight(6);

  fill(#5ABECE);
  ellipse(30, 32, 38, 38);

  if (millis() - time >= wait) {
    time = millis();
    total_time_elasped +=1;
    timer_pos = timer_pos +1;
  }
  fill(#365F6C);
  textFont(smaller_font);
  if (total_time_elasped>=60) {
    total_time_elasped = 0;
    min = min + 1;
  }

  if (total_time_elasped<=9) {
    text(min + ":" + "0" + total_time_elasped, 110, 50);
  } else {
    text(min + ":" + total_time_elasped, 110, 50);
  }


  if (timer_pos==1) {
    line(30, 34, 30, 23);
  } else if (timer_pos==2) {
    line(30, 32, 21, 32);
  } else if (timer_pos==3) {
    line(30, 32, 30, 42);
  } else if (timer_pos==4) {
    line(30, 32, 40, 32);
  } else if (timer_pos==5) {
    timer_pos=1;
  }
  noStroke();
}

void pauseButton() {
  Button Pause;
  Pause = new Button(367, 33, 37, 37, PAUSE);
  engine.remove(Pause);
  engine.add(Pause);
  
  

  if (f==1) {
    f=0;
    if (rectRect(354, 15, 37, 37, mouseX, mouseY, 10, 10)) {
      if (mode==PAUSE) {
        mode=PLAY;
      } else mode=PAUSE;
    }
  }
}



void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
