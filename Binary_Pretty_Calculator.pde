/**
*This program is a binary calculator that collects binary number input and outputs the corresponding binary number output.
*Note that the program only supports addition and substraction for inputs with decimal places
*/
//import processing.sound.*;
//SoundFile click;

//import fonts
PFont displayfont;
PFont calcfont1;
PFont calcfont2;

//global variables
int value = 0;
int decimalValue= 0;
int base10Sum = 0;
float decimalbase10Sum = 0;
String operator="";
String stringValue=null;
boolean decimalPoint = false;

Button[] examples = new Button[9];
String[] labels = {"1", "0", "del", "+", "-", "x", "/", ".", "="};
Button shift;


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
  size(500, 600);
  background(black);
  //textAlign(CENTER, CENTER);
  //import fonts
  calcfont2 = createFont("Exo2.0-Light.otf", 30);
  displayfont = createFont("digital-7.ttf", 70);
  
  smooth();
  for (int i = 0; i < examples.length; i++) {
    if (i < 3) {
      examples[i] = new Button(labels[i], (100*(i))+(25*(i+1)), 200, 100, 100);
    } else if (i >= 3 && i < 6) {
      examples[i] = new Button(labels[i], (100*(i%3))+(25*((i%3)+1)), 325, 100, 100);
    } else {
      examples[i] = new Button(labels[i], (100*(i%6))+(25*((i%6)+1)), 450, 100, 100);
    }
  }
   //shift button  
    shift = new Button("sh", 400, 200, 75, 350);
  //click = new SoundFile(this, "click.wav");
  
}

void draw(){
  calUI();
  if (value<11112){ //limiting the value to 5 digits
   display();
  }
  else {
  value = 0;
  }

  for (int i = 0; i < examples.length; i++) {
    if (examples[i].mouseParameters()) { //if the mouse clicks on "1"
      fill(dark);
      stroke(red);
      textSize(50);
      rect(examples[i].x, examples[i].y, examples[i].w, examples[i].h, 10);
      fill(255);
      textFont(calcfont2);
      textAlign(CENTER, CENTER);
      text(examples[i].label, examples[i].x + (examples[i].w / 2), examples[i].y + (examples[i].h / 2));
    } else if (shift.mouseParameters()) {
      fill(dark);
      stroke(red);
      textSize(50);
      rect(400, 200, 75, 350,10);
      fill(255);
      textFont(calcfont2);
      textAlign(CENTER, CENTER);
      text("sh", shift.x + (shift.w/2), shift.y + (shift.h/2));
    }
  }
}


//performs functions on mouse click
void mouseClicked(){
    if (mouseButton == LEFT) {
      if (examples[0].mouseParameters()) { //if the mouse clicks on "1"
        //fill(0);
        //rect(130,300,100,100); //the button will respond when it is clicked
        oneButton();
        
      } else if(examples[1].mouseParameters()){ //if the mouse clicks on "0"
        zeroButton();
      } else if (examples[2].mouseParameters()){ //del
        deleteButton();
      } else if (examples[3].mouseParameters()) { //+
        operator = "plus";
        operatorButton();
      } else if (examples[4].mouseParameters()) { //-
        operator = "minus";
        operatorButton();
      } else if (examples[5].mouseParameters()) { //x
        operator = "times";
        operatorButton();
      } else if (examples[6].mouseParameters()) {///
        operator = "divide";
        operatorButton();
      } else if (examples[7].mouseParameters()) {// decimal
        decimalButton();
      } else if (examples[8].mouseParameters()) {//equal
        equalButton();
      }
    //special functions shift x /
    } else if (mouseButton == RIGHT) {
      if (examples[5].mouseParameters()) { // shift x
        operator = "power";
        operatorButton();
      } else if (examples[6].mouseParameters()) {// shift /
        operator = "root";
        operatorButton();
      }
      else if (examples[2].mouseParameters()) {// clear button
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
