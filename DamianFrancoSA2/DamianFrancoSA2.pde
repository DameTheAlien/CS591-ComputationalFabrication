/*****************************************
 * Small Assignment 2: Processing and Turtle Geometry
 * Name:    Damian Franco
 * E-mail:  dfranco24@unm.edu
 * Course:       CS491/591, Computational Fabrication
 * Submitted:    1/31/2022
 *
 * This program includes several different features.
 * To clear the screen, press the space bar.
 * To plot a polar plot, press the 1 key.
 * To draw a circle with a turtle, press the 2 key.
 * To draw a flower, press the 3 key.
 * To draw my first custom turtle path, press the 4 key.
 * To draw my second custom turtle path, press the 5 key.
 * To draw my third custom turtle path, press the 6 key.
 ***********************************************/
import Turtle.*;

Turtle t;
int number, drawFlag;
float size, angle;
float polarIter;

void setup() {
  size(800, 800);
  background(#4DD7FF);
  t = new Turtle(this);
  drawFlag = 0;
}

void draw() {
  noFill();
  if (drawFlag == 1) {
    //Draw polar plot
    translate(width/2, height/2);
    plotPolar(polarIter);
    polarIter += 10;
  } else if (drawFlag == 2) {
    //Draw my first turtle design
    t.setX(random(20, 780));
    t.setY(random(20, 780));
    plotPolygon(size, angle);
    if(t.getX() >= 400) {
      angle += 45;
    } 
    else {
      size += 0.1;
    }
  } else if (drawFlag == 3) {
    //Draw my second turtle design
    plotPolygon(size, angle);
    size += 5;
    angle += 0.01;
  } else if (drawFlag == 4) {
    //Draw my third turtle design
    plotPolygon(size, angle);
    size += 1;
    angle += 0.001;
  }
}

void keyPressed() {
  if (key == 's') {
    //Save picture
    String filename = "SA2" + number + ".jpg";
    save(filename);
    number++;
  } else if (key == '1') {
    //Polar plot
    frameRate(10);
    polarIter = 1;
    drawFlag = 1;
    draw();
  } else if (key == '2') {
    //Centered circle
    centeredCircle();
  } else if (key == '3') {
    //Flower
    plotFlower(12, 18);
  } else if (key == '4') {
    //My first turtle design
    myDesign1(50, 90);
    draw();
  } else if (key == '5') {
    //My second turtle design
    myDesign2(1, 178);
    draw();
  } else if (key == '6') {
    //My third turtle design
    myDesign3(60, 60);
    draw();
  } else if (key == ' ') {
    //Clear screen
    clear();
    setup();
  }
}
