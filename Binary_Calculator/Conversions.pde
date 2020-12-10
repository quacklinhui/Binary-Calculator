//converts the fraction from base 10 to binary
int decimalPlaceBase10toBinary(float decimalBase10Sum){
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
      return decimalValue = Integer.parseInt(binaryString);
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
