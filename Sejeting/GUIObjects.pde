// Parent to all the GUI objects

class GUIObjects {
  int xpos, ypos;                   // Position of GUI object
  int objectWidth, objectHeight;    // width and height of bar
  color objectGUIColor, objectGUIHighlight, objectGUIBorder;
  boolean mouseOver = false;
  int textSize = 24;
  String text = "";

  GUIObjects() {
    objectGUIColor = color(255, 255);             // (Grayscale, Opacity); Values are 0 to 255. Opacity is inverse transparency
    objectGUIHighlight = color(0, 255, 0, 255);   // (Red, Green, Blue, Opacity); Values are 0 to 255. Opacity is inverse transparency
    objectGUIBorder = color(160);                 // (Grayscale); Values are 0 to 255.
  }
  boolean overObject() {
    if (mouseX > xpos && mouseX < xpos + objectWidth &&
      mouseY > ypos && mouseY < ypos + objectHeight) {
      mouseOver = true;
      return true;
    } else {
      mouseOver = false;
      return false;
    }
  }
}
