import processing.sound.*;
import processing.serial.*;
Serial myPort;
int data;
int Newstate=0;
int Oldstate=0;
SoundFile file1;
SoundFile file2;

void setup(){
 size(500,500);
 textFont(createFont("Arial",70));
 textAlign(CENTER);
 myPort=new Serial(this,Serial.list()[0],9600);
  file1 = new SoundFile(this, "Ak47 9mm Gunshot.mp3");
  file2 = new SoundFile(this, "Burglar-alarm-sound.mp3");
}

void draw(){
  Oldstate=Newstate; 
 if(myPort.available()>0){
  background(200);
  data=myPort.read();
  text(data,width/2,height/2);
  Newstate=data;
  }
  if(Newstate!=Oldstate&&Newstate==1){
  file1.play();
  file2.play();

}
  if(Newstate!=Oldstate&&Newstate==0){
  delay(4000);
  file1.stop();
  file2.stop();
  }
  
}