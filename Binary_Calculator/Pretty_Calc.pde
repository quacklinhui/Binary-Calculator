//colour scheme blacks, grey, red
color light = color(184,184,184);
color red = color(123,1,0);
color black = color(16,16,16);
color dark = color(33,33,33);

PFont displayfont;
PFont calcfont1;
PFont calcfont2;

Button[] examples = new Button[9];
String[] labels = {"1", "0", "DEL", "+", "-", "x", "/", ".", "="};
Button shift;

void setup() {
  size(500, 600);
  background(black);
  textAlign(CENTER, CENTER);

  calcfont2 = createFont("Exo2.0-Light.otf", 30);
  displayfont = createFont("digital-7.ttf", 70);
  for (int i = 0; i < examples.length; i++) {
    if (i < 3) {
      examples[i] = new Button(labels[i], (100*(i))+(25*(i+1)), 200, 100, 100);
    } else if (i >= 3 && i < 6) {
      examples[i] = new Button(labels[i], (100*(i%3))+(25*((i%3)+1)), 325, 100, 100);
    } else {
      examples[i] = new Button(labels[i], (100*(i%6))+(25*((i%6)+1)), 450, 100, 100);
    }
  }

    shift = new Button("sh", 400, 200, 75, 350);
}



void draw() {
  shift.display();
  
  noStroke();
  fill(red);
  rect(25, 25, 455, 155);
  filter(BLUR,1);
  
  //calculator display
  fill(black);
  rect(25, 25, 450, 150);
  rect(400, 80, 50, 50);
  
  
  
  for (int i = 0; i < examples.length; i++) {
    smooth();
    noStroke();
    fill(red);
    rect(examples[i].x, examples[i].y, examples[i].w+5, examples[i].h+5, 10);
    //img = loadImage("Redbg.png");
    //image(img, 10, 10);
    //filter(BLUR, 1);
    
    examples[i].display();
  }
}

// mouse button clicked
void mousePressed(){
for (int i = 0; i < examples.length; i++) {
    if (examples[i].clicked()) {
      for (int j = 0; j < examples.length; j++) {
        examples[j].selected = false;
      }
      examples[i].selected = true;
      break;
    }
  }
}
