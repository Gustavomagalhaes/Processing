class Forest { //name
  //attr
  Tree[] trees;
  
  //constr
  Forest(int numOfTrees) {
    trees = new Tree[numOfTrees];
    for(int i = 0; i < trees.length; i++) {
      trees[i] = new Tree();
    }
  }
  
  //methods
  void display() {
    for(int i = 0; i < trees.length; i++) {
      trees[i].display();
    }
  }
}
