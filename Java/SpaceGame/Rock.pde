class Rock {
  float xpos, ypos, xspeed, yspeed;
  boolean collide;
  float minX = xpos - 20;   //left of rock
  float maxX = xpos +20;    //right of rock
  float minY = ypos - 20;   //top of rock
  float maxY = ypos + 20;   // bottom of rock
  
  Rock(float xpos, float ypos) {
    this.xpos = xpos;
    this.ypos = ypos;
    float rand = random(-1, 1);
    if (rand<0) {
      xspeed = random(1.5, 5);
    }
    else {
      xspeed = -1*random(1.5, 5);
    }
    yspeed = random(3, 7);
  }

  void display() {
    stroke(255, 0, 0);
    fill(#D85D16);
    ellipse(xpos, ypos, 40, 40);
    xpos += xspeed;
    ypos += yspeed; 
    checkBounds();
  

  }
  
  void checkBounds(){
    if(xpos<-20 || xpos>width+20 || ypos>height +20) {
      reset();
    }
  }
  
  void reset() {
    float rand = random(-1, 1);
    if(rand<0) {
      xpos = -20;
      xspeed = abs(xspeed);
    } else {
      xpos = width+20;
      xspeed = -abs(xspeed);
    }
    ypos = random(-400, 100);
  }





}
