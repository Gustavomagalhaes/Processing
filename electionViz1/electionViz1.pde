Axes myAxes;
TableManager tm;

void setup() {
  size(500,300);
  myAxes = new Axes();
  tm = new TableManager();
}

void draw() {
  background(255);
  myAxes.display();
  tm.display();
}

void keyPressed() {
  tm.currentWord = (tm.currentWord+1) % tm.rowCount;
}
