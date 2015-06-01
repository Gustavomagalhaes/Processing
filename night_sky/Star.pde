class Star{ //name
  //attr
  float x, y, w;
  
  //constr
  Star() {
    x = random(width);
    y = random(height);
    w = random(1,2);
  }
  
  //methods
  void display() {
    fill(255);
    noStroke();
    ellipse(x,y,w,w); 
  }
}
