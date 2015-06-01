void setup()
{
  size(500,500);
  background(155);
  smooth();
  frameRate(30);
}

void draw()
{
  colorMode(HSB,360,100,100);
  fill(mouseX,100,100);
  //ellipse(mouseX,mouseY,150,150);
  //rect(mouseX,mouseY,150,150);
}

void mousePressed()
{
  background(155);
}
