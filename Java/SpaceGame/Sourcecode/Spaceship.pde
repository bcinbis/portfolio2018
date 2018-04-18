class Spaceship {
  float minX, maxX, minY, maxY;
  Spaceship() {
  }

  void display() {
    minX=mouseX-38; //left
    minY = mouseY -55; //top
    maxX = mouseX + 53; //right
    maxY = mouseY + 22; //bottom
    noStroke();
    fill(180);

    //fuselage
    rect(mouseX, mouseY, 15, 25);
    quad(mouseX, mouseY+2, mouseX+15, mouseY+2, mouseX+10, mouseY-55, mouseX+5, mouseY-55);
    stroke(#8E1D1D);
    strokeWeight(4);
    line(mouseX+7, mouseY-50, mouseX+7, mouseY-10);
    //engines
    noStroke();
    fill(255);
    rect(mouseX - 8, mouseY+5, 8, 30);
    rect(mouseX + 15, mouseY+5, 8, 30);
    fill(100);
    rect(mouseX - 6, mouseY+20, 4, 20);
    rect(mouseX+17, mouseY+20, 4, 20);
    //wings
    fill(180);
    quad(mouseX-8, mouseY+8, mouseX-8, mouseY+28, mouseX-38, mouseY+20, mouseX-38, mouseY+8);
    quad(mouseX+23, mouseY+8, mouseX+23, mouseY+28, mouseX+53, mouseY+20, mouseX+53, mouseY+8);
    //laser cannons
    strokeWeight(4);
    stroke(100);
    line(mouseX-38, mouseY+22, mouseX-38, mouseY-15);
    line(mouseX+53, mouseY+22, mouseX+53, mouseY-15);
    //cockpit
    noStroke();
    fill(0);
    rect(mouseX+4, mouseY-14, 7, 15);
    //Flame
    fill(#F5660C);
    ellipse(mouseX-4, mouseY+44, 7, 10);
    ellipse(mouseX+19, mouseY+44, 7, 10);
    collide();
  }
  
  boolean collide() {
    for(int i=0; i<rocks.size(); i++) {
      Rock temp = rocks.get(i);
        if (temp.minX <= maxX && temp.maxX >= minX && temp.minY <= maxY && temp.maxY >= minY) {
          return true;
        }
      
    }
  }

}
