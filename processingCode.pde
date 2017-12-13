
// Processing code for this example

// mouseover serial

// Demonstrates how to send data to the Arduino I/O board, in order to
// turn ON a light if the mouse is over a square and turn it off
// if the mouse is not.

// created 2003-4
// based on examples by Casey Reas and Hernando Barragan
// modified 30 Aug 2011
// by Tom Igoe
// This example code is in the public domain.



import processing.serial.*;

Serial port;

void setup() {
  size(200, 200);
 

  // List all the available serial ports in the output pane.
  // You will need to choose the port that the Arduino board is
  // connected to from this list. The first port in the list is
  // port #0 and the third port in the list is port #2.
  // if using Processing 2.1 or later, use Serial.printArray()
  printArray(Serial.list());

  // Open the port that the Arduino board is connected to (in this case #0)
  // Make sure to open the port at the same speed Arduino is using (9600bps)
  port = new Serial(this, Serial.list()[3], 9600);
}

void draw()
{
  background(0);
  if (keyPressed) {
    if (key == '1') {
      println("getal 1");
      port.write(1);
    }
    if (key == '2') {
      println("getal 2");
      port.write(2);
    }
    if (key == '3') {
      println("getal 3");
      port.write(3);
    }
    if (key == '4') {
      println("getal 4");
      port.write(4);
    }
    if (key == '5') {
      println("getal 5");
      port.write(5);
    }
    if (key == '6') {
      println("getal 6");
      port.write(6);
    }
    if (key == '7') {
      println("getal 7");
      port.write(7);
    }
    if (key == '8') {
      println("getal 8");
      port.write(8);
    }
  }
  
  //port.write('H');
}

void keyReleased(){
  port.write(9);
}