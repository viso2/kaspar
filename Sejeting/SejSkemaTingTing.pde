int tilstand = 0;


Button klasse1;
Button klasse2;
Button klasse3;
Button seSkema;
Button inputData;

void setup() {
  fullScreen();
  klasse1 = new Button(width-width/4, height-height/4, width/6, height/8, true);
  klasse2 = new Button(width-width/4, height-height/4*2, width/6, height/8, true);
  klasse3 = new Button(width-width/4, height-height/4*3, width/6, height/8, true);
  seSkema = new Button(width/2,height/2,width/6,height/8,true);
  inputData = new Button(width/2,int(height/1.25),width/6,height/8,true);
}

void draw() {
  background(255, 255, 255);

  if (tilstand == 0) {
    //main menu//
    textSize(width/20);
    textAlign(CENTER);
    text("Vælg klasse og derefter kan deres skema ses",width/2,height/5);
    klasse1.display();
    klasse2.display();
    klasse3.display();
    seSkema.display();
    inputData.display();
  } else if (tilstand == 1) {
    //skema view//
  }
}
