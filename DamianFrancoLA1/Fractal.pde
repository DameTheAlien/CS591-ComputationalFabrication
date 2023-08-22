String[][] frac = {{"F", "F++F-F-F-F-F++F"},
                   {"+", "+"}, {"-", "-"}};

void fractal() {
  println("fractal");
  background(#FFFFFF);
  t = new Turtle(this);
  t.setX(width/2-225);
  t.setY(height/2+370);
  l = new LSystem(11, 60);
  l.setRules(frac);
  l.setAxiom("FF+F+F+F+FF");
  l.iterate(3);
  l.drawLSystem(t);
}
