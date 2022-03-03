import processing.javafx.*;

ArrayList<GameObject> engine ;
boolean wkey, akey, skey, dkey, spacekey;
float h = 0;
int time;
int wait = 1000;
int total_time_elasped;
Ship myShip;



void setup() {
  time = millis();
  size(400, 600, FX2D);
  engine= new ArrayList<GameObject>(1000);
  rectMode(CENTER);
  noStroke();
  myShip= new Ship();
  engine.add(myShip);
}
void draw() {
  h=random(10);
  
  if(h>=9.95){
    engine.add(new Rock());
  }
  
  if(h>=9.95){
    engine.add(new Wave());
  }

  
  background(#5ABECE);
  
   if(millis() - time >= wait){
    //https://stackoverflow.com/questions/12417937/create-a-simple-countdown-in-processing
   total_time_elasped += 1;
   fill(0);
   textSize(50);
   text(total_time_elasped, 10,10);
   time = millis(); 
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
