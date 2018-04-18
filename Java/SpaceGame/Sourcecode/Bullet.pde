class Bullet {

  float xpos, ypos, yspeed;
  boolean collide;

  Bullet(float xpos, float ypos, float yspeed) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.yspeed = yspeed;
  }

  void display() {
    strokeWeight(4);
    stroke(255, 0, 0);
    line(xpos, ypos, xpos, ypos+6);
    ypos-=yspeed;
   
  }

  
  
  void hit() {
    
  }
}
