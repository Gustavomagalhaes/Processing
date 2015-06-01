float time = 0.0; 

void setup() {
  size(500,500); 
}

void draw() {
  background(255);
  float noisevalue = noise(time)*width*1.5;
  strokeWeight(5);
  fill(random(255),random(255),random(255));
  ellipse(width/2,height/2,noisevalue,noisevalue);
  time+=0.1;
}
