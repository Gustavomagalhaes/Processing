class Word {
  String myWord;
  int x, y, size, r, g, b, a;
  PFont myFont;
  
  Word(String myWord_, int x_, int y_, int size_, int r_, int g_, int b_, int a_) {
    myWord = myWord_;
    x = x_;
    y = y_;
    size = size_;
    r = r_;
    g = g_;
    b = b_;
    a = a_;
  }
  
  void display () {
    myFont = createFont("Helvetica-bold", size);
    fill(r,g,b,a);
    textFont(myFont);
    text(myWord, x, y);
  }
}
