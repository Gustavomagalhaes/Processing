int rectWidth = 40;
color darkBlue = color(18,36,48);
color lightBlue = color(39,62,69);
color blue = color(0,0,255);
color tan = color(235,210,181);


PImage background;

void setup() {
 size(displayWidth,displayHeight); 
  
  
}

void draw() {
 noStroke();
 
 background = loadImage("background.png");
 
 for(int col=0; col < width/rectWidth; col++) {
   for(int row=0; row < height/rectWidth; row++) {
//     fill(random(255));

     color randomColor;
     float randomSeed = random(1);
     
     if (randomSeed >= 0.75) {
       randomColor = darkBlue;
     } else if (randomSeed >= 0.5) {
       randomColor = lightBlue;
     } else if (randomSeed >= 0.25) {
       randomColor = tan;
     } else {
       randomColor = blue;  
     }
     
    
     fill(randomColor);
     
     
//     fill(darkBlue);
     rect(col*rectWidth,row*rectWidth,rectWidth,rectWidth); 
   } 
 }
}

void keyPressed() {
  saveFrame("/Users/gustavopereira/desktop/frame-####.png"); 
  
  image(background,mouseX,mouseY);
    
}
  
