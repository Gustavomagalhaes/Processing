class HorizonLine { //name
  //attr
  int x1,y1,x2,y2;
  float alpha;
  
  //constr
  HorizonLine(int x1_, int y1_, int x2_, int y2_, float alpha_) {
    x1 = x1_;
    y1 = y1_;
    x2 = x2_;
    y2 = y2_;
    alpha = alpha_;
  }
  
  //methods
  void display() {
    noFill();
    stroke(0,0,150,alpha);
    line(x1,y1,x2,y2);
  }
}
