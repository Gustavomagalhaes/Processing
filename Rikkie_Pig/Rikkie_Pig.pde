void setup()
{
  size(600,400);
  smooth();
  println("Rikkie the Pig");
  //Change the X's and Y's equally
}

void draw()
{
  background(255);
  //Rikkie's Body
  fill(255,170,170); //Pink color
  strokeWeight(2);
  ellipseMode(CENTER);
  ellipse(mouseX+70,mouseY+70,70,70);
  
  //Rikkie's Ears
  ellipseMode(CENTER);
  ellipse(mouseX+50,mouseY+25,20,20); //Right Ear
  ellipse(mouseX+90,mouseY+25,20,20); //Left Ear
  
  //Rikkie's Head
  ellipseMode(CENTER);
  ellipse(mouseX+70,mouseY+50,50,50);
  
  //Rikkie's Nose
  ellipseMode(CENTER); 
  ellipse(mouseX+70,mouseY+63,19,15);
  
  //Rikkie's Eyes
  fill(255);
  ellipseMode(CENTER);
  ellipse(mouseX+60,mouseY+45,15,15);
  ellipse(mouseX+80,mouseY+45,15,15);
  
  //Rikkie's Points
  fill(0);
  strokeWeight(5);
  point(mouseX+62,mouseY+45); //Right Eye
  point(mouseX+78,mouseY+45); //Left Eye
  strokeWeight(4);
  point(mouseX+66,mouseY+63); //Right Nose Hole
  point(mouseX+74,mouseY+63); //Left Nose Hole
}
