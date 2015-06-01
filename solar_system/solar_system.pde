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
