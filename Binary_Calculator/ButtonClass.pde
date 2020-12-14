public class Button{
  String label; // button label
  float x;      // top left corner x position
  float y;      // top left corner y position
  float w;      // width of button
  float h;      // height of button
  float bx;
  float by;
  
  // constructor
  Button(String labelB, float xpos, float ypos) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = 100;
    h = 100;
    bx=x+w;
    by=y+h;
  }
  
  void display() {
      fill(black);
      stroke(red);
      textSize(50);
      rect(x, y, w, h, 10);
      fill(90,85,85);
      text(label, x + (w / 2), y + (h / 2));
    }
  
  boolean mouseParameters() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    else 
      return false;
  }
 }
