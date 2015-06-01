void setup() {
  size(500,500);
  background(0);
  noStroke();
  fill(255);
 
}
void draw() {
//  ellipse(width/2, height/2, 50, 50);
//  float mouseDist = dist(width/2,height/2,mouseX,mouseY);
//  println(mouseDist); 

  rectMode(CENTER);
  rect(width/2,height/2,50,50);
  
  if(mouseX > (width/2)-25 && mouseX < (width/2)+25 
  && mouseY < (height/2)+25  && mouseY > (height/2)-25 ) {
    println("DENTO");
  } else {
    println("FORA");
  }
}
