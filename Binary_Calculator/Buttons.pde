//inputs 1
void oneButton(){
  click.play();
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

void operatorButton(){
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
