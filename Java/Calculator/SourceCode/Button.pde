class Button {
  int x;   //placement
  int y;   //placement
  int w = 140;   //placement
  int h = 100;   //placement
  int val;
  boolean hovButt = false;   //for mouse hover function
  boolean number;   //number
  char o;
  color b = #00BDFF;
  color dB = #238AA5;
  color O = #0CF5D8;
  color dO = #3CAA9C;
  //float numVal;   //number
  //boolean other;   //other
  //String specVal;   //other
  //String opVal;   //operator

  //constructors start
  Button(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  Button isNumber(int val) {
    number = true;
    this.val = val;
    return this;
  }

  Button isOperator(char o) {
    number = false;
    this.o = o;
    return this;
  }

  Button isOther(char o) {
    number = false;
    this.o=o;
    return this;
  }
  //constructors end

  //display, duh.  Only draws number buttons, but can later be modified to draw others
  void display() {
    //General button layout, hover effect
    noStroke();
    if (number) {
      fill(b);   //consider replacing with gradient
      if (hovButt) {
        fill(dB);
      }
      rect(x, y, w, h);
      //number button display
    } else {
      fill(O);   //consider replacing with gradient
      if (hovButt) {
        fill(dO);
      }
      rect(x, y, w, h);
      //number button display
    }

    fill(0);   //consider changing text color
    textSize(25);   //consider changing, that was a crapshoot
    if (number) {
      text(val, x+62, y+52);  //position may need changing too
    } else {
      if (o == 'n') {
        text("+/-", x+45, y+52);
      } else if (o == '/') {
        text("÷", x+62, y+52);
      } else if (o == '+') {
        text("+", x+62, y+52);
      } else if (o == '-') {
        text("-", x+62, y+52);
      } else if (o == '=') {
        text("=", x+62, y+52);
      } else if (o == 'C') {
        text("C", x+62, y+52);
      } else if (o == '*') {
        text("x", x+62, y+52);
      } else if (o == '=') {
        text("=", x+62, y+52);
      } else if (o == '.') {
        text(".", x+62, y+52);
      } else if (o == 's') {
        text("x^2", x+45, y+52);
      } else if (o == 'q') {
        text("sqrt(x)", x+22, y+52);
      } else if (o == '1') {
        text("sin(x)", x+35, y+52);
      } else if (o == '2') {
        text("cos(x)", x+35, y+52);
      } else if (o == '3') {
        text("tan(x)", x+35, y+52);
      } else if (o == '^') {
        text("^", x+62, y+52);
      } else if (o == 'i') {
        text("invTrig", x+30, y+52);
      }
    }
  }

  void click() {
    hovButt = mouseX > x && mouseX <x+w && mouseY > y && mouseY < y + h;
  }
}
