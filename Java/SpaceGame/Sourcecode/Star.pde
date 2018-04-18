class Star {
  float xpos, ypos, yspeed;
  float starWidth = random(1, 4);


  Star(float xpos, float ypos, float yspeed) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.yspeed = yspeed;
  }
  
  void display() {

    noStroke();
    fill(255, 100);
    ellipse(xpos, ypos, starWidth, starWidth);
    ellipse(xpos, ypos, starWidth-2, starWidth-2);
    fill(255, 50);
    ellipse(xpos, ypos, starWidth+3, starWidth+3);
    stroke(255, 50);
    line(xpos, ypos+ starWidth/2, xpos, ypos - starWidth/2);
    line(xpos+starWidth/2, ypos, xpos - starWidth/2, ypos);
    stroke(255, 30);
    line(xpos, ypos+ starWidth/2 + 1, xpos, ypos - starWidth/2 - 1);
    line(xpos+starWidth/2 + 1, ypos, xpos - starWidth/2-1, ypos);
    stroke(255, 10);
    line(xpos, ypos+ starWidth/2 + 2, xpos, ypos - starWidth/2 - 2);
    line(xpos+starWidth/2 + 2, ypos, xpos - starWidth/2-2, ypos);
    ypos+=yspeed;
    if(ypos>height+starWidth) {
      ypos = -10;
    }
  }
}
