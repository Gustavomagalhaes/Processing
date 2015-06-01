class Forest { //name
  //attr
  Tree[] trees;
  PGraphics forestLayer;
  boolean drawn;
  
  //constr
  Forest(int numOfTrees) {
    trees = new Tree[numOfTrees];
    forestLayer = createGraphics(width,height);
    drawn = false;
    for(int i = 0; i < trees.length; i++) {
      trees[i] = new Tree(forestLayer);
    }
  }
  
  //methods
  void display() {
    if(!drawn){
      // draws the trees to my forest buffer
      for(int i = 0; i < trees.length; i++) {
        trees[i].display();
      }
      drawn = true;
      println("drew the trees.");
    }
    // draw the forest buffer
    image(forestLayer,0,0);
  }
}
