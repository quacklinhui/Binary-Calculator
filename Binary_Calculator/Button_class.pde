// the Button class
class Button {
  boolean selected = false;
  String label; // button label
  int x;      // top left corner x position
  int y;      // top left corner y position
  int w;      // width of button
  int h;      // height of button
  PImage img;
  
  // constructor
  Button(String labelB, int xpos, int ypos, int widthB, int heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  
  void display() {
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
      smooth();
      noStroke();
      fill(red);
      rect(x, y, w+5, h+5, 10);
      //img = loadImage("Redbg.png");
      //image(img, 10, 10);
      filter(BLUR, 1);
      
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
  
  boolean clicked(){
    return mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ;
  }
}
  
