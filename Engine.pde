
class EngineVn{
    boolean hasPlayed = false;
    AudioPlayer BGMOP, alarm,ringtone_hp,calling,sadending,bell,sadending2,happyending;
    Button btnPlay,btnExit,btnch1,btnch2;
    int route = 0; 
    dialogue dialog;
    float rotationY = 0;
    scenebackground currScene;
    boolean isPlay = false;
    color fontColor = color(0);
    color btncolor = color(233, 184, 36);
    int chY = 400;
    int size;
    String text= "";
    ChoiceSlot btnChoice1;
    ChoiceSlot btnChoice2;
    FadeTransition transition;
    PFont FontArial, FontArialBold;
    ArrayList<scenebackground> scenes;
    int x = 0;
    LoadingPage loadingScreen;
    boolean keyPressedFlag;
    boolean keyPressedOnce = false;
    int counters = 0;
    int choice1 =0 ;
    int choice2 = 0;
    scenebackground bedroomScene;
    scenebackground classroomScene;
    scenebackground FrontSchoolScene;
    boolean changeRoute = false;
    ending end;
    boolean TheEnd = false;
    EngineVn(){
        loadingScreen = new LoadingPage();
        transition = new FadeTransition(300);
        FontArial = createFont("Arial",18);
        FontArialBold = createFont("Arial Bold",18);
        btnPlay = new Button(800, 400, 200, 50, "PLAY",btncolor,FontArial,18);
        btnExit = new Button(800,500,200,50, "EXIT",btncolor,FontArial,18);
        dialog = new dialogue();
        
        end = new ending();
        btnChoice1 = new ChoiceSlot(800, 400, 400, 50, text, 255, FontArial, 18,choice1);
        btnChoice2 = new ChoiceSlot(800, 460, 400, 50, text, 255, FontArial, 18, choice2);
        scenes = new ArrayList<scenebackground>();
        }
        void setupChara(){
        }
        void setupScene(){
        }
        void start(){

        }
        void gameplay(){

        }
    void draw(){
        switch(counters){
        case 0:
            x++;
            background(255);
            // tstbtn.draw();
            btnPlay.display();
            btnExit.display();
            Opening_Text();
            buttonHover();
            btnclik();
            if(x==1){
            BGMOP.play();
            BGMOP.loop();
        }
        break;
        case 1:
        BGMOP.close();
             if(!loadingScreen.selesai){
                loadingScreen.update();
                if(keyPressed && loadingScreen.showAllCharacters){
                    loadingScreen.handlepress();
                    counters = 2;
                }
             }
            break;
        case 2:
               if (currScene != null && loadingScreen.selesai == true) {
                    currScene.run();
                    for (int j=0; j<currScene.act.size(); j++) {
                        Actors a = currScene.act.get(j);
                        if(a != null){
                            if(a.hasSpoken()){
                            a.pos = currScene.pos.get(j);
                            a.run();
                            }
                        }
                    }
                    if (dialog.choiceBlock) {
                                btnChoice1.display();
                                btnChoice2.display();
                                buttonHover(btnChoice2);
                                buttonHover(btnChoice1);
                                handleChoice(btnChoice2.getSelectedChoice(),btnChoice1.getSelectedChoice());
                            }
                dialog.draw();
                if(keyPressed){
                    if(key ==' '){
                    dialog.advance();
                    }
                }
                if(TheEnd){
                    counters = 3;
                }
                }
                 break;
            case 3:
            end.draw();
            break;
            }
            }         
    void run(){
        gameplay();
        draw();
    }
    void handleChoice(int choice2,int choice1) {
        if(btnChoice1.isMouseOver() && btnChoice1.isPressed()){
                dialog.currScene.counter = choice1;
        }
        if(btnChoice2.isMouseOver() && btnChoice2.isPressed()){
            dialog.currScene.counter = choice2;
        }
    }
    void Opening_Text(){
        fill(0);
        pushMatrix();

      translate(959, 265, 0);
   float deltaRotationY = (mouseX - pmouseX) * 0.01;
  rotationY = constrain(rotationY + deltaRotationY, -radians(45), radians(45));
  rotateY(rotationY);
  fill(0);
  box(631, 101, 10);

  fill(200); 
  textFont(defFont, 10);
  text("KITAGAMES PRESENT", -234, -16, 5); 
  

  fill(200);
  textFont(customFont, 50);
  text("The Love Story of ANTO", -1, 24, 5);
        popMatrix();
    }
    void btnclik(){
        if(btnPlay.isMouseOver() && btnPlay.isPressed()){
           counters = 1;
        }
        if(btnExit.isMouseOver() && btnExit.isPressed()){
            exit();
        }
    }
    void buttonHover(){
        
        if (btnPlay.isMouseOver()) {
            btnPlay.setColor(btn_hover_red); // Change the button color
        } else {
            btnPlay.setColor(btncolor); // Reset the button color
        }  if (btnExit.isMouseOver()) {
            btnExit.setColor(btn_hover_red); // Change the button color
        } else {
            btnExit.setColor(btncolor); // Reset the button color
        }
}
    void buttonHover(ChoiceSlot btn){
        if (btn.isMouseOver()) {
            btn.setColor(btn_hover_red); // Change the button color
        } else {
            btn.setColor(btn_hover_black); // Reset the button color
        }
    }
void gotoScene(scenebackground scene) {
        currScene = scene;
        currScene.counter = 0;
     for(int j=0; j<scene.act.size(); j++){
        
        scenebackground scn = currScene;
        Actors actr = scn.act.get(j);
        println(actr);
        if(actr != null){
            actr.setSpoken(false);
             actr.setAlive(true);
            if(actr.isAlive()){
                scn.markTime = millis();
                dialog.currScene = scn;  
            }
            for (int i=0; i<dialog.slt.length; i++) {
                dialog.slt[i].txt = "";
            }
            
            }
            
         dialog.currScene.counter = currScene.counter;
    }
}
void speak(String txt) {
    dialog.choiceBlock = false;
    dialog.slt[0].fontColor = dialog.defaultFontColor;
    dialog.slt[0].txt = txt;

}
void speak1(String txt) {
    dialog.choiceBlock = false;
    dialog.slt[1].fontColor = dialog.defaultFontColor;
    dialog.slt[1].txt = txt;

}
void speak(Actors a, String txt) {
    dialog.choiceBlock = false;
    if(!a.hasSpoken()) a.setSpoken(true);
    int index = 0;
    if (dialog.currScene.act.size() > 1) {
      for (int i=0; i<dialog.currScene.act.size(); i++) {
        if (a == dialog.currScene.act.get(i)) {
            
            index = 0;
            break;
        }
      }
    }

    dialog.slt[index].fontColor = a.fontcolor;
    dialog.slt[index].txt = a.name + ": " + txt;
}
boolean isPressed(){
    if(!mousePressed){
        return false;
    }else if(mousePressed){
        return true;
    }
    return !mousePressed;
  }
}
