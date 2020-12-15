//colour scheme blacks, grey, red
color light = color(184,184,184);
color red = color(123,1,0);
color black = color(16,16,16);
color dark = color(66,66,66);
color grey = color(88,88,88);

//UI of the calculator
void calUI(){
  fill(black);
  
  
  //red glow effect for calc display
  noStroke();
  fill(red);
  rect(25, 25, 455, 155);
  //rect(400, 90, 455, 155);
  filter(BLUR,3);
  
  //calculator display
  fill(black);
  rect(25, 25, 450, 150);
  rect(400, 80, 50, 50);
  
  for (int i = 0; i < examples.length; i++) {
    //red glow for buttons
    smooth();
    noStroke();
    fill(red);
    rect(examples[i].x, examples[i].y, examples[i].w+5, examples[i].h+5, 10);

    //display buttons
    examples[i].display();
  }
  
  //red glow effect for shift
  noStroke();
  fill(red);
  rect(400, 200, 80, 355,10);
  shift.display();
}
