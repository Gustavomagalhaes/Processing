DataManager db;

void setup () {
  size(500,500);  
  textAlign(CENTER);
  db = new DataManager();
}

void draw () {
  background(0);
  db.display();
}
