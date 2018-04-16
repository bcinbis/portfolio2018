int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  // Set start coords
  x = 0;
  y = 0;
}

void draw() {
  fill(255);
  drawName();
  noLoop();
}

// Algorithm for your first name
void drawName() {
  //B
  moveRight(3);
  moveDown(12);
  moveRight(6);
  moveUp(6);
  moveLeft(6);
  moveUp(6);
  moveRight(4);
  moveDown(6);
  //A
  moveRight(9);
  moveLU(3);
  moveLD(3);
  moveDown(6);
  moveUp(6);
  moveRight(6);
  moveDown(6);
  moveUp(6);
  //R
  moveRight(2);
  moveUp(5);
  moveRight(4);
  moveDown(5);
  moveLeft(4);
  moveDown(6);
  moveUp(6);
  moveRD(6);
  moveUp(6);
  //A
  moveRight(9);
  moveLU(3);
  moveLD(3);
  moveDown(6);
  moveUp(6);
  moveRight(6);
  moveDown(6);
  moveUp(6);
  moveRight(1);
  //N
  moveDown(6);
  moveUp(12);
  moveRD(5);
  moveDown(7);
  moveUp(12);
}

// Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y);
  }
  x=x+(10*rep);
}

// Method to draw left line
void moveLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y);
  }
  x=x-(10*rep);
}

// Method to draw down line
void moveUp(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y-i);
  }
  y=y-(10*rep);
}

// Method to draw down line
void moveDown(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y+i);
  }
  y=y+(10*rep);
}

// Method to draw right-up line
void moveRU(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y+i);
  }
  y=y+(10*rep);
  x=x+(10*rep);
}

// Method to draw right-down line
void moveRD(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y+i);
  }
  y=y+(10*rep);
  x=x+(10*rep);
}

// Method to draw left-up line
void moveLU(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y-i);
  }
  y=y-(10*rep);
  x=x-(10*rep);
}

// Method to draw left-down line
void moveLD(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y+i);
  }
  y=y+(10*rep);
  x=x-(10*rep);
}
