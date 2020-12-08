int currentBinary, decimalSum, binarySum;
int currentDecimal, total, value;

void keyboardInput(){


  if (keyPressed ==true){
    if(key=='q'||key=='w'){ //if one of the number buttons are pressed
      currentBinary=collectCurrentNumber();
    }
    else {
      switch(key){
        case 'e': //if del button is pressed
          currentBinary=currentBinary/10;
  
        case 'a': //plus
          currentDecimal = convertDecimal(currentBinary); //store the old data as a decimal
          decimalSum+=convertDecimal(collectCurrentNumber()); //add the new data to the old data
          
          
        case 's': //minus
          currentDecimal = convertDecimal(currentBinary); //store the old data as a decimal
          decimalSum-=convertDecimal(collectCurrentNumber()); //add the new data to the old data
          
        case 'd': //times
          currentDecimal = convertDecimal(currentBinary); //store the old data as a decimal
          decimalSum*=convertDecimal(collectCurrentNumber()); //add the new data to the old data
          
        case 'z': //divide
          currentDecimal = convertDecimal(currentBinary); //store the old data as a decimal
          decimalSum/=convertDecimal(collectCurrentNumber()); //add the new data to the old data
          
        case 'x': //decimal
        
        
        case 'c': //equals
          binarySum = convertBinary(decimalSum);
          //print the binarySum
          
        case 'Q':
        case 'W':
        case 'E':
        case 'A':
        case 'S':
        case 'D':
        case 'Z':
        case 'X':
        case 'C':
        default:
      };
      
    }
  }
}

int collectCurrentNumber(){
  int currentBinary =0;
  do{
    int value;
    switch(key){
          case 'q': //button for 1
            value = 1;
            if (currentBinary==0){
              currentBinary = value;
            }
            else{
            currentBinary = currentBinary * 10 + value;
            }
          case 'w': //button for 0
            currentBinary*=10;
          };
  }while (key=='q'||key=='w');
   return currentBinary;

}

int convertDecimal(int binary){  
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

int convertBinary(int decimal){
  int binary=Integer.parseInt(Integer.toBinaryString(decimal));
  return binary;
}
