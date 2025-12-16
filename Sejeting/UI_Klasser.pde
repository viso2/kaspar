class Button extends GUIObjects {
  boolean buttonPressed = false;
  boolean selected = false; // Added selected attribute
  color Tekst = color(0, 0, 0);
  byte radii = 0;  // 0 for not rounded corners. Else it is the radius of the rounded corner
  int index; // Index of the ingredient in its category
  boolean Selectable = false;
  String tekst = "";

  Button() {
    super();          // Call GUIObjects()
    objectWidth = 20;
    objectHeight = 20;
    xpos = 10;
    ypos = 10;
  }
  Button(int xp, int yp, int ow, int oh) {
    super();
    objectWidth = ow;
    objectHeight = oh;
    xpos = xp;
    ypos = yp;
  }
  Button(int xp, int yp, int ow, int oh, byte tr) {
    super();
    objectWidth = ow;
    objectHeight = oh;
    xpos = xp;
    ypos = yp;
    radii = tr;
  }

  Button(int xp, int yp, int ow, int oh, boolean sl, String txt) {
    super();
    objectWidth = ow;
    objectHeight = oh;
    xpos = xp;
    ypos = yp;
    Selectable = sl;
    tekst = txt;
  }

  void display() {
    if (overObject()) {
      if (mousePressed && !buttonPressed) {
        buttonPressed = true;
        toggleSelection(); // Toggle selected state
      }
    }

    if (!mousePressed) {
      buttonPressed = false;
    }
    if (Selectable) {
      if (selected) {
        drawCheckmark();
      } else {
        // Clear the area where the checkmark would be
        fill(37, 99, 235);
        noStroke();
        rect(xpos+1, ypos+1, objectWidth-2, objectHeight-2);
      }
    }
    fill(17,24,39);
    text(tekst,xpos,ypos,objectWidth,objectHeight);
  }

  void drawCheckmark() {
    fill(255);
    textAlign(CENTER, CENTER);

  }

  boolean isSelected() {
    return selected;
  }

  void toggleSelection() {
    selected = !selected;
    println(selected);
  }
}
