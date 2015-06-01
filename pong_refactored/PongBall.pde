class PongBall {
  float ballx;
  float bally;
  float speedx;
  float speedy;
  float basicSpeed;
  float ballWidth;

  PongBall() {
    ballx = width/2;
    bally = height/2;
    basicSpeed = 2;
    ballWidth = 10;
    int randx = (int) round(random(1));
    int randy = (int) round(random(1));
    if (randx == 0) {
      speedx = -basicSpeed;
    } 
    else {
      speedx = basicSpeed;
    }
    if (randy == 0) {
      speedy = -basicSpeed;
    } 
    else {
      speedy = basicSpeed;
    }
  }

  void display() {
    bounce();
    move();
    // draw the ball
    noStroke();
    fill(255);
    ellipse(ballx, bally, ballWidth, ballWidth);
  }

  void bounce() {
    // make it bounce off the left/right walls
    if (ballx < ballWidth/2 || ballx > width-ballWidth/2) {
      startCountIn();
    }

    // make it bounce off the top/bottom walls
    if (bally < ballWidth/2 || bally > height-ballWidth/2) {
      speedy *= -1;
    }
  }

  void move() {
    // increment position
    ballx += speedx;
    bally += speedy;
  }

  void checkInteration(PongPaddles p) {

    // is the ball's y-position inline with the paddles?
    if (bally > (p.lpaddley-p.paddleLength/2) && bally < (p.rpaddley+p.paddleLength/2)) {

      // is the ball's x-position inline with the left paddle?
      if (ballx > p.lpaddlex && ballx < p.lpaddlex+p.paddleWidth/2) {
        // react to the left paddle
        speedx *= -1;
      }

      // is the ball's x-position inline with the right paddle?
      if (ballx > p.rpaddlex - p.paddleWidth/2 && ballx < p.rpaddlex) {
        // react to the right paddle
        speedx *= -1;
      }
    }
  }
}

