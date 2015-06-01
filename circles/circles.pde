CircleGroup myCircles;

void setup() {
  size(500,500);
  smooth();
  myCircles = new CircleGroup(5);
  
}

void draw() {
  background(0);
  myCircles.display();
}

void mousePressed(){
  myCircles.addCircle();
}
