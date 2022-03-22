class Shield extends GameObject {
  
  Shield(){
    x = myShip.x;
    y = myShip.y - 5;
    
  }
  void draw(){
   fill(#508AEA);
   curve(myShip.x+100, myShip.y+100, myShip.x-100, myShip.y-100, myShip.x+100, myShip.y+100, myShip.x+200, myShip.x+200);
    
  }
  
  
  
  
  
  
  
  
}
