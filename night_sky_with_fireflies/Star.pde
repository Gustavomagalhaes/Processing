class Star { //name
  //attr
  float x,y,w,a;
  float aspeed;
  
  //constr
  Star() {
    x = random(width);
    y = random(height);
    w = random(1,2);
    a = random(0,255);
    aspeed = random(-4,4);
  }
  
  void display() {
    fill(a);
    noStroke();
    ellipse(x,y,w,w);
  }
  
  void twinkle() {
    a += aspeed;
    if(a > 255 || a < 0) {
      aspeed *= -1;
    }
  }
}
