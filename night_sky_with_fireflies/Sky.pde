class Sky { //name
  //attr
  int numOfStars;
  Star[] stars;
  
  //constr
  Sky() {
    numOfStars = 1000;
    stars = new Star[numOfStars];
    for(int i = 0; i < numOfStars; i++) {
      stars[i] = new Star();
    }
  }
  
  //methods
  void display() {
    for(int i = 0; i < numOfStars; i++) {
      stars[i].twinkle();
      stars[i].display();
    }
  }
}
