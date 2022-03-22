class Button extends GameObject {
  float xpos=0;
  float ypos=0;
  Button (float x, float y, float width, float height) {

    xpos=x;
    ypos=y;
    w=width;
    h=height;
  }

  void show() {
    stroke(#365F6C);
    strokeWeight(6);
    fill(#5ABECE);
    rect(xpos, ypos, w, h);

    noStroke();
  }
  void act() {
  }
}
