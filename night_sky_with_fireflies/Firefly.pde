class Firefly {
  float x, y, a, xTime, yTime;

  Firefly() {
    x = random(width);
    y = random(height);
    a = 70;
    xTime = random(100);
    yTime = random(100);
  }

  void display() {
    move();
    noStroke();
    fill(150, 255, 40, a);
    ellipse(x, y, 10, 10);
    fill(150, 255, 40);
    ellipse(x, y, 2, 2);
  }
  
  void move() {
    x = map(noise(xTime),0,1,-150,width+150);
    y = map(noise(yTime),0,1,height-150,height+50);
    xTime += 0.001;
    yTime += 0.001;
  }
}

