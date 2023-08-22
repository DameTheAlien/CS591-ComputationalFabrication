void plotFlower(float petals, float angle) { //<>//
  fill(0,0,0);
  for(int i = 0; i < petals; i++) {
    plotLines(angle);
  }
  ellipse(width/2, height/2, 50, 50);
}

void plotLines(float angle) {
  float r = 190;
  t.forward(r);
  t.right(angle);
  for(int i = 0; i < 180; i++) {
    t.forward(1);
    t.right(1);
  }
  t.right(angle);
  t.forward(r);
  t.right(180);
}
