class Shape {
  PImage image;
  float x, y;
  float speed;
  float angleX;
  float angleY;
  float angleZ;
  float imgScale;
  float rotateSpeed;

  Shape() {
    int rand = round(random(0, 3));
    if (rand == 0) {
      image = loadImage("spades.png");
    } 
    else if (rand == 1) {
      image = loadImage("hearts.png");
    } 
    else if (rand == 2) {
      image = loadImage("clubs.png");
    } 
    else {
      image = loadImage("diamonds.png");
    }
    x = random(width);
    y = random(height);
    speed = random(2,5);
    imgScale = random(.6,1);
    angleX = random(0,TWO_PI);
    angleY = random(0,TWO_PI);
    angleZ = random(0,TWO_PI);
    rotateSpeed = 0.1;
  }

  void display() {
    // save the current matrix
    pushMatrix();
    
    // translate, rotate, and scale
    translate(x, y);
    rotateX(angleX);
    rotateY(angleY);
    rotateZ(angleZ);
    scale(imgScale);
    
    // draw the image
    image(image, 0, 0);
    
    // reset the image position if it is off-screen
    if (y > height+25) { y = -25; }
    
    // restore the last matrix
    popMatrix();
    
    // increment the movement and rotation angles
    angleX += rotateSpeed;
    angleY += rotateSpeed;
    angleZ += rotateSpeed;
    y += speed;
  }
}

