PongTable table;
PongBall ball;
PongPaddles paddles;
boolean paused;
int savedTime;
int totalTime = 3000;
boolean countingIn;

void setup() {
  size(400, 300);
  rectMode(CENTER);
  table = new PongTable();
  ball = new PongBall();
  paddles = new PongPaddles();
  paused = false;
  savedTime = millis();
  countingIn = false;
}

void draw() {
  if (!paused) {
    background(0);
    table.display();
    ball.display();
    paddles.display();
    ball.checkInteration(paddles);
  }
  if (countingIn) {
    checkTimer();
  }
}

void keyPressed() {
  pause();
}

void pause() {
  paused = !paused;
}

void restart() {
  table = new PongTable();
  ball = new PongBall();
  paddles = new PongPaddles();
}

void startCountIn() {
  restart();
  paused = true;
  countingIn = true;
}

void checkTimer() {
  int passedTime = millis() - savedTime;
  if (passedTime > totalTime) {
    paused = false;
    countingIn = false;
    savedTime = millis();
  }
}
