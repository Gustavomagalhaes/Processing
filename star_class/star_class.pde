class Star { // 1. name
  // 2. attributes
  float posx, posy;
  float w;
  color c;
  float speedx, speedy;

  // 3. constructor
  Star() {
    posx = random(width);
    posy = random(height);
    w = 30;
    c = color(0,0,random(255));
    speedx = random(-1,1);
    speedy = random(-1,1); 
  }

  // 4. methods
  void display() {
    fill(c);
    noStroke();
    ellipse(posx, posy, w, w);
  }
  
  void move() {
    posx += speedx;
    posy += speedy;
  }
}
