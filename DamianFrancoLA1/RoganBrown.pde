String[][] rogan = {{"+", "+", "+", "+"},
                    {"-", "-", "-", "-"},
                    {"[", "[", "[", "["},
                    {"]", "]", "]", "]"},
                    {"A", "A[-B][+B]", "A[-B][+B]", "A[-B][+B]"},
                    {"B", "A[-B]A[+A-B]", "A[-B]A[+A-B]", "A[-B]A[+A-B]"}};
                    
void roganBrown() {
  println("roganBrown");
  background(#FFFFFF);
  ellipse(width/2+15, height/2, 725, 725);
  t = new Turtle(this);
  for(int i = 0; i < 4; i++) { 
    l = new LSystem(22, 30);
    l.setRules(rogan);
    l.setAxiom("A");
    l.iterate(6);
    l.drawLSystem(t);
    t.right(90);
  }
}
