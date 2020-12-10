//shows the display of the updated value
void display() {
  fill(0);
  rotate(PI/2);
  translate(-500,-500);
  if (decimalPoint == false && decimalValue==0){
    //calculator main display
    textSize(60);
    text(value, 125, 200);
    if (operator != null){
      //operation display
      if (operator == "plus"){
        textSize(40);
        text("+", 425, 140);
      } else if (operator == "minus"){
        textSize(40);
        text("-", 428, 140);
      } else if (operator == "times"){
        textSize(40);
        text("x", 428, 140);
      } else if (operator == "divide") {
        textSize(40);
        text("/", 428, 140);
      } else if (operator == "power") {
        textSize(30);
        text("^2", 420, 140);
      } else if (operator == "root") {
        textSize(30);
        text("^0.5", 420, 140);
      }
    }
  }
  else { //if it is a positive number with decimal place
    stringValue= Integer.toString(value)+"."+Integer.toString(decimalValue);
    text(stringValue, 125, 200);
    if (operator != null) {
      if (operator == "plus"){
        textSize(40);
        text("+", 420, 140);
      } else if (operator == "minus"){
        textSize(40);
        text("-", 420, 140);
      } else if (operator == "times"){
        textSize(40);
        text("x", 420, 140);
      } else if (operator == "divide") {
        textSize(40);
        text("/", 420, 140);
      } else if (operator == "power") {
        textSize(30);
        text("^2", 420, 140);
      } else if (operator == "root") {
        textSize(30);
        text("^0.5", 420, 140);
      }
    }
  }
}    
