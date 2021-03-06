
#include <VarSpeedServo.h>

VarSpeedServo rEye;
VarSpeedServo lEye;
VarSpeedServo huh;

void setup(){
    Serial.begin(9600);
    rEye.attach(2);
    rEye.write(105,40,false); //set init pos at slow speed, running in background
    lEye.attach(3);
    lEye.write(86,40,false); //set init pos at slow speed, running in background.
    huh.attach(4);
    huh.write(90,40,true);
    huh.write(120,15,true); //set init pos at slow speed, wait until done.
    delay(1000);
    huh.write(68,15,true);
}

void loop() {
    if (Serial.available() > 0){
        int inByte = Serial.read();

        switch(inByte){
        case 'h':
            rEye.write(105,40,false);
            lEye.write(69,40,false);
            huh.write(90,35,true);
            Serial.println("happy");
            break;
        case 'l':
            rEye.write(92,15,false);
            lEye.write(86,15,false);
            huh.write(90,10,true);
            Serial.println("sad");
            break;
        case 'o':
            rEye.write(130,25,false);
            lEye.write(53,25,true);
            Serial.println("whoa");
            break;
        default:
            rEye.write(105,45,false); 
            lEye.write(69,45,false);
            huh.write(54,25,true); 
            Serial.println("confused");
        }

    }
}
