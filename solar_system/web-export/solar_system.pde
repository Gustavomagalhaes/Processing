Planet myPlanet, myMoon;

void setup() {
  size(500,500);
  myPlanet = new Planet(width/2,height/2, 1);
  myMoon = new Planet(myPlanet.x, myPlanet.y, 1.5);
}

void draw() {
  background(60,0,255);
  myPlanet.display();
  myMoon.centerX = myPlanet.x;
  myMoon.centerY = myPlanet.y;
  myMoon.display();
}
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


