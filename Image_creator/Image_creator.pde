/*
  Create an image without a background, use key press to save the image
*/

PGraphics pg;

void setup() {
  size(200,200);
  pg = createGraphics(width,height);
  
  // draw a circle to the sketch window (for reference)
  ellipse(100,100,100,100);
  
  // start the graphics buffer draw process
  pg.beginDraw();
  // draw the same ellipse to the graphics buffer
  pg.ellipse(100,100,100,100);
  // end the graphics buffer draw process
  pg.endDraw();
}

void draw() {
  // we aren't animating anything, but if we want keyPressed() to work we need a draw loop
}

void keyPressed() {
  // save the graphics buffer image when a key is pressed
  pg.save("my_image##.png");
}
