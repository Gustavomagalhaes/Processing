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

