float[] polarPoints(float r, float angle) {
  float[] points = new float[2];
  points[0] = r*cos(radians(angle));
  points[1] = r*sin(radians(angle));
  return points;
}

void plotPolar(float mult) {
  float r;
  beginShape();
  for(int i = 0; i < 360; i++) {
    r = 100 + mult*cos(radians(i*10));
    float[] points = polarPoints(r, i);
    curveVertex(points[0], points[1]);
  }
  endShape();
}
