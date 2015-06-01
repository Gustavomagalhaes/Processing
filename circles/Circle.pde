class Circle { //name
  // attr
  color darkRed;
  color lightRed;
  float x;
  float y;
  float w;
  float mouseDist;
  
  // constr
  Circle(float x_, float y_) {
    darkRed = color(255,0,0);
    lightRed = color(255,150,150);
    x = x_; // tempX
    y = y_; // tempY
    w = 100;
  }
  
  //methods
  
  void detect() {
    mouseDist = dist(x,y,mouseX,mouseY);
  }
  
  void display() {
    if (mouseDist < w/2) {
      fill(lightRed);
    } else {
      fill(darkRed);
    }
    noStroke();
    ellipse(x,y,w,w);
  }
  
}
