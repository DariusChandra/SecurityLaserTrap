int sensorValue=0;
int sensorPin=A0;
int Newstate=0;
int Oldstate=0;

void setup() {
  // put your setup code here, to run once:
pinMode(sensorPin,INPUT);
pinMode(7,OUTPUT);
pinMode(6,OUTPUT);
digitalWrite(7,HIGH);
digitalWrite(6,LOW);
delay(5000);
digitalWrite(7,LOW); 
Serial.begin(9600);  
  }

void loop() {
Oldstate=Newstate; 
  // put your main code here, to run repeatedly:
   sensorValue=analogRead(sensorPin);
  //Serial.println(sensorValue);
 
   if(sensorValue<=150){
   digitalWrite(7,HIGH); 
   Newstate=1;
   delay(200);
   }else{
   digitalWrite(7,LOW);   
   Newstate=0;
   delay(200);   
   }
   if(Newstate==1&&Newstate!=Oldstate){
   Serial.write(Newstate);
   }
   if(Newstate==0&&Newstate!=Oldstate){
   Serial.write(Newstate);
   }
}
