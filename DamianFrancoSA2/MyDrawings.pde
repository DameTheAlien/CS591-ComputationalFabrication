void plotPolygon(float size, float angle) {
   t.forward(size);
   t.right(angle);
}

void myDesign1(float s, float a) {
   frameRate(60);
   t.setX(width/2);
   t.setY(height/2);
   size = s;
   angle = a;
   drawFlag = 2;
}

void myDesign2(float s, float a) {
  frameRate(20);
  t.setX(width/2);
  t.setY(height/2);
  size = s;
  angle = a;
  drawFlag = 3;
}

void myDesign3(float s, float a) {
   frameRate(60);
   t.setX(width/2-55);
   t.setY(height/2+20);
   size = s;
   angle = a;
   drawFlag = 4;
}
