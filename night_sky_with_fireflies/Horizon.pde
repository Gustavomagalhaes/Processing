class Horizon { //name
  //attr
  float baseAlpha;
  HorizonLine[] horizonLines;
  
  //constr
  Horizon() {
    baseAlpha = 0;
    horizonLines = new HorizonLine[height];
    for(int row = 0; row < height; row++) {
      horizonLines[row] = new HorizonLine(0,row,width,row,baseAlpha);
      baseAlpha += 0.2;
    }
  }
  
  //methods
  void display() {
    for(int i = 0; i < horizonLines.length; i++) {
      horizonLines[i].display();
    }
  }
}
