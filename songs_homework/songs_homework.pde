
import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioSample click;

void setup() {
  size(500,500,P3D);
  minim = new Minim(this);
  
  
  player = minim.loadFile("song.mp3");
  
  click = minim.loadSample("song.mp3");
  player.play();
  player.loop();
//  player.pause();
}

void draw() {
  background(0);
}

void keyPressed() 
{
  if ( key == 't' ) click.trigger();
}
