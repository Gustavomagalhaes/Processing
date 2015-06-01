void setup() 
{
  size(500,500);
  background(255);
  smooth();
}

void draw() 
{
  stroke(0);
  strokeWeight(2);
  line(pmouseX,pmouseY,mouseX,mouseY);
}

void mousePressed() {
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(mouseX, mouseY, 30,30);
}

void keyPressed() {
  background(255);
}
