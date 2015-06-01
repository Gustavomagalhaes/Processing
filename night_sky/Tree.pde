class Tree { //name
  //attr
  float treex, treey, g;
  
  //constr
  Tree() {
    treex = random(width);
    treey = random(-10,30);
    g = random(30,70);
  }
  
  //methods
  void display() {
    fill(0,g,0);
    noStroke();
    triangle(treex-30,height+treey,treex+30,height+treey,treex,height-40+treey);
    triangle(treex-28,height-20+treey,treex+28,height-20+treey,treex,height-60+treey);
    triangle(treex-25,height-40+treey,treex+25,height-40+treey,treex,height-80+treey);
  }
}
