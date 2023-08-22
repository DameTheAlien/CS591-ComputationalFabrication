String[][] botan = {{"+", "+", "+", "+"},
                    {"-", "-", "-", "-"},
                    {"[", "[", "[", "["},
                    {"]", "]", "]", "]"},
                    {"X", "F[+X][-X]FX", "FF[+X][-X]F", "F[+F]X[-F]"},
                    {"F", "FF", "FF", "FF"}};

void botanical() {
  println("botanical");
  background(#FFFFFF);
  t = new Turtle(this);
  t.penUp();
  t.back(height/2 - 10);
  t.penDown();
  l = new LSystem(3,45);
  l.setRules(botan);
  l.setAxiom("X");
  l.iterateRandom(7);
  l.drawLSystem(t);
}
