class Tree { //name
  //attr
  float treex, treey, g;
  PGraphics myLayer;
  
  //constr
  Tree(PGraphics myLayer_) {
    treex = random(width);
    treey = random(-10,30);
    g = random(30,70);
    myLayer = myLayer_;
  }
  
  //methods
  void display() {
    myLayer.beginDraw();
    myLayer.fill(0,g,0);
    myLayer.noStroke();
    myLayer.triangle(treex-30,height+treey,treex+30,height+treey,treex,height-40+treey);
    myLayer.triangle(treex-28,height-20+treey,treex+28,height-20+treey,treex,height-60+treey);
    myLayer.triangle(treex-25,height-40+treey,treex+25,height-40+treey,treex,height-80+treey);
    myLayer.endDraw();
  }
}
