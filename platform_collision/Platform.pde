class Platform {
  float x, y, w, h;
  
  Platform(float x_, float y_) {
    x = x_;
    y = y_;
    w = 100;
    h = 25;
  }
  
  void display() {
    fill(0,0,255);
    rect(x,y,w,h);
  }
  
}
