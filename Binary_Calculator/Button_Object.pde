//setting different colours of calculator
color backgroundc = color(204, 215, 250);
color buttonc = color(89, 128, 252);
color buttontextc = color(255,255,255);
color shiftc = color(219, 144, 119);
color displayc = color(232,234,245);
color calcc = color(225, 225, 229);

Button one;  // the button
Button zero;
Button del;
Button plus;
Button minus;
Button times;
Button divide;
Button deci;
Button equals;
Button shift;


void setup() {
  size(600, 700);
  background(backgroundc);
  smooth();
  
  // calculator buttons
  one = new Button("1", 130, 300, 100, 100);
  drawButton(one);
  zero = new Button("0", 255, 300, 100, 100);
  drawButton(zero);
  del = new Button ("del", 380, 300, 100, 100); 
  drawButton(del);
  plus = new Button("+", 130, 425, 100, 100);
  drawButton(plus);
  minus = new Button("-", 255, 425, 100, 100);
  drawButton(minus);
  times = new Button ("x", 380, 425, 100, 100);
  drawButton(times);
  divide = new Button("/", 130, 550, 100, 100);
  drawButton(divide);
  deci = new Button(".", 255, 550, 100, 100);
  drawButton(deci);
  equals = new Button("=", 380, 550, 100, 100);
  drawButton(equals);
  shift = new Button("sh", 490, 300, 80, 350);
  drawButton(shift);
}

void drawButton(Button a) {
  a.Draw();
}

// mouse button clicked
void mousePressed()
{
  if (one.MouseIsOver()) {
    
  }
}


// the Button class
class Button {
  String label; // button label
  float x;      // top left corner x position
  float y;      // top left corner y position
  float w;      // width of button
  float h;      // height of button
  
  // constructor
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  
  void Draw() {
    fill(buttonc);
    stroke(255);
    textSize(50);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(label, x + (w / 2), y + (h / 2));
  }
  
  boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }
}
