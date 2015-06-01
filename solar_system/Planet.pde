class Planet {
  float theta; //degrees
  float radius;
  float x, y;
  float centerX, centerY;
  float speed;

  Planet(float centerX_, float centerY_, float speed_) {
    theta = 0;
    radius = 75;
    centerX = centerX_;
    centerY = centerY_;
    speed = speed_;
  }

  void display() {
    move();
    x = (radius * cos(radians(theta))) + centerX;
    y = (radius * sin(radians(theta))) + centerY;
    fill(0);
    noStroke();
    ellipse(x, y, 20, 20);
  }

  void move() {
    theta += speed;
  }
}

