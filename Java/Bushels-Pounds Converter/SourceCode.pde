Spud spuds[] = new Spud[300];
void setup() {
  size(500, 300);
  for (int i=0; i<300; i+=1) {
    float P = random(0, 500);
    spuds[i] = new Spud(P, i, random(5, 15));
  }
}

void draw() {
  background(0);
  title();
  instructions();
  legitdisplay();
  numbLine();
  spud();
  glitch();
}

void title() {
  textSize(15);
  String A = "Bushels of Potatoes to Pounds Converter - by Baran Cinbis";
  noStroke();
  fill(#CC4499);
  rect(((width-textWidth(A))/2)-5, 4, textWidth(A)+10, 22, 6);
  fill(#6FFFB6);
  textSize(15);
  textAlign(CENTER);
  text("Bushels of Potatoes to Pounds Converter - by Baran Cinbis", 250, 20);
}

void instructions() {
  fill(#CC4499);
  textSize(12);
  text("Welcome to bushels of potato converter, voted Idaho's best of 2017!  Move your \n mouse horizontally to select your count of bushels of potatoes, or pounds! \n The number line shows where to move your mouse in order to convert a certain \n amount of bushels.", 250, 40);
}

void numbLine() {
  strokeWeight(4);
  stroke(#339399);
  line(0, 175, 500, 175);
  for (int x=0; x<width; x+=50) {
    textSize(10);
    text(x, x, 160);
    line(x, 165, x, 175);
  }
}

void spud() {
  noStroke();
  fill(85+134*mouseX/width, 201+8*mouseX/width, 37-37*mouseX/width);
  ellipse(mouseX, 200, 20, 30);
  fill(0);
  ellipse(mouseX+2, 202, 2, 2);
  ellipse(mouseX-2, 195, 2, 2);
  ellipse(mouseX-3, 208, 2, 2);
  ellipse(mouseX+4, 196, 2, 2);
}

void legitdisplay() {
  textAlign(LEFT);
  fill(#CC4499);
  textSize(12);
  text("Bushels: " + mouseX, 215, 230);
  text("Pounds: " + bpConverter(mouseX), 215, 240);
}

void glitch() {
  fill(#CC4499);
  rect(210, 265, 80, 14, 3);
  fill(#6FFFB6);
  textSize(12);
  textAlign(CENTER);
  text("Make it Rain", 250, 276);
  if (mousePressed == true && mouseX>210 && mouseX<290 && mouseY>265 && mouseY<279) {
    for (int i=0; i<spuds.length; i++)
    {
      spuds[i].update();
      spuds[i].display();
    }
  }
}

class Spud
{
  float x, y, sped;
  Spud(float x, float y, float sped)
  {
    this.x=x;
    this.y=y;
    this.sped=sped;
  }
  void display()
  {
    fill(219, 209, 0);
    ellipse(x, y, 20, 30);
    fill(0);
    ellipse(x+2, y+2, 2, 2);
    ellipse(x-2, y-5, 2, 2);
    ellipse(x-3, y+8, 2, 2);
    ellipse(x+4, y-4, 2, 2);
  }
  void update()
  {
    y+=sped;
    if (y>height +22)
    {
      y=random(-22, -10);
      x=random(width);
    }
  }
}

//disclaimer: these conversions are done acording to MyTractorForum.com, so
//if they're wrong, that's why.

float bpConverter(float x) {
  x = x*60.0;
  return x;
}

float pbConverter(float x) {
  x = x/60.0;
  return x;
}
