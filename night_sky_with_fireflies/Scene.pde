class Scene { //name
  //attr
  Sky mySky;
  Horizon myHorizon;
  Forest myForest;
  
  //constr
  Scene() {
    mySky = new Sky();
    myHorizon = new Horizon();
    myForest = new Forest(50);
  }
  
  //methods
  void display() {
    mySky.display();
    myHorizon.display();
    myForest.display();
  }
}
