class Square {
  float x, y, footx, footy;
  float sqw;
  float speedx, speedy;
  boolean collided;
  
  Square() {
    x = width/2;
    y = height/2;
    sqw = 50;
    footx = x;
    footy = y + sqw/2;
    speedx = speedy = 0;
    collided = false;
  }
  
  void display() {
    if (!collided) {
      gravity();
    }
    move();
    moveFoot();
    checkCollision(p1);
    checkCollision(p2);
    fill(0);
    rect(x,y,sqw,sqw);
    fill(0,255,0);
    ellipse(footx,footy,5,5);
  }
  
  void gravity() {
    speedy += gravity;
    speedy = constrain(speedy, -1000, terminalV);
  }
  
  void move() {
    x += speedx;
    y += speedy;
    y = constrain(y,0+sqw/2,width-sqw/2-20);
  }
  
  void moveFoot() {
    footx = x;
    footy = y + sqw/2;
  }
  
  void checkCollision(Platform p_) {
    println("Checking");
    if (speedy > 0) {
      println("Speed +");
      if (footx > p_.x-((p_.w)/2) && footx < p_.x+((p_.w)/2)) {
        println("X bounded");
        if (footy > p_.y-((p_.h)/2) && footy < p_.y+((p_.h)/2)) {
          collided = true;
          y = p_.y-((p_.h)/2)-sqw/2;
          speedy = 0;
        }
      }
    }
  }
}
