class Button{
    PVector Pos = new PVector(0,0);
    float Width=0;
    float Height = 0;
    String Label;
    color Btncolor;
    PFont font;
    int fontSize;
    boolean buttonWasReleased = false;
    Button(int x, int y, int w, int h,String label, color btncolor,PFont _font,int _fontSize){
        Pos.x = x;
        Pos.y = y;
        Width = w;
        Height = h;
        Label = label;
        Btncolor = btncolor;
        font =_font;
        fontSize = _fontSize;
    }
  boolean isMouseOver() {
    return mouseX >= Pos.x && mouseX <= Pos.x + Width && mouseY >= Pos.y && mouseY <= Pos.y + Height;
  }
  color getColor(){
    return Btncolor;
  }
  void setColor(color clr){
    Btncolor = clr;
  }
  void display(){
   fill(Btncolor);
    stroke(color(0));
    strokeWeight(5);
     
    rect(Pos.x, Pos.y, Width, Height);
    fill(255);
    textAlign(CENTER, CENTER); 
    textFont(font,fontSize);
    text(Label, Pos.x + (Width / 2), Pos.y + (Height / 2));
  }
  boolean isPressed(){
    if(!mousePressed){
        return false;
    }else if(mousePressed){
        return true;
    }
    return !mousePressed;
  }
  void setText(String txt){
    Label = txt;
  }
  String getLabel(){
    return Label;
  }
}