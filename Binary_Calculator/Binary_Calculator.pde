/**
*This program is a binary calculator that collects binary number input and outputs the corresponding binary number output.
*Note that the program only supports addition and substraction for inputs with decimal places
*/

//global variables
int value = 0;
int decimalValue= 0;
int base10Sum = 0;
float decimalbase10Sum = 0;
String operator="";
String stringValue=null;
boolean decimalPoint = false;

Button one;
Button zero;
Button del;
Button plus;
Button minus;
Button times;
Button divide;
Button deci;
Button equals;
Button shift;

int col1=80;
int col2=205;
int col3=330;
int row1=250;
int row2=375;
int row3=500;



//resets all global variables to their initial configuration
void resetAllValues(){
  value = 0;
  decimalValue= 0;
  base10Sum = 0;
  decimalbase10Sum = 0;
  operator=null;
  stringValue=null;
  decimalPoint=false; //showing whether the current input should be after the decimal or before
}

void setup(){
  //size of frame
  size(600, 700);
  background(backgroundc);
  //textSize(50);
  one = new Button ("1", col1,row1);
  zero = new Button ("0", col2,row1);
  del = new Button ("del",col3,row1);
  plus = new Button ("+",col1,row2);
  minus= new Button ("-",col2,row2);
  times= new Button ("*",col3,row2);
  divide= new Button ("/",col1,row3);
  deci= new Button (".",col2,row3);
  equals= new Button ("=",col3,row3);
  
}

void draw(){
  calUI();
  if (value<11112){ //limiting the value to 5 digits
   display();
  }
  else {
  value = 0;
  }
  if (one.mouseParameters()) { //if the mouse clicks on "1"
        fill(0,63);
        noStroke();
        rect(130,300,100,100);
  }
  
}


//performs functions on mouse click
void mouseClicked(){
    if (mouseButton == LEFT) {
      if (one.mouseParameters()) { //if the mouse clicks on "1"
        oneButton();
      } else if(zero.mouseParameters()){ //if the mouse clicks on "0"
        zeroButton();
      } else if (del.mouseParameters()){ //del
        deleteButton();
      } else if (plus.mouseParameters()) { //+
        operator = "plus";
        operatorButton();
      } else if (minus.mouseParameters()) { //-
        operator = "minus";
        operatorButton();
      } else if (times.mouseParameters()) { //x
        operator = "times";
        operatorButton();
      } else if (divide.mouseParameters()) {///
        operator = "divide";
        operatorButton();
      } else if (deci.mouseParameters()) {// decimal
        decimalButton();
      } else if (equals.mouseParameters()) {//equal
        equalButton();
      }
    //special functions shift x /
    } else if (mouseButton == RIGHT) {
      if (times.mouseParameters()) { // shift x
        operator = "power";
        operatorButton();
      } else if (divide.mouseParameters()) {// shift /
        operator = "root";
        operatorButton();
      }
      else if (del.mouseParameters()) {// clear button
        resetAllValues();
      }
    }
}

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
  
  //void Draw() {
  //  fill(buttonc);
  //  stroke(255);
  //  textSize(50);
  //  rect(x, y, w, h, 10);
  //  textAlign(CENTER, CENTER);
  //  fill(0);
  //  text(label, x + (w / 2), y + (h / 2));
  //}
  
  boolean mouseParameters() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }
 }




//triggers the various functions when the corresponding keys are pressed
void keyReleased(){
    switch(key){
      case 'q': //"1" button
        oneButton();
        break;
      case 'w': //"0" button
        zeroButton();
        break;
      case 'e': //del button
        deleteButton();
        break;
      case 'a': //+ button
        operator = "plus";
        operatorButton();
        break;
      case 's': //- button
        operator = "minus";
        operatorButton();
        break;
      case 'd': //x button
        operator = "times";
        operatorButton();
        break;
      case 'z': // / button
        operator = "divide";
        operatorButton();
        break;
      case 'x': // decimal button
        decimalButton();
        break;
      case 'E': //reset option
        resetAllValues();
        break;     
      case 'c': // = button
        equalButton();
        break;
      case 'D': // power 2 button
        operator="power";
        operatorButton();
        break;
      case 'Z': // root button
        operator = "root";
        operatorButton();
        break;
      default:
        break;
   }
}
