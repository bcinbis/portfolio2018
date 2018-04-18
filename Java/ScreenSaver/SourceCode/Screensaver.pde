
Lines[] myLines = new Lines [20];

void setup() {
  background(random(0, 255), random(0, 255), random(0, 255));
  size(800, 800);
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width), random(height), random(1, 5), random(1, 20));
  }
}

void draw() {
  for (int i= 0; i<myLines.length; i++) {
    myLines[i].display();
  }
}

void mouseReleased() {
  background(random(255), random(255), random(255));
  for (int i= 0; i<myLines.length; i++) {
    myLines[i].xpos = random(width);
    myLines[i].ypos = random(height);
  }
}

void keyPressed() {
  if (key == 'r') {
    
  }
}
