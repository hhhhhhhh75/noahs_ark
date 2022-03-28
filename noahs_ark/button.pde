class Button extends GameObject {
  float xpos=0;
  float ypos=0;
  float kk;

  Button (float x, float y, float width, float height, float k) {

    xpos=x;
    ypos=y;
    w=width;
    h=height;
    kk=k;
  }

  void show() {
    stroke(#365F6C);
    strokeWeight(6);
    fill(#5ABECE);
    rect(xpos, ypos, w, h);

    noStroke();
  }

  void mouseClicked() {
    if (rectRect(xpos, ypos, w, h, mouseX, mouseY, 10, 10)) {
      mode=int(kk);
    }
  }
}
