//shows the display of the updated value
void display() {
  if (decimalPoint == false && decimalValue==0){
    //calculator main display
    textFont(displayfont);
    textAlign(LEFT, CENTER);
    text(value, 75, 125);
    if (operator != null){
      //operation display
      if (operator == "plus"){
        textFont(displayfont);
        textAlign(CENTER, CENTER);
        text(examples[3].label, 425, 100);
      } else if (operator == "minus"){
        textFont(displayfont);
        textAlign(CENTER, CENTER);
        text(examples[4].label, 425, 100);
      } else if (operator == "times"){
        textAlign(CENTER, CENTER);
        textFont(displayfont);
        text(examples[5].label, 425, 100);
      } else if (operator == "divide") {
        textFont(displayfont);
        textAlign(CENTER, CENTER);
        text(examples[6].label, 425, 100);
      } else if (operator == "power") {
        textFont(displayfont);
        textAlign(CENTER, CENTER);
        text("^2", 425, 100);
      } else if (operator == "root") {
        textFont(displayfont);
        textAlign(CENTER, CENTER);
        text("^0.5", 425, 100);
      }
    }
  }
  else { //if it is a positive number with decimal place
    stringValue= Integer.toString(value)+"."+Integer.toString(decimalValue);
    textAlign(LEFT, CENTER);
    text(stringValue, 75, 125);
    if (operator != null) {
      if (operator == "plus"){
        textFont(displayfont);
        textAlign(CENTER, CENTER);
        text(examples[3].label, 425, 100);
      } else if (operator == "minus"){
        textFont(displayfont);
        textAlign(CENTER, CENTER);
        text(examples[4].label, 425, 100);
      } else if (operator == "times"){
        textFont(displayfont);
        textAlign(CENTER, CENTER);
        text(examples[5].label, 425, 100);
      } else if (operator == "divide") {
        textFont(displayfont);
        textAlign(CENTER, CENTER);
        text(examples[6].label, 425, 100);
      } else if (operator == "power") {
        textFont(displayfont);
        textAlign(CENTER, CENTER);
        text("^2", 425, 100);
      } else if (operator == "root") {
        textFont(displayfont);
        textAlign(CENTER, CENTER);
        text("^0.5", 425, 100);
      }
    }
  }
}    
