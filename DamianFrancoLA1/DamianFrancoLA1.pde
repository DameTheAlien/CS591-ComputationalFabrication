/*****************************************
 * Large Assignment 1: L-System Lace
 * Name:    Damian Franco
 * E-mail:  dfranco24@unm.edu
 * Course:      CS491/591, Computational Fabrication
 * Submitted:    2/14/2022
 *
 * This program includes several different features.
 * To draw the selected design, click the screen with your mouse.
 * To select the fractal design, press the 1 key.
 * To select the bontanical, press the 2 key.
 * To select the L-System using shapes design, press the 3 key.
 * To select my Rogan Brown inspired design, press the 4 key.
 * To clear the screen, press the space bar.
 ***********************************************/
import processing.pdf.*;
import Turtle.*;

Turtle t;
LSystem l;
int choice;

void setup() {
  size(800, 800);
  background(#FFFFFF);
  choice = 0;
}

void keyPressed() {
  println("Pressed " + key);
  switch(key) {
    case '1':
      choice = 1;
      break;
    case '2':
      choice = 2;
      break;
    case '3':
      choice = 3;
      break;
    case '4':
      choice = 4;
      break;
    case ' ':
      clear();
      setup();
      break;
  }
}

void mouseClicked() {
  switch(choice) {
    case 1:
      //beginRecord(PDF, "fractal.pdf");
      fractal();
      //endRecord();
      break;
    case 2:
      //beginRecord(PDF, "bontanical.pdf");
      botanical();
      //endRecord();
      break;
    case 3:
      //beginRecord(PDF, "shapes.pdf");
      shapes();
      //endRecord();
      break;
    case 4:
      //beginRecord(PDF, "roganBrown.pdf");
      roganBrown();
      //endRecord();
      break;
  }
}

void draw() { 
}
