import processing.sound.*;
SoundFile file1;
SoundFile file2;
void setup() {
  size(640, 360);
  background(255);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  file1 = new SoundFile(this, "Ak47 9mm Gunshot.mp3");
  file2 = new SoundFile(this, "Burglar-alarm-sound.mp3");
  file1.play();
  file2.play();
}      

void draw() {
}