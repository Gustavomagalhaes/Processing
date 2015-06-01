Person MyPerson;

void setup() {
  size(500,500);
  background(0);
  MyPerson = new Person(22,6,200);
}


void draw() {
//  randomRGBFillColor(1,200);
//  rect(mouseX,mouseY,80,80);
//  float product = multiply(2.0,5.0);
//  println(product);
//  drawCircle(50.0,255.0,255.0,255.0);
  MyPerson.sayAge();
  
}

void randomRGBFillColor(float min, float max) {
  fill(random(min,max),random(min,max),random(min,max)); 
}

float multiply(float arg1, float arg2) {
  return arg1*arg2;  
}

void drawCircle(float dia, float r, float g, float b) {
  noStroke();
  fill(r,g,b);
  ellipse(mouseX,mouseY,dia,dia);
}
