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
  Pause = new Button(367, 33, 37, 37);
   engine.remove(Pause);
  engine.add(Pause);
  
  stroke(#365F6C);
  strokeWeight(6);
  line(360, 20, 360, 45);
  line(380, 20, 380, 45);
  noStroke();
 

  if (f==1) {
    f=0;
    if (rectRect(354, 15, 37, 37, mouseX, mouseY, 10, 10)) {
      if (mode==PAUSE) {
        mode=PLAY;
      } else mode=PAUSE;
    }
  }
}
