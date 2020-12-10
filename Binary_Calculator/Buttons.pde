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
