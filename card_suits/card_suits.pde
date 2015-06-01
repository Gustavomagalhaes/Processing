Shape[] shapes;

void setup() {
  size(500, 500, OPENGL);
  imageMode(CENTER);
  hint(DISABLE_DEPTH_TEST);
  shapes = new Shape[100];
  for(int i = 0; i < shapes.length; i++) {
    shapes[i] = new Shape();
  }
}

void draw() {
  background(113,98,53);
  for(int i = 0; i < shapes.length; i++) {
    shapes[i].display();
  }
}

