
float s;
float m;
float h;
float StartSecondsAsRadiansOffset;
float MillisAsRadians;

void setup(){
  size(500,500);
  smooth();  
  StartSecondsAsRadiansOffset = map(second(),0,60,0,TWO_PI) - HALF_PI;
}

void draw(){
  background(#330000);
  MillisAsRadians = map (millis(), 0, (1000 * 60), 0, TWO_PI) + StartSecondsAsRadiansOffset;
  //s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI; //subtract HALF_PI to make them start at the top. radians start to the right TWO_PI-Half_pi
  m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;

  /*s = second(); //subtract HALF_PI to make them start at the top. radians start to the right TWO_PI-Half_pi
  m = minute(); 
  h = hour();*/
  
  //arc(x, y, width, height, start, stop)

  strokeWeight(40);
  stroke(255);
  noFill();
  //fill(255);
  
  //hour
  pushMatrix(); 
  translate(width/2, height/2);
  rotate(h);
  stroke(#ff9933);
  arc(0, 0, 200, 200, 0, TWO_PI-HALF_PI/2.25);
  popMatrix();
  
  //min
  pushMatrix(); 
  translate(width/2, height/2);
  rotate(m);
  stroke(#ff3300);
  arc(0, 0, 300, 300, 0, TWO_PI-HALF_PI/3.25);
  popMatrix();
  
  //sec
  pushMatrix(); 
  translate(width/2, height/2);
  rotate(MillisAsRadians);
  stroke(#990000);
  arc(0,0, 400, 400, 0, TWO_PI-HALF_PI/4.25);
  popMatrix();

  /*
  noStroke();
   smooth();
   int radius = 38;
   for (int deg = 0; deg < 340; deg += 12) {
   float angle = radians(deg);
   float x = 50 + (cos(angle) * radius);
   float y = 50 + (sin(angle) * radius);
   ellipse(x, y, 6, 6);
   }*/

}

