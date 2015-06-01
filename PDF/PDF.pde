import processing.pdf.*;

void setup() {
  size(500,500);
  beginRecord(PDF, "my_sketch.pdf");
}

void draw() {
  smooth();
  background(50);
  boolean change = true;
  for (int i = 200; i >= 2; i-=2) {
    if (change) {
      fill(0);
     change = false; 
    } else {
      fill(255); 
      change = true;
    } 
    strokeWeight(0.1);
    stroke(0);
    ellipse(width/2, height/2, i*2, i*2);
  }
  endRecord();
  open(sketchPath("my_sketch.pdf"));
  noLoop();
}
