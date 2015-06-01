StarManager myManager;

void setup() {
  size(500, 500);
  myManager = new StarManager(1000);
}

void draw() {
  background(0);
  myManager.displayStars();
}
