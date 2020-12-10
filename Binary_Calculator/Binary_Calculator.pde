/**
*This program is a binary calculator that collects binary number input and outputs the corresponding binary number output.
*/

//global variables
int value = 0;
int decimalValue= 0;
int base10Sum = 0;
float decimalbase10Sum = 0;
String operator;
String stringValue;
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
        plusButton();
      } else if (mouseX>205 && mouseX<305 && mouseY>375 && mouseY<475) { //-
        minusButton();
      } else if (mouseX>330 && mouseX<430 && mouseY>375 && mouseY<475) { //x
        timesButton();
      } else if (mouseX>80 && mouseX<180 && mouseY>500 && mouseY<600) {///
        divideButton();
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
    }
}

//triggers the various functions when the corresponding keys are pressed
void keyPressed(){
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
        plusButton();
        break;
      case 's': //- button
        minusButton();
        break;
      case 'd': //x button
        timesButton();
        break;
      case 'z': // / button
        divideButton();
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

//inputs a binary number and converts it into base 10
int convertBase10(int binary){  
    int decimal = 0;  
    int n = 0;  
    while(true){  
      if(binary == 0){  
        break;  
      } else {  
          int temp = binary%10;  
          decimal += temp*Math.pow(2, n);  
          binary = binary/10;  
          n++;  
       }  
    }  
    return decimal;  
}

//adds numbers
void plusOperator(){
  decimalPoint = false;
  base10Sum += convertBase10(value);
  decimalbase10Sum += decimalPlaceBinaryToBase10(decimalValue);
  if (decimalbase10Sum>1){
    base10Sum++;
    decimalbase10Sum-=1;
  }
  value = Integer.parseInt(Integer.toBinaryString(base10Sum));
  decimalPlaceBase10toBinary(decimalbase10Sum);
}

//substracts numbers
void minusOperator(){
    decimalPoint = false;
    base10Sum -= convertBase10(value);
    value = Integer.parseInt(Integer.toBinaryString(base10Sum));
}

//divides numbers
void divideOperator(){
   decimalPoint = false;
   base10Sum /= convertBase10(value);
   value = Integer.parseInt(Integer.toBinaryString(base10Sum));
}

//product of numbers
void timesOperator(){
    decimalPoint = false;
    base10Sum *= convertBase10(value);
    value = Integer.parseInt(Integer.toBinaryString(base10Sum));
}

//power 2 of input value
void powerOperator(){
    decimalPoint = false;
    base10Sum = convertBase10(int(pow(value,2)));
    value = Integer.parseInt(Integer.toBinaryString(base10Sum));
}

//square root of input value
void rootOperator(){
    decimalPoint = false;
    base10Sum = convertBase10(int(pow(value,0.5)));
    value = Integer.parseInt(Integer.toBinaryString(base10Sum));
}

//updates the value based on which operation was performed
void equalButton(){
   switch(operator){
         case "plus":
            plusOperator();
            break;
         case "minus":
            minusOperator();
            break;
         case "times":
            timesOperator();
            break;
        case "divide":
            divideOperator();
            break;
        case "power":
            powerOperator();
            break;
        case "root":
            rootOperator();
            break;
        default:
            break;
        }
}

//deletes the right most value of the number
void deleteButton(){
  if (decimalPoint==false){
    value=value/10;
  }
  else if (decimalValue==0){
    decimalPoint = false;
  }
  else {
    decimalValue = decimalValue/10;
  }
}

//inputs 1
void oneButton(){
if (decimalPoint==false){
   value = value*10+1;
    }
    else{
      decimalValue = decimalValue*10+1;
    }
}

//inputs 0
void zeroButton(){
  if (decimalPoint==false){
    value=value*10;
  }
  else{
    decimalValue = decimalValue*10;
  }
}

//initialises the values for an addition
void plusButton(){
  operator = "plus";
  base10Sum = convertBase10(value);
  decimalbase10Sum=decimalPlaceBinaryToBase10(decimalValue);
  value = 0;
  decimalValue = 0;
  decimalPoint=false;
  
}

//initialises the values for a substraction
void minusButton(){
      operator = "minus";
      base10Sum = convertBase10(value);
      decimalbase10Sum=decimalPlaceBinaryToBase10(decimalValue);
      value = 0;
      decimalValue = 0;
      decimalPoint=false;
}

//initialises the values for an division
void divideButton(){
      operator = "divide";
      base10Sum = convertBase10(value);
      decimalbase10Sum=decimalPlaceBinaryToBase10(decimalValue);
      value = 0;
      decimalValue = 0;
      decimalPoint=false;
}

//initialises the values for an multiplication
void timesButton(){
      operator = "times";
      base10Sum = convertBase10(value);
      decimalbase10Sum=decimalPlaceBinaryToBase10(decimalValue);
      value = 0;
      decimalValue = 0;
      decimalPoint=false;
}

//initialises the values to include a decimal place
void decimalButton(){
  if (decimalPoint ==false){
    decimalPoint=true;
  }
  else {
    decimalPoint = false;
  } 
}

void powerButton(){
    operator = "power";
    base10Sum = convertBase10(value);
    //value = 0;
}

void rootButton(){
  operator = "root";
  base10Sum = convertBase10(value);
  //value = 0;
}

//converts the fraction from binary to base10
float decimalPlaceBinaryToBase10(int decimalValue){
    float decimalbase10Sum = 0;  
      int len = String.valueOf(decimalValue).length(); 
      while(decimalValue!=0){   
            int temp = decimalValue%10;  
            decimalbase10Sum += temp*Math.pow(2, (len*-1));  
            decimalValue = decimalValue/10;  
            len--;  
      }
      return decimalbase10Sum;
}

//converts the fraction from base 10 to binary
void decimalPlaceBase10toBinary(float decimalBase10Sum){
  int stringLength=0;
  String binaryString="";
  float temp = decimalBase10Sum;
    while (temp!=0 && stringLength<4){
        temp*=2;
        if (temp>=1){    
          binaryString=binaryString+"1";
          stringLength++;
          temp-=1;
        }
        else {
          binaryString=binaryString+"0";
         stringLength++;
        }
      }
      decimalValue = Integer.parseInt(binaryString);
}
