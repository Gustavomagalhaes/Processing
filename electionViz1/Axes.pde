class Axes {
  int inset = 50;
  float w, spacing;
  float max, min;

  Axes() {
    w = width - 2 * inset;
    spacing = w / 64;
  }

  void display() {
    stroke(0);
    line(inset, inset, inset, height-inset);
    line(inset, height-inset, width-inset, height-inset);
    for (int i = 1; i < 65; i++) {
      line(i * spacing + inset, height-inset-3, i * spacing + inset, height-inset+3);
    }
    displayMaxMin();
  }
  
  void displayMaxMin() {
    textAlign(RIGHT);
    textSize(10);
    fill(0);
    text("Max", inset-2, inset+2);
    text("Min", inset-2, height-inset+2);
  }
}

