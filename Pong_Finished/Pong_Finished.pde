/*
  Digital Table Tennis
*/

float ballx;
float bally;
float speedx;
float speedy;

void setup() {
  size(400,300);
  ballx = width/2;
  bally = height/2;
  speedx = 2;
  speedy = 2;
}

void draw() {
  // clear the background each frame
  background(0);
  
  // draw the centerline
  stroke(155);
  line(width/2,0,width/2,height);
  
  // draw the ball
  noStroke();
  fill(255);
  ellipse(ballx,bally,10,10);
  
  // draw the paddles
  noStroke();
  fill(200);
  rectMode(CENTER);
  rect(15,mouseY,4,30);
  rect(width-15,mouseY,4,30);
  
  // make it bounce off the left/right walls
  if(ballx < 5 || ballx > width-5) {
    speedx *= -1;
    background(255,0,0);
  }
  
  // make it bounce off the top/bottom walls
  if(bally < 5 || bally > height-5) {
    speedy *= -1;
  }
  
  // is the ball's y-position inline with the paddles?
  if(bally > (mouseY-15) && bally < (mouseY+15)){
    
    // is the ball's x-position inline with the left paddle?
    if(ballx > 15 && ballx < 19){
      // react to the left paddle
      speedx *= -1;
      background(0,100,0);
    }
    
    // is the ball's x-position inline with the right paddle?
    if(ballx > width-19 && ballx < width-15){
      // react to the right paddle
      speedx *= -1;
      background(0,100,0);
    }
  }
  
  // increment position
  ballx += speedx;
  bally += speedy;
}
