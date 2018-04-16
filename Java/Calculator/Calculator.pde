Button[] numbButts = new Button[10];
Button[] opButts = new Button[15];

float ans;
String L, R;
String op;
boolean left, eq, D, inv;  
//String display = "0";
//String opDisplay = " ";



void setup() {
  size(700, 660);
  L = "";
  R = "";
  ans = 0.0;
  op = " ";
  left = true;
  eq = false;
  D = true;
  inv = false;
  numbButts[0] = new Button(140, 560, 140, 100).isNumber(0);
  numbButts[1] = new Button(0, 460, 140, 100).isNumber(1);
  numbButts[2] = new Button(140, 460, 140, 100).isNumber(2);
  numbButts[3] = new Button(280, 460, 140, 100).isNumber(3);
  numbButts[4] = new Button(0, 360, 140, 100).isNumber(4);
  numbButts[5] = new Button(140, 360, 140, 100).isNumber(5);
  numbButts[6] = new Button(280, 360, 140, 100).isNumber(6);
  numbButts[7] = new Button(0, 260, 140, 100).isNumber(7);
  numbButts[8] = new Button(140, 260, 140, 100).isNumber(8);
  numbButts[9] = new Button(280, 260, 140, 100).isNumber(9);

  opButts[0] = new Button(420, 460, 140, 100).isOperator('/');
  opButts[1] = new Button(0, 160, 140, 100).isOperator('C');
  opButts[2] = new Button(420, 360, 140, 100).isOperator('*');
  opButts[3] = new Button(560, 560, 140, 100).isOperator('=');
  opButts[4] = new Button(420, 160, 140, 100).isOperator('+');
  opButts[5] = new Button(420, 260, 140, 100).isOperator('-');
  opButts[6] = new Button(280, 560, 140, 100).isOperator('n');
  opButts[7] = new Button(0, 560, 140, 100).isOperator('.');
  opButts[8] = new Button(140, 160, 140, 100).isOperator('s');
  opButts[9] = new Button(280, 160, 140, 100).isOperator('q');
  opButts[10] = new Button(560, 160, 140, 100).isOperator('1');
  opButts[11] = new Button(560, 260, 140, 100).isOperator('2');
  opButts[12] = new Button(560, 360, 140, 100).isOperator('3');
  opButts[13] = new Button(420, 560, 140, 100).isOperator('^');
  opButts[14] = new Button(560, 460, 140, 100).isOperator('i');
}

void draw() {
  background(0);
  for (int i = 0; i<numbButts.length; i++) {
    numbButts[i].display();
    numbButts[i].click();
  }
  for (int i = 0; i<opButts.length; i++) {
    opButts[i].display();
    opButts[i].click();
  }
  changeDisplay();
}

void mouseReleased() {
  for (int i=0; i<numbButts.length; i++) {
    if (numbButts[i].hovButt && left) {
      L += int(numbButts[i].val);
      //display = L; //take out?
    } else if (numbButts[i].hovButt && !left) {
      R += int(numbButts[i].val);
      //display = R; // take out?
    }
  }


  //other buttons
  for (int i=0; i<opButts.length; i++) {
    if (opButts[i].hovButt && opButts[i].o == 'C') {
      performClear();
      ///println(i + "" + opButts[i].o);
      ///op = str(opButts[i].o);
      //opDisplay = op;
    } else if (opButts[i].hovButt && opButts[i].o == '=') {
      eq = true;
      performCalc();
      op = "=";
    } else if (opButts[i].hovButt && opButts[i].o == '+') {
      op = "+";
      left=false;
      D = true;
    } else if (opButts[i].hovButt && opButts[i].o == '-') {
      op = "-";
      left=false;
      D = true;
    } else if (opButts[i].hovButt && opButts[i].o == '*') {
      op = "*";
      left=false;
      D = true;
    } else if (opButts[i].hovButt && opButts[i].o == '/') {
      op = "/";
      left=false;
      D = true;
    } else if (opButts[i].hovButt && opButts[i].o == 'n') {
      if (left) {
        ans = float(L) * -1;
        L = str((float)ans);
      } else {
        ans = float(R) * -1;
        R = str((float)ans);
      }
    } else if (opButts[i].hovButt && opButts[i].o == '.' && D == true) {
      if (left) {
        L += opButts[i].o;
        D = false;
      } else {
        R += opButts[i].o;
        D = false;
      }
    } else if (opButts[i].hovButt && opButts[i].o == 's') {
      left = false;
      D = true;
      op = "s";
    } else if (opButts[i].hovButt && opButts[i].o == 'q') {
      left = false;
      D = true;
      op = "q";
    } else if (opButts[i].hovButt && opButts[i].o == '1') {
      if (inv == true) {
        op = "4";
        left = false;
        D = true;
        inv = true;
      } else {
        left = false;
        D = true;
        op = "1";
        inv = false;
      }
    } else if (opButts[i].hovButt && opButts[i].o == '2') {
      if (inv == true) {
        op = "5";
        left = false;
        D = true;
        inv = true;
      } else {
        left = false;
        D = true;
        op = "2";
        inv = false;
      }
    } else if (opButts[i].hovButt && opButts[i].o == '3') {
      if (inv == true) {
        op = "6";
        left = false;
        D = true;
        inv = true;
      } else {
        left = false;
        D = true;
        op = "3";
        inv = false;
      }
    } else if (opButts[i].hovButt && opButts[i].o == '^') {
      left = false;
      D = true;
      op = "^";
    } else if (opButts[i].hovButt && opButts[i].o == 'i') {
      left = false; 
      inv = true;
      D = true;
      op = "inv";
    } 
  }
}

