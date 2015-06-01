class Sky { //name
  //attr
  protected int numOfStars;
  Star[] myStars;

  //constr
  Sky(int numOfStars_) {
    numOfStars = numOfStars_;
    myStars = new Star[numOfStars];

    for (int i = 0; i < myStars.length; i++) {
      myStars[i] = new Star();
    }
  }

  //methods

  void display() {
    for (int i = 0; i < myStars.length; i++) {
      myStars[i].display();
    }
  }
}

