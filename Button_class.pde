// the Button class
class Button {
  boolean selected = false;
  String label; // button label
  int x;      // top left corner x position
  int y;      // top left corner y position
  int w;      // width of button
  int h;      // height of button
  
  // constructor
  Button(String labelB, int xpos, int ypos, int widthB, int heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  
  void display() {
    //if button is pressed, then 
    if (selected) {
      fill(dark);
      stroke(red);
      textSize(50);
      rect(x, y, w, h, 10);
      fill(255);
      textFont(calcfont2);
      text(label, x + (w / 2), y + (h / 2));
      if (label == "1" || label == "0") {
        textFont(displayfont);
        text(label, 75, 125);
      } else if (label != "DEL") {
        textFont(displayfont);
        text(label, 425, 100);
      }
    }
    else {
      //default, without button press
      stroke(red);
      fill(black);
      rect(x, y, w, h, 10);
      
      //labels
      fill(light);
      textFont(calcfont2);
      text(label, x + (w / 2), y + (h / 2));
      if (label == "x" || label == "/") {
        textSize(20);
        text("(^2)", 350, 345);
        text("(^0.5)", 95, 470);
      }
    }
  }
  
  //returns true or false for whether button is clicked
  boolean clicked(){
    return mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ;
  }
}
  
