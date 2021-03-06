/* switch statement with serial input
 Open serial monitor and send i,k,j,l to move the robot.
 Can't use Servo.h and VarSpeedServo.h at the same time.
 */
#include <VarSpeedServo.h>

VarSpeedServo rEye;
VarSpeedServo lEye;
VarSpeedServo huh;
VarSpeedServo drive;
VarSpeedServo turn;
VarSpeedServo rarm;
VarSpeedServo larm;

int pos = 0;    // variable to store the servo position 
int ultrasonicsensorPin = A0;
int sensorValue = 0;

void setup(){
  Serial.begin(9600); //setup serial comms
  drive.attach(5);  // Fwd/back motion controlled by pin 5 to S1 
  turn.attach(6);  // turning motion controlled by pin 6 to S2 
  drive.write(90,255,false); //initialize drive
  turn.write(90,255,false); //init turn
  rarm.attach(7);
  larm.attach(8);
  rarm.write(130,40,false);
  larm.write(80, 40, false);
  rEye.attach(2);
  rEye.write(105);//,40,false); //set init pos at slow speed, running in background
  lEye.attach(3);
  lEye.write(86);//,40,false); //set init pos at slow speed, running in background.
  huh.attach(4);
  huh.write(90,40,true);
  huh.write(120,15,true); //set init pos at slow speed, wait until done.
  delay(1000);
  huh.write(68,15,true);
}

void loop(){
  sensorValue = analogRead(ultrasonicsensorPin);
  //Serial.println(sensorValue);
  if (Serial.available() > 0 && sensorValue > 70){
    int inByte = Serial.read();
    //state machine that responds to char recieved
    //single quotes tell controller to get ASCII value
    //eg. 'a'=97
    switch(inByte){
    case 'h':
      Serial.println("happy");
      rEye.write(105);//,40,false);
      lEye.write(69);//,40,false);
      huh.write(90,35,true);
      break;
    case 'm':
      Serial.println("sad");
      rEye.write(92,15,false);
      lEye.write(86,15,false);
      huh.write(90,10,true);
      break;
    case 'n':
      Serial.println("whoa");
      rEye.write(130,25,false);
      lEye.write(53,25,true);
      break;
    case 'i':
      Serial.println("forwards");
      drive.write(58);
      turn.write(90);
      break;
    case 'j':
      Serial.println("left");
      turn.write(70);
      break;
    case 'l':
      Serial.println("right");
      turn.write(115);
      break;
    case 'k':
      Serial.print("stop");
      turn.write(90);
      drive.write(90);
      break;
    case 'e':
      Serial.print("r wave");
      rarm.write(15,100,true);//R arm out
      rarm.write(120,100,true);//R arm in
      rarm.write(15,100,true); //R arm out
      rarm.write(120,100,true);//R arm in
      break;
    case 'q':
      Serial.print("l wave");
      larm.write(165, 100, true);//L arm out
      larm.write(68, 100, true);//in
      larm.write(165,100, true);//out
      larm.write(68, 100, true);//in
      break;
    case 'w':
      Serial.print("both wave");
      larm.write(165, 80, false);//l arm out
      rarm.write(15,80,true); //r arm out
      larm.write(68, 80, false);//L arm in
      rarm.write(120,80,true);//R arm in
      larm.write(165,80, false);//l arm out
      rarm.write(15,80,true); //r arm out
      larm.write(68, 80, false);//L arm in
      rarm.write(120,80,true);//R arm in
      break;
    case 'a':
      Serial.print("parallel wave");
      larm.write(165, 80, false);//l arm out
      rarm.write(120,80,true);//R arm in
      larm.write(68, 80, false);//L arm in
      rarm.write(15,80,true); //r arm out
      larm.write(165, 80, false);//l arm out
      rarm.write(120,80,true);//R arm in
      larm.write(68, 80, false);//L arm in
      rarm.write(15,80,true); //r arm out
      rarm.write(120,80,true);//R arm in
      break;
    default:
      Serial.println("waiting");
      turn.write(90);
      drive.write(90);
      rEye.write(105,45,false); 
      lEye.write(69,45,false);
      huh.write(54,25,true); 
      
    }
  }
  else
  {
  turn.write(90);
  drive.write(90);
  }

}

