//setting different colours of calculator
color backgroundc = color(204, 215, 250);
color buttonc = color(89, 128, 252);
color buttontextc = color(255,255,255);
color shiftc = color(219, 144, 119);
color displayc = color(232,234,245);
color calcc = color(225, 225, 229);
//UI of the calculator
void calUI(){
  background(backgroundc);
  fill(calcc);
  //size of calculator
  rectMode(CENTER);
  rect(300, 350, 500, 600);
  fill(displayc);
  //calculator display
  rect(300, 150, 400, 150);
  rect(440, 125, 50, 50);
  fill(buttonc);
  //row 1 - 1, 0, del
  rect(130, 300, 100, 100);
  rect(255, 300, 100, 100);
  rect(380, 300, 100, 100);
  //row 2 - +, -, x
  rect(130, 425, 100, 100);
  rect(255, 425, 100, 100);
  rect(380, 425, 100, 100);
  //row 3 - /, %, =
  rect(130, 550, 100, 100);
  rect(255, 550, 100, 100);
  rect(380, 550, 100, 100);
  fill(shiftc);
  //shift button
  rectMode(CENTER);
  rect(490, 425, 80, 350);
  fill(buttontextc);
  //labelling of the buttons
  text("1", 115, 320);
  text("0", 240, 320);
  text("del", 340, 320);
  text("+", 115, 440);
  text("-", 240, 440);
  text("x", 360, 440);
  text("/", 115, 565);
  text(".", 240, 565);
  text("=", 360, 565);
  //rotate for shift 
  translate(500,500);
  rotate(-PI/2);
  text("shift", 0, 0);
}

//global variables
int value = 0;
int decimalValue= 0;
int base10Sum = 0;
int decimalbase10Sum = 0;
String operator;
String stringValue;
boolean decimalPoint = false;

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
  textSize(50);
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

/*Shows the display of the updated value*/
void display() {
  fill(0);
  rotate(PI/2);
  translate(-500,-500);
  if (decimalPoint ==false){
    text(value, 125, 200);
  }
  else { //if it is a positive number with decimal place
    stringValue= Integer.toString(value)+"."+Integer.toString(decimalValue);
    text(stringValue, 125, 200);
  }
  
}    

void mouseClicked(){
    if (mouseX>80 && mouseX<180 && mouseY>250 && mouseY<350) { //if the mouse clicks on "1"
       value=value*10+1;
    }
    else if(mouseX>205 && mouseX<305 && mouseY>250 && mouseY<350){ //if the mouse clicks on "0"
      value=value*10;
    }
} //end of mouseClicked
  

void keyPressed(){
    switch(key){
    case 'q': //"1" button
      if (decimalPoint==false){
        value = value*10+1;
      }
      else{
        decimalValue = decimalValue*10+1;
      }
        break;
      case 'w': //"0" button
      if (decimalPoint==false){
        value=value*10;
      }
      else{
        decimalValue = decimalValue*10;
      }
      break;
    case 'e': //del button
      if (decimalPoint==false){
        value=value/10;
      }
      else if (decimalValue==0){
        decimalPoint = false;
      }
      else {
        decimalValue = decimalValue/10;
      }
      break;
    case 'a': //+ button
      operator = "plus";
      base10Sum = convertBase10(value);
      value = 0;
      break;
    case 's': //- button
      operator = "minus";
      base10Sum = convertBase10(value);
      value = 0;
      break;
    case 'd': //x button
      operator = "times";
      base10Sum = convertBase10(value);
      value = 0;
      break;
    case 'z': // / button
      operator = "divide";
      base10Sum = convertBase10(value);
      value = 0;
      break;
    case 'x': // decimal button
      if (decimalPoint ==false){
        decimalPoint=true;
      }
      else {
        decimalPoint = false;
      } 
      break;
    case 'E': //reset option
      resetAllValues();
      break;     
    case 'c': // = button
        switch(operator){
          case "plus":
            decimalPoint = false;
            base10Sum += convertBase10(value);
            value = Integer.parseInt(Integer.toBinaryString(base10Sum));
            break;
         case "minus":
            decimalPoint = false;
            base10Sum -= convertBase10(value);
            value = Integer.parseInt(Integer.toBinaryString(base10Sum));
            break;
         case "times":
            decimalPoint = false;
            base10Sum *= convertBase10(value);
            value = Integer.parseInt(Integer.toBinaryString(base10Sum));
            break;
        case "divide":
            decimalPoint = false;
            base10Sum /= convertBase10(value);
            value = Integer.parseInt(Integer.toBinaryString(base10Sum));
            break;
        }
      break;
      
    default:
      break;
   }
}

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
