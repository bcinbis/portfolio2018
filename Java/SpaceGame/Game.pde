Spaceship[] player = new Spaceship[1];
ArrayList<Bullet> bullets = new ArrayList<Bullet>(); //dynamic array list
ArrayList<Rock> rocks = new ArrayList<Rock>();
Star[] stars = new Star[100];


void setup() {
  size(700, 700);
  player[0] = new Spaceship();
  for (int i=0; i<stars.length; i++) {
    stars[i] = new Star(random(0, width), random(0, height), random(4, 6));
  }
  for (int i=0; i<10; i++) {
    Rock b = new Rock(random(0, width), random(0, height/2));
    rocks.add(b);
  }
}



void draw() {
  background(0);
  for (int i = 0; i<stars.length; i++) {
    stars[i].display();
  }
  for (int i = 0; i<rocks.size(); i++) {
    Rock b = rocks.get(i);
    b.display();
  }   
  for (int i = 0; i<player.length; i++) {
    player[i].display();
  }
  for (int i = 0; i<bullets.size(); i++) {
    Bullet b = bullets.get(i);
    b.display();
  }
  noCursor();
}

void keyPressed() {
  if (key == ' ') {
    Bullet b = new Bullet(mouseX + 53, mouseY-18, 10);
    Bullet c = new Bullet(mouseX - 38, mouseY-18, 10);
    bullets.add(b);
    bullets.add(c);
  }
}

void collide() {
  
  
}
