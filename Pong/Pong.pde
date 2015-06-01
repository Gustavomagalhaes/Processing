float ballx;
float bally;
float speedx;
float speedy;

void setup() {
  size(1000,600);
  smooth();
  ballx = width/2;
  bally = height/2;
  speedx = 3;
  speedy = 3; 
}

void draw() {
  background(0);
  
  // Centerline
  stroke(255);
  strokeWeight(2);
  line(width/2,0,width/2,height);
  
  //the ball
  noStroke();
  fill(255);
  ellipse(ballx,bally,10,10);
  
  // the paddles
  noStroke();
  fill(255);
  rectMode(CENTER);
  rect(15,mouseY,4,30);
  rect(width-15,mouseY,4,30);
  
  // change directions
  if (ballx < 5 || ballx > width-5) {
    speedx *= -1;
//    background(255,0,0); //show point
  }
  if (bally < 5 || bally > height-5) {
    speedy *= -1;
//    background(0,255,0);
  }
  
  // collision with paddle
  if (bally > mouseY-15 && bally < mouseY+15) {
    // interactiong on y axis
    if (ballx > 15 && ballx < 19) {
      // react to left paddle
      speedx *= -1.1;
      background(255,0,0);
    }
    if (ballx > width-19 && ballx < width-15) {
      // react to right paddle
      speedx *= -1.1;
      background(0,255,0);
    }
  }
  
  ballx += speedx;
  bally += speedy;
  
}
