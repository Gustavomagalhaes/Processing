float r = 100;
float g = 150;
float b = 200;
float a = 200;

float diam = 2;
float x = 100;
float y = 100;
void setup() {
  size(displayWidth,displayHeight);
//  size(500,500);
  background(255);
//  background(0);
  smooth();
}

void draw() {
  noStroke();
  fill(r,0,b,a); // Transparency
//  fill(255);
  ellipse(x,y,diam,diam);
  
  r = random(255.0);
  g = random(255.0);
  b = random(255.0);
  a = random(100);
  
//  diam = random(5);
  diam = random(400);
  x = random(displayWidth);
  y = random(displayHeight); 
}
