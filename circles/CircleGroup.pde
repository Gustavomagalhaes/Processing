class CircleGroup { // name
  //attr
  Circle[] myCircles;
  int numOfCircles;
  
  //constr
  CircleGroup(int numOfCircles_) {
    numOfCircles = numOfCircles_;
    myCircles = new Circle[numOfCircles];
    for (int i = 0; i < myCircles.length; i++) {
      myCircles[i] = new Circle(random(width),random(height));
    }
  }
  
  //methods
  void display() {
    for (int i = 0; i < myCircles.length; i++) {
      myCircles[i].detect();
      myCircles[i].display();
    }
  }
  
  void addCircle() {
    Circle newCircle = new Circle(mouseX,mouseY);
    myCircles = (Circle[]) append(myCircles, newCircle);
  }
}
