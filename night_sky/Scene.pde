class Scene { //name
  //attr
  Sky mySky;
  Horizon myHorizon;
  Forest myForest;
  
  //constr
  Scene() {
    mySky = new Sky(1000);
    myHorizon = new Horizon();
    myForest = new Forest(100);
  }
  
  //methods
  void display() {
    mySky.display();
    myHorizon.display();
    myForest.display();
  }
}
