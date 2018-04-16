class Lines {
  //class variables
  float xpos;
  float ypos;
  float strokeW;
  float lineLength;

  //class constructor

  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    lineLength = tempLength;
  }

  //class display
  void display() {
    strokeW = random(1, 3);
    lineLength = random(1, 20);
    stroke(random(255), random(255), random(255));
    strokeWeight(strokeW);
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      ypos = random(width);
      xpos = random(height);
    } else {
      int r = int(random(0, 100));
      if (r>75) {
        moveLeft(xpos, ypos, lineLength);
      } else if (r>50) {
        moveUp(xpos, ypos, lineLength);
      } else if (r>25) {
        moveDown(xpos, ypos, lineLength);
      } else {
        moveRight(xpos, ypos, lineLength);
      }
    }
  }

  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX + i;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX - i;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      ypos = startY + i;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      ypos = startY - i;
    }
  }
}
