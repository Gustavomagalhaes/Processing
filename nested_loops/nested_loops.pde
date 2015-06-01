/*
  Nested For-Loops: Pixelated Colors
*/

int rectWidth = 10;

void setup() {
  size(500,500);
  background(255);
  noStroke();
  frameRate(10);
  colorMode(HSB,500,100,100);
}

void draw() {
  for(int col = 0; col < width/rectWidth; col++) {
    for(int row = 0; row < height/rectWidth; row++) {
      fill(random(mouseX-50,mouseX+50),100,100);
      rect(col*rectWidth,row*rectWidth,rectWidth,rectWidth);
    }
  }
}
