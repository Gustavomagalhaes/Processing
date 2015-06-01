PImage banana = loadImage("banana.jpg");
String sentence = "bananas";
int cols, rows;
PFont font = createFont("Helvetica-bold", 12);

cols = banana.width;
rows = banana.height;

size(500,500);  
background(0);

loadPixels();
int charcount = 0;

for (int j = 0; j < rows; j+=9) {
  for (int i = 0; i < cols; i+=9) {
    
    color c = banana.pixels[i+j*banana.width];

    textFont(font);
    fill(c);
    text(sentence.charAt(charcount),i,j);
    charcount = (charcount + 1) % sentence.length();
  }  
}




