class LSystem {
  String axiom, computedWord;
  float size, angle;
  String[][] rules; //<>//

  LSystem(float size, float angle) {
    this.size = size;
    this.angle = angle;
  }
  
  void setRules(String[][] rules) {
    this.rules = rules;
  }
  
  void setAxiom(String axiom) { 
    this.axiom = axiom;
    computedWord = axiom;
  }
  
  void iterate(int iterations) {
    String tempWord;
    for(int i = 0; i < iterations; i++) {
      tempWord = computedWord;
      computedWord = "";
      for(int j = 0; j < tempWord.length(); j++) {
        char c = tempWord.charAt(j);
        for(int k = 0; k < rules.length; k++) {
          if(c == rules[k][0].charAt(0)) {
            computedWord = computedWord + rules[k][1];
            break;
          }
        }
      }
    }
  }
  
  void iterateRandom (int iterations) {
    String tempWord;
    for (int i=0; i<iterations; i++) {
      tempWord = computedWord;
      computedWord = "";
      for (int j=0; j<tempWord.length(); j++) { //loop through word
        char c = tempWord.charAt(j);
        for (int k=0; k<rules.length; k++) { //loop through rules
          if (c==rules[k][0].charAt(0)) {
            computedWord = computedWord + rules[k][int(random(1,3))];
            break;
          }
        }
      }
    }
  }
 
  void drawLSystem(Turtle t) {
    for(int i = 0; i < computedWord.length(); i++) {
      switch(computedWord.charAt(i)) {
        case 'F':
          t.forward(size);
          break;
        case 'A':
          t.forward(size);
          break;
        case 'B':
          t.forward(size);
          break;
        case 'X':
          fill(0,0,0);
          noStroke();
          ellipse(t.getX(), t.getY(), 4, 4);
          stroke(0);
          noFill();
          break;
        case 'S':
          drawPetal(t, size);
          break;
        case 'T':
          t.forward(size);
          break;
        case '+':
          t.right(angle);
          break;
        case '-':
          t.left(angle);
          break;
        case '[':
          t.push();
          break;
        case ']':
          t.pop();
          break;
      }
    }
  }
}
