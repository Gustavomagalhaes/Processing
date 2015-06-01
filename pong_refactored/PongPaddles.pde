class PongPaddles {
  float lpaddlex, lpaddley;
  float rpaddlex, rpaddley;
  float paddleWidth;
  float paddleLength;
  float paddleOffset;

  PongPaddles() {
    paddleOffset = 15;
    lpaddlex = paddleOffset;
    rpaddlex = width-paddleOffset;
    lpaddley = rpaddley = mouseY;
    paddleWidth = 4;
    paddleLength = 60;
  }

  void display() {
    lpaddley = rpaddley = mouseY;
    // draw the paddles
    noStroke();
    fill(200);
    rect(lpaddlex, lpaddley, paddleWidth, paddleLength);
    rect(rpaddlex, rpaddley, paddleWidth, paddleLength);
  }
}

