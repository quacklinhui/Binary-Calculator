//old colours, can delete later
color backgroundc = color(204, 215, 250);
color buttonc = color(89, 128, 252);
color buttontextc = color(255,255,255);
color shiftc = color(219, 144, 119);
color displayc = color(232,234,245);
color calcc = color(225, 225, 229);

//colour scheme blacks, grey, red
color light = color(184,184,184);
color red = color(123,1,0);
color black = color(16,16,16);
color dark = color(66,66,66);
color grey = color(88,88,88);

//UI of the calculator
void calUI(){
  background(backgroundc);
  fill(black);
  //size of calculator
  rectMode(CENTER);
  rect(300, 350, 500, 600);
  //fill(displayc);
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
  //row 3 - /, ., =
  rect(130, 550, 100, 100);
  rect(255, 550, 100, 100);
  rect(380, 550, 100, 100);
  fill(shiftc);
  //shift button
  rectMode(CENTER);
  rect(490, 425, 80, 350);
  fill(buttontextc);
  //labelling of the buttons
  textSize(50);
  text("1", 115, 320);
  text("0", 240, 320);
  text("del", 340, 320);
  text("+", 110, 440);
  text("-", 240, 440);
  text("x", 365, 440);
  text("/", 115, 565);
  text(".", 248, 560);
  text("=", 360, 565);
  //special functions
  textSize(20);
  text("(^2)", 385, 400);
  text("(^0.5)", 120, 523);
  text("clear", 380, 270);
  //rotate for shift
  textSize(50);
  translate(500,500);
  rotate(-PI/2);
  text("shift", 10, 10);
  
}
