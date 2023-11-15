class dialogue{
    PFont defaultFont;
    int defaultFontSize;
    color defaultFontColor;
    dialogslot[] slt = new dialogslot[10];
    int dialogueHeight;
    int delayTime = 5500;
    scenebackground currScene;
    boolean finished = false;
    boolean choiceBlock = false;
    boolean sceneUpdate = false;
    dialogue(){
        defaultFontSize = 28;
        dialogueHeight = int(defaultFontSize * 10.5);
        defaultFont = createFont("Arial", defaultFontSize);
        defaultFontColor = color(255);
        for  (int i=0; i<slt.length; i++) {
            slt[i] = new dialogslot(i, defaultFont, defaultFontSize, defaultFontColor, dialogueHeight);
        }
    }
        void draw(){
            fill(0, 200);
            noStroke();
            textFont(defaultFont,20);
        
            rect(0, height-dialogueHeight, width, height);
            fill(0);
           
            stroke(255);
            strokeWeight(2);
            line(0, height-dialogueHeight, width, height-dialogueHeight);
            stroke(255, 63);
            strokeWeight(6);
            line(0, height-dialogueHeight, width, height-dialogueHeight);
            if (millis() > currScene.markTime + delayTime) {
            finished = true;
            for (int i=0; i<slt.length; i++) {
               if (i==0 || slt[i-1].finished) slt[i].run();
                if (!slt[i].finished) finished = false;
            }
        }
        }
        void advance() {
            if (finished && !choiceBlock ){          
            currScene.counter++;
             for (int i = 0; i < slt.length; i++) {
              
                slt[i].clrtext(); // Add this line to clear the text in each dialog slot
            }
            }
        }
}
class dialogslot{
    PFont font;
    int fontsize;
    color fontColor;
    String txt = "";
    String txtP ="";
    String txtD ="";
    int index;
    int dialogueHeight;
    boolean finished = false;
    dialogslot(int _index,PFont _font, int _fontSize,color _fontColor,int dialogueHeight){
        index = _index;
        font = _font;
        fontsize = _fontSize;
        fontColor = _fontColor;
        dialogueHeight = dialogueHeight;
    }
    void clrtext(){
      txtD = "";
    }
   void run() {
    if (!txtP.equals(txt)) {
      txtD = "";
      finished = false;
    }
    
    if (!finished && txtD.length() < txt.length()) {
      txtD += txt.charAt(txtD.length());
    } else if (txtD.length() == txt.length()) {
      finished = true;
    }
   
    textFont(font, fontsize);
    textAlign(CENTER);
    int x = width/2;
    int y = height-(dialogueHeight-(fontsize*(2+(index*2))));
    fill(fontColor);
    text(txtD, x-50 , y-200);
    fill(fontColor);   
    text(txtD, x, y);
    fill(fontColor);
    text(txtD, x-1, y-2);
    txtP = txt;
  }
}
class ChoiceSlot {
    PVector Pos = new PVector(0,0);
    PFont font;
    int fontSize;
    color fontColor;
    String Label;
    int x;
    int y;
    int Width;
    int Height;
    int selectedChoice;

    ChoiceSlot(int x, int y, int w, int h,String label, color btncolor,PFont _font,int _fontSize,int _selectedChoice){
        Pos.x = x;
        Pos.y = y;
        Width = w;
        Height = h;
        Label = label;
        fontColor = btncolor;
        font =_font;
        fontSize = _fontSize;
        selectedChoice = _selectedChoice;
    }
    boolean isMouseOver() {
      return mouseX >= Pos.x && mouseX <= Pos.x + Width && mouseY >= Pos.y && mouseY <= Pos.y + Height;
    }
    void display() {

            fill(fontColor);
            rect(Pos.x, Pos.y, Width, Height);
            textAlign(CENTER, CENTER); // Center the text horizontally and vertically
            fill(255);
            textFont(font,fontSize);
            text(Label, Pos.x + (Width / 2), Pos.y + (Height / 2)); // Draw text at the center of the button
    }
    void setColor(color clr){
      fontColor = clr;
    }
    int getSelectedChoice(){
      return selectedChoice;
    }
    boolean isPressed(){
    if(!mousePressed){
        return false;
    }else if(mousePressed){
        return true;
    }
    return !mousePressed;
  }
  String getLabel(){
    return Label;
  }
  void setselectedChoice(int newselectedChoice) {
      selectedChoice = newselectedChoice;
  }
  void setLabel(String label){
    Label =label;
  }
}
