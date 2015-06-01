Scene nightScene;
Swarm mySwarm;

void setup() {
  size(500,500);
  nightScene = new Scene();
  mySwarm = new Swarm();
}

void draw() {
  background(0);
  nightScene.display();
  mySwarm.display();
}
class Firefly {
  float x, y, a, xTime, yTime;

  Firefly() {
    x = random(width);
    y = random(height);
    a = 70;
    xTime = random(100);
    yTime = random(100);
  }

  void display() {
    move();
    noStroke();
    fill(150, 255, 40, a);
    ellipse(x, y, 10, 10);
    fill(150, 255, 40);
    ellipse(x, y, 2, 2);
  }
  
  void move() {
    x = map(noise(xTime),0,1,-150,width+150);
    y = map(noise(yTime),0,1,height-150,height+50);
    xTime += 0.001;
    yTime += 0.001;
  }
}

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
class Sky { //name
  //attr
  int numOfStars;
  Star[] stars;
  
  //constr
  Sky() {
    numOfStars = 1000;
    stars = new Star[numOfStars];
    for(int i = 0; i < numOfStars; i++) {
      stars[i] = new Star();
    }
  }
  
  //methods
  void display() {
    for(int i = 0; i < numOfStars; i++) {
      stars[i].twinkle();
      stars[i].display();
    }
  }
}
class Star { //name
  //attr
  float x,y,w,a;
  float aspeed;
  
  //constr
  Star() {
    x = random(width);
    y = random(height);
    w = random(1,2);
    a = random(0,255);
    aspeed = random(-4,4);
  }
  
  void display() {
    fill(a);
    noStroke();
    ellipse(x,y,w,w);
  }
  
  void twinkle() {
    a += aspeed;
    if(a > 255 || a < 0) {
      aspeed *= -1;
    }
  }
}
class Swarm {
  Firefly[] fireflies;

  Swarm() {
    fireflies = new Firefly[25];
    for (int i = 0; i < fireflies.length; i++) {
      fireflies[i] = new Firefly();
    }
  }

  void display() {
    for (int i = 0; i < fireflies.length; i++) {
      fireflies[i].display();
    }
  }
}

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

