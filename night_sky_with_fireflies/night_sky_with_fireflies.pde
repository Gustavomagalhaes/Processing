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
