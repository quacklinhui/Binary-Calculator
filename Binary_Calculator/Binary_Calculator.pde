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
}

void draw(){
  calUI();
  if (value<11112){ //limiting the value to 5 digits
   display();
  }
  else {
  value = 0;
  }
}


//performs functions on mouse click
void mouseClicked(){
    if (mouseButton == LEFT) {
      if (mouseX>80 && mouseX<180 && mouseY>250 && mouseY<350) { //if the mouse clicks on "1"
        oneButton();
      } else if(mouseX>205 && mouseX<305 && mouseY>250 && mouseY<350){ //if the mouse clicks on "0"
        zeroButton();
      } else if (mouseX>330 && mouseX<430 && mouseY>250 && mouseY<350){ //del
        deleteButton();
      } else if (mouseX>80 && mouseX<180 && mouseY>375 && mouseY<475) { //+
        operator = "plus";
        operatorButton();
      } else if (mouseX>205 && mouseX<305 && mouseY>375 && mouseY<475) { //-
        operator = "minus";
        operatorButton();
      } else if (mouseX>330 && mouseX<430 && mouseY>375 && mouseY<475) { //x
        operator = "times";
        operatorButton();
      } else if (mouseX>80 && mouseX<180 && mouseY>500 && mouseY<600) {///
        operator = "divide";
        operatorButton();
      } else if (mouseX>205 && mouseX<305 && mouseY>500 && mouseY<600) {// decimal
        decimalButton();
      } else if (mouseX>330 && mouseX<430 && mouseY>500 && mouseY<600) {//equal
        equalButton();
      }
    //special functions shift x /
    } else if (mouseButton == RIGHT) {
      if (mouseX>330 && mouseX<430 && mouseY>375 && mouseY<475) { // shift x
        powerButton();
      } else if (mouseX>80 && mouseX<180 && mouseY>500 && mouseY<600) {// shift /
        rootButton();
      }
      else if (mouseX>330 && mouseX<430 && mouseY>250 && mouseY<350) {// clear button
        resetAllValues();
      }
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
      default:
        break;
   }
}
