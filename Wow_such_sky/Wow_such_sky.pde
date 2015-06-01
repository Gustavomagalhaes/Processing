void setup(){
  size(600,800);
  
  for (int i = 0; i < height; i++) {
    stroke(0,0,0+i/7);
    line(0,i,width,i);
  }
  
  for (int i = 0; i < height; i++) {
    int x = (int) random(width);
    int y = (int) random(height);
    
    float dim = random(10);
    
    if (dim >= 9.5) {
      dim = 5;
    } 
    else if (dim >= 8) {
      dim = 3;
    } else {
      dim = 1;
    }  
      
    ellipse(x,y,dim,dim);
  } 
}
