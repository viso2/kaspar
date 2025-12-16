int tilstand = 0;
Button klasse1;
Button klasse2;
Button klasse3;
Button seSkema;
Button inputData;
float marginX = width * 0.05;
float marginY = height * 0.1;
float tabelBredde = width * 0.9;
float tabelHøjde = height * 0.8;
float ANTAL_DAGE = 5;
float ANTAL_UGER = 52;
String[][] skema;
String[] dage = {"Mandag", "Tirsdag", "Onsdag", "Torsdag", "Fredag"};
int TIMER_PR_DAG = 8;
String[] timer = {"1", "2", "3", "4", "5", "6", "7", "8"};
float TOTAL_KOLONNER;


void setup() {
  fullScreen();
  TOTAL_KOLONNER = ANTAL_DAGE * TIMER_PR_DAG;
  skema = new String[int(ANTAL_UGER)][int(TOTAL_KOLONNER)];
  klasse1 = new Button(width-width/4, height-height/4, width/6, height/8, true, "Klasse1");
  klasse2 = new Button(width-width/4, height-height/4*2, width/6, height/8, true, "Klasse2");
  klasse3 = new Button(width-width/4, height-height/4*3, width/6, height/8, true, "Klasse3");
  seSkema = new Button(width/2-width/12, height/2, width/6, height/8, true, "Se Skema");
  inputData = new Button(width/2-width/12, int(height/1.25), width/6, height/8, true, "Input Data");
}

void draw() {
  background(240, 240, 240);

  if (tilstand == 0) {
    //main menu//
    fill(17, 24, 39);
    textSize(width/20);
    textAlign(CENTER);
    text("Vælg klasse og derefter kan deres skema ses", width/2, height/5);
    textSize(width/30);
    textAlign(CENTER, CENTER);
    fill(249, 115, 22);
    rect(width/16, height/4, width/3, height/3*2);
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
    background(240);

    float marginX = width * 0.03;
    float marginY = height * 0.1;

    float tabelBredde = width * 0.94;
    float tabelHøjde = height * 0.8;

    float celleBredde = tabelBredde / (TOTAL_KOLONNER + 1); // +1 = uge
    float celleHøjde = tabelHøjde / (ANTAL_UGER + 2);      // +2 = dag + time

    textAlign(CENTER, CENTER);
    textSize(celleHøjde * 0.4);

    // ---------- Øverste overskrift: DAGE ----------
    fill(200);
    rect(marginX, marginY, celleBredde, celleHøjde);

    fill(0);
    text("Uge", marginX + celleBredde / 2, marginY + celleHøjde / 2);

    for (int d = 0; d < ANTAL_DAGE; d++) {
      float x = marginX + (1 + d * TIMER_PR_DAG) * celleBredde;
      fill(180);
      rect(x, marginY, TIMER_PR_DAG * celleBredde, celleHøjde);
      fill(0);
      text(dage[d], x + (TIMER_PR_DAG * celleBredde) / 2, marginY + celleHøjde / 2);
    }

    // ---------- Anden overskrift: TIMER ----------
    for (int d = 0; d < ANTAL_DAGE; d++) {
      for (int t = 0; t < TIMER_PR_DAG; t++) {
        float x = marginX + (1 + d * TIMER_PR_DAG + t) * celleBredde;
        fill(220);
        rect(x, marginY + celleHøjde, celleBredde, celleHøjde);
        fill(0);
        text(timer[t], x + celleBredde / 2, marginY + 1.5 * celleHøjde);
      }
    }

    // ---------- Data-rækker (uger) ----------
    for (int u = 0; u < ANTAL_UGER; u++) {

      // Ugenummer
      fill(220);
      rect(marginX,
        marginY + (u + 2) * celleHøjde,
        celleBredde,
        celleHøjde);
      fill(0);
      text(u + 1,
        marginX + celleBredde / 2,
        marginY + (u + 2.5) * celleHøjde);

      // Skema-celler
      for (int k = 0; k < TOTAL_KOLONNER; k++) {
        float x = marginX + (k + 1) * celleBredde;
        float y = marginY + (u + 2) * celleHøjde;

        fill(255);
        rect(x, y, celleBredde, celleHøjde);

        fill(0);
        text(skema[u][k] == null ? "" : skema[u][k],
          x + celleBredde / 2,
          y + celleHøjde / 2);
      }
    }
    //skema view//
  } else if (tilstand == 2) {
    //input Data//
  }
}

void mousePressed() {
}
