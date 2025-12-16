int tilstand = 0;
Button klasse1;
Button klasse2;
Button klasse3;
Button seSkema;
Button inputData;

void setup() {
  fullScreen();
  klasse1 = new Button(width-width/4, height-height/4, width/6, height/8, true, "Klasse1");
  klasse2 = new Button(width-width/4, height-height/4*2, width/6, height/8, true, "Klasse2");
  klasse3 = new Button(width-width/4, height-height/4*3, width/6, height/8, true, "Klasse3");
  seSkema = new Button(width/2-width/12, height/2, width/6, height/8, true, "Se Skema");
  inputData = new Button(width/2-width/12, int(height/1.25), width/6, height/8, true, "Input Data");
}

void draw() {
  background(255, 255, 255);

  if (tilstand == 0) {
    //main menu//
    fill(0, 0, 0);
    textSize(width/20);
    textAlign(CENTER);
    text("Vælg klasse og derefter kan deres skema ses", width/2, height/5);
    textSize(width/30);
    textAlign(CENTER, CENTER);
    klasse1.display();
    klasse2.display();
    klasse3.display();
    seSkema.display();
    inputData.display();
    if (seSkema.selected) {
      tilstand = 1;
      seSkema.selected = false;
    } else if (inputData.selected) {
      tilstand = 2;
      inputData.selected = false;
    }
  } else if (tilstand == 1) {
    //skema view//
  } else if (tilstand == 2){
    //input Data//
  }
}

void mousePressed() {
}
