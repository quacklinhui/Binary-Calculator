//setting different colours of calculator
color backgroundc = color(204, 215, 250);
color buttonc = color(89, 128, 252);
color buttontextc = color(255,255,255);
color shiftc = color(219, 144, 119);
color displayc = color(232,234,245);
color calcc = color(225, 225, 229);

float place=0;
String rettext; 
String op;
float temp1;
float temp2;

void setup(){
  //size of frame
  size(600, 700);
  background(backgroundc);
  textSize(50);
}

void draw(){
  reset();
  //keyinput();
  mouseinput();
}

//UI of the calculator
void reset(){
  background(backgroundc);
  fill(calcc);
  //size of calculator
  rectMode(CENTER);
  rect(300, 350, 500, 600);
  
  fill(displayc);
  //calculator display
  rectMode(CENTER);
  rect(300, 150, 400, 150);
  rectMode(CENTER);
  rect(125, 125, 30, 30);
  
  fill(buttonc);
  //row 1 - 1, 0, del
  rectMode(CENTER);
  rect(130, 300, 100, 100);
  rectMode(CENTER);
  rect(255, 300, 100, 100);
  rectMode(CENTER);
  rect(380, 300, 100, 100);
  
  //row 2 - +, -, x
  rectMode(CENTER);
  rect(130, 425, 100, 100);
  rectMode(CENTER);
  rect(255, 425, 100, 100);
  rectMode(CENTER);
  rect(380, 425, 100, 100);
  
  //row 3 - /, %, =
  rectMode(CENTER);
  rect(130, 550, 100, 100);
  rectMode(CENTER);
  rect(255, 550, 100, 100);
  rectMode(CENTER);
  rect(380, 550, 100, 100);
  
  fill(shiftc);
  //shift button
  rectMode(CENTER);
  rect(490, 425, 80, 350);
  
  fill(buttontextc);
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
  

void mouseinput(){
  translate(0,0);
  if (mousePressed) {
    //mouse at 1
    if (mouseX>80 && mouseX<180 && mouseY>250 && mouseY<350) {
      if (mouseButton == LEFT) {
        fill(126);
      }
      if (place==1) {
        place = 2;
      }
      
      if(place == 0){
        temp1 = (temp1*10)+ 1;
      }
      else if(place==2){
        temp2 = (temp2*10)+ 1;
      }
      else if(place==4){
        temp1 = 0;
        place = 0;
      }
    }
    //mouse at 0 
    else if(mouseX>205 && mouseX<305 && mouseY>250 && mouseY<350){
      if (mouseButton == LEFT) {
        fill(126);
      }
      if (place==1) {
        place = 2;
      }
      
      if(place == 0){
        temp1 = (temp1*10)+ 0;
      }
      else if(place==2){
        temp2 = (temp2*10)+ 0;
      }
      else if(place==4){
        temp1 = 0;
        place = 0;
      }
    }
  }
  
  if(place==0||place==4){
    rettext = str(temp1);
  }
  
  else if(place==1){
    rettext = str(temp1)+ op;
  }
  
  else if(place==2){
    rettext = str(temp1)+ op +str(temp2);
  }
}


//textSize(70);
//      text("1", 400, 100);
