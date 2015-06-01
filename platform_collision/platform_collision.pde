float gravity = 1;
float terminalV = 20;
Square s;
Platform p1, p2;

void setup() {
  size(500,500);
  rectMode(CENTER);
  s = new Square();
  p1 = new Platform(width/2,height/2);
  p2 = new Platform(width/4,height/4);
}
void draw() {
  background(255);
  noStroke();
  fill(155);
  rect(width/2,height-12.5,width,12.5);
  p1.display();
  p2.display();
  s.display();
}

void keyPressed() {
  if (keyCode == UP) {
    s.speedy = -20;
    s.collided = false;
  }
  if (keyCode == LEFT) {
    s.x -= 2;
    s.collided = false;
  }
  if (keyCode == RIGHT) {
    s.x += 2;
    s.collided = false;
  }
}
