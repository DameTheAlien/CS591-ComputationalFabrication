String[][] shapes = {{"+", "+", "+", "+"},
                    {"-", "-", "-", "-"},
                    {"[", "[", "[", "["},
                    {"]", "]", "]", "]"},
                    {"S", "S[-S][+S]", "S[-S][+S]", "S[-S][+S]"}};

void shapes() {
  background(#FFFFFF);
  t = new Turtle(this);
  t.right(40);
  l = new LSystem(5, 30);
  l.setRules(shapes);
  l.setAxiom("S");
  l.iterate(6);
  l.drawLSystem(t);
  println("shapes");
}

void drawPetal(Turtle t, float size) {
  for(int i = 0; i < 2; i++) {
    for(int j = 0; j < 70; j++) {
      t.left(1);
      t.forward(size);
    }
    t.left(110);
  }
 
}
