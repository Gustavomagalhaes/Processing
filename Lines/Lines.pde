float r = 100;
float g = 150;
float b = 200;
float a = 200;

float px;
float py;

float diam = 5;
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
//  fill(r,g,b,a); // Transparency
  fill(0);
  ellipse(x,y,diam,diam);
  
  r = random(255.0);
  g = random(255.0);
  b = random(255.0);
  a = random(255.0);
  
  px = x;
  py = y;
  
//  diam = random(5);
  x = random(displayWidth);
  y = random(displayHeight); 
  
  strokeWeight(2);
  stroke(r,g,b);
  strokeCap(ROUND);
  line(px,py,x,y);
}
