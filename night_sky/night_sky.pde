// global variables go here
Scene myScene;

void setup() {
  size(500,500);
  myScene = new Scene();
}

void draw() {
  background(0);
  myScene.display();
}
