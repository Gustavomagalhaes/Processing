class StarManager { // 1.name
  //2.attributes
  Star[] stars;
  int numOfStars;
  
  //3.constructor
  StarManager(int _numOfStars) {
    numOfStars = _numOfStars;
    stars = new Star[numOfStars];
    for(int i = 0; i < stars.length; i++) {
      stars[i] = new Star();
    }
  }
  
  //4.method
  
  void displayStars() {
    for(int i = 0; i < stars.length; i++) {
      stars[i].display();
      stars[i].move();
    }
  }
}
