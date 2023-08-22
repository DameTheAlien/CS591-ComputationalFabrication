void plotCircle(float r) {
  float c = 2*PI*r;
  float size = c/360;
  for(int i = 0; i < 360; i++) {
     t.forward(size);
     t.right(1);
  }
}

void centeredCircle() {
  fill(0, 0, 0);
  float r = 200;
  t.setX(width/2-r);
  t.setY(height/2);
  plotCircle(r);
}
