//adds numbers
void plusOperator(){
  decimalPoint = false;
  base10Sum += convertBase10(value);
  decimalbase10Sum += decimalPlaceBinaryToBase10(decimalValue);
  if (decimalbase10Sum>=1){
    base10Sum++;
    decimalbase10Sum--;
  }
  value = Integer.parseInt(Integer.toBinaryString(base10Sum));
  if (decimalbase10Sum!=0){
    decimalValue=decimalPlaceBase10toBinary(decimalbase10Sum);
  }
  else{
    decimalValue=0;
  }
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
