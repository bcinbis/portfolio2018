//Timeline 

//Color scheme (used adobe color cc)
//Blueish (127, 255, 239), Green (30, 204, 133), orange (255, 150, 63)

void setup() {
  size(900, 400);
  background(255);
}

void draw() {
  background(127, 255, 239);
  drawRef();
  //tickmarks();
  //Timeline points
  function("Colossus Mark 1", 116, 140, 1944, "Binary, electronic computer and the world's first programmable, electronic digital computer. - UK");
  function("Manchester Mark 1", 161, 180, 1949, "One of the first stored-program computers, basis for the commercial Ferranti Mark 1. - UK");
  function("ENIAC", 134, 280, 1946, "Used to calculate artillery firing tables and study effectiveness of nukes. - US");
  function("Transistors", 216, 250, 1955, "Replaced vacuum tubes in 1955, 2nd generation computer and can switch electrical currents.");
  function("Atlas Supercomputer", 280, 280, 1962, "At its time the most powerful computer in the world.  Initially, 3 were built. - UK");
  function("Integrated Circuit", 242, 110, 1958, "Electronic device where components like transistors are soldered onto one piece of silicon.");
  function("Microprocessor", 360, 250, 1971, "Third generation of computers used these.  All of the functions of a CPU crammed onto one integrated circuit.");
  function("WWW", 530, 180, 1990, "Informational space where  people can access files and documents.  Main components are URL's (address), hypertext (links), and the internet (access).");
  function("64-bit processor", 647, 250, 2003, "Beginnings of modern computers, much stronk processing power.");
  function("PC", 395, 140, 1975, "First Personal Computer, the Altair 8800, was something you could have and use as an individual.");
}

void drawRef() {
  //Middle Line
  stroke(30, 204, 133);
  strokeWeight(4);
  line(100, 200, 800, 200);
  fill(255, 150, 63);
  line(100, 195, 100, 205);
  text("1940", 80, 190);
  line(800, 195, 800, 205);
  text("2015", 782, 190);
  line(450, 195, 450, 205);
  text("1977.5", 425, 190);
  //Header
  noStroke();
  textSize(32);
  fill(255, 150, 63);
  text("Computer History", 300, 50);
  textSize(15);
  text("Encompassing events from WWII codebreaking machines to the release of the world wide web - Made by Ya Boi Baran", 20, 70);
}

/*
void tickmarks() {
  float increment = 700/75;
  float x = 100;
  while(x<800) {
    stroke(30, 204, 133);
    line(x, 195, x, 205);
    x+=increment*5;
  }
}
*/

void function(String S, float X, float Y, int Year, String Description) {
  textSize(14);
  float year = Year-1940;
  float increment = 700/75;
  stroke(30, 204, 133);
  strokeWeight(2);
  line(X+20, Y, 100+year*increment, 200);
  fill(255, 150, 63);
  String A = S + "," + " " + Year;
  float rectw = textWidth(A);
  fill(30, 204, 133);
  noStroke();
  rect(X-5, Y-15, rectw+10, 20, 8);
  fill(255, 150, 63);
  textSize(14);
  text(A, X, Y);
  float B = textWidth(Description);
  if(mouseY > Y-15 && mouseY <= Y+5 && mouseX > X-5 && mouseX <= X+5+rectw) {
    //If text doesn't fit on page
    if(B>900) {
      textSize(12);
      B = textWidth(Description);
      text(Description, 450-B/2, 350);
    }
    //If text fits on page
    text(Description, 450-B/2, 350);
  }
}
