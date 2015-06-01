class Horizon { // name
  //attr
  float skyAlpha;

  //constr
  Horizon() {
    skyAlpha = 0;
  }

  //methods
  void display() {
    for (int row = 0; row < height; row++) {
      stroke(0, 50, 0, skyAlpha);
      noFill();
      line(0, row, width, row);
      skyAlpha += 0.4;
    }
    skyAlpha = 0;
  }
}