void performCalc() {
  switch(op) {
  case "+":           //supposed to be single quotes, but gives error b/c a string.  Change to char????
    ans = float(L) + float(R);
    L = str((float)ans);
    left = false;
    break;
  case "*":
    ans = float(L) * float(R);
    L = str((float)ans);
    left = false;
    break;
  case "/":
    ans = float(L) / float(R);
    L = str((float)ans);
    left = false;
    break;
  case "-":
    ans = float(L) - float(R);
    L = str((float)ans);
    left = false;
    break;
  case "s":
    ans = float(L) * float(L);
    L = str((float)ans);
    left = false;
    break;
  case "q":  
    ans = sqrt(float(L));
    L = str((float)ans);
    left = false;
    break;
  case "1":
    ans = sin(radians(float(L)));
    L = str((float)ans);
    left = false;
    break;
  case "2":
    ans = cos(radians(float(L)));
    L = str((float)ans);
    left = false;
    break;
  case "3":
    ans = tan(radians(float(L)));
    L = str((float)ans);
    left = false;
    break;
  case "^":
    ans = pow(float(L), float(R));
    L = str((float)ans);
    left = false;
    break;
  case "inv":
    if(inv == true) { 
      inv = false;
    } else if (inv == false) {
      inv = true;
    }
    break;
  case "4":
    ans = degrees(asin(float(L)));
    L = str((float)ans);
    left = false;
    break;
  case "5":
    ans = degrees(acos(float(L)));
    L = str((float)ans);
    left = false;
    break;
  case "6":
    ans = degrees(atan(float(L)));
    L = str((float)ans);
    left = false;
    break;
  }
}

void performClear() {
  L = "";
  R = "";
  ans = 0.0;
  op = " ";
  left = true;
  eq = false;
  inv = false;
  D = true;
}

void changeDisplay() {
  fill(200, 150);
  rect(40, 40, 620, 80);
  fill(255, 0, 0);
  textSize(20);
  if (eq) {
    text((float)ans, 45, 85);
  } else { 
    if (left) {
      text(L, 45, 85);
    } else {
      text(R, 45, 85);
    }
  } 
  //text(display, 50, 85);        
  //text(opDisplay, 500, 85);

  fill(200, 100);
  rect(40, 120, 620, 40);
  fill(255, 0, 0);
  textSize(20);
  if (eq) {
    fill(255, 0, 0);
    //text(L + " " + op + " " + R + " " + ans, 50, 145);
  } else {
    text(L + op + R, 50, 145);
  }
  if(inv == true) {
    text("invTrig Activated", 480, 145);
  }
  //Display values for variables.  Postions will change but for now I'll keep them there
  textSize(15);
  text("L:" + L, 10, 20);
  text("R:" + R, 100, 20);
  text("ans:" + ans, 190, 20);
  text("op:" + op, 280, 20);
  text("left:" + left, 370, 20);
  text("eq:" + eq, 460, 20);
  text("inv:" + inv, 550, 20);
  //text("display:" + display, 550, 20);
}
