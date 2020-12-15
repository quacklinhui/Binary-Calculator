public class Button{
  String label; // button label
  float x;      // top left corner x position
  float y;      // top left corner y position
  float w;      // width of button
  float h;      // height of button

  
  // constructor
  Button(String labelB, float xpos, float ypos, float wid, float hei) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = wid;
    h = hei;

  }
  
  void display() {
      //default, without button press
      stroke(red);
      fill(black);
      rect(x, y, w, h, 10);

      //labels
      fill(light);
      textFont(calcfont2);
      textAlign(CENTER, CENTER);
      text(label, x + (w / 2), y + (h / 2));
      if (label == "x" || label == "/") {
        textSize(20);
        text("(^2)", 350, 345);
        text("(^0.5)", 95, 470);
      }
    }
  
  boolean mouseParameters() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    else 
      return false;
  }
 }
