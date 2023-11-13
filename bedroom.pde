
class bedroom extends scenebackground{
    int time = 0;
    int totalTime = 50;
    // frameRate(30);
    int xPos = 200; // Person starting x pos.
    int yPos = 232; // Person starting y pos.
    Speaker speaker1 = new Speaker();
    TV tv1 = new TV();
    bedroom(){
        super();
    }
    void update(){
      super.update();
      if(!alive) counter =0;
    }
    void draw(){
       display();
    }
    void display(){
           background(111,71,45);
           pushMatrix();
    drawWall();
    drawFloor();
    speaker1.drawSpeakers();
    tv1.drawTv();
    drawTvStand();
    drawTime();
    popMatrix();
    }
    void drawTime() {
    time++;
        if (time > totalTime) {
        tv1.changeChannel(); 
            time = 0; 
        }
    }

    void mouseClicked() {
    tv1.tvOnOff();
    }


void drawWall() {
  
  fill(78,86,90); // wall
  rect(0, 0, width, 600);
  
  pushMatrix();
  translate(1400,100);
  noStroke(); 
  strokeWeight(1);
  fill(80,76,56); 
  rect(200, 200, 150, 300); 

  fill(202, 174, 153); 
  ellipse(230, 360, 20, 20); 
  popMatrix();
  
  // jendela
  
  pushMatrix();
  translate(1300, 1);
  scale(0.7);
  strokeWeight(2);
  fill(151,152,162);
  quad(123, 26, 515, 26, 519, 286, 127, 286);
  line(310, 26, 310, 292);
  line(128, 154, 518, 160);

  strokeWeight(1);
  fill(44,45,49);
  quad(122, 43, 122, 33, 515, 34, 514, 43);

  fill(41,43,62);
  beginShape();
  vertex(388, 26.9);
  vertex(478, 149.516);
  vertex(485, 164.09);
  vertex(400, 286.5);
  vertex(518, 287);
  vertex(515, 25);
  endShape(CLOSE);
  fill(0);
  quad(518, 151.523, 518, 167.74, 482, 169, 481, 153);
  fill(41,43,62);
  beginShape();
  vertex(250, 25.5);
  vertex(166, 155.1);
  vertex(167, 172.1);
  vertex(240, 288.24);
  vertex(128, 286);
  vertex(121, 25);
  endShape(CLOSE);
  fill(0);
  quad(126, 169.4, 167, 170.0, 167, 153.3, 125, 152.5);
  
  popMatrix();
  
  
  
  // poster
  pushMatrix();
  translate(-275,100);
  scale(2.5);
  fill(189, 76, 58);
  quad(225, 0, 225, 30, 280, 30, 280, 0);
  
  fill(84, 33, 24);
  textSize(12);
  textFont(createFont("Helvetica", 11));
  text("UP DOG", 232, 15);
  
   fill(54, 110, 50);
  quad(235, 40, 235, 100, 280, 100, 280, 40);
  
  fill(255, 255, 0);
  textSize(10);
  textFont(createFont("Helvetica", 8));
  text("Do not", 245, 55);
  text("be sorry", 243, 70);
  text("No Smoking", 236, 85);
  
  fill(54, 194, 180);
  quad(165, 60, 165, 100, 225, 100, 225, 60);

  fill(255, 255, 0);
  textSize(10);
  textFont(createFont("Helvetica", 10));
  text("Bee Cool", 174, 70);

  quad(183, 77, 183, 100, 213, 100, 213, 77);

  fill(0);
  quad(188, 82, 188, 90, 192, 90, 192, 82);
  quad(203, 82, 203, 90, 207, 90, 207, 82);
  
   fill(0);
  quad(170, 0, 170, 50, 215, 50, 215, 0);
  
  fill(247, 146, 212);
  textSize(25);
  textFont(createFont("Helvetica", 25));
  text("MH", 174, 30);
  
   fill(255);
  quad(115, 10, 115, 70, 155, 70, 155, 10);

  fill(8,245,255);
  arc(134, 29, 20, 10, radians(180), radians(0), OPEN);

  strokeWeight(1.5);
  line(123.5, 28, 123, 60);
  line(144, 28, 145, 60);

  strokeWeight(0);
  quad(123.5, 28, 144, 28, 145, 60, 123, 60);

  strokeWeight(1);
  arc(127, 59.5, 10, 15, radians(0), radians(180), OPEN);
  arc(141, 59.5, 10, 15, radians(0), radians(180), OPEN);

  fill(44, 77, 150);
  strokeWeight(1);
  arc(145, 35, 15, 8, radians(0), radians(360), CHORD);
  popMatrix();
}

void drawFloor() {
  translate(700,300);
}

void drawTvStand() {
  pushMatrix();
  translate(-2, 70);
  fill(76,76,82);
  rect(60, 130, 300, 90, 0);
  popMatrix();// tv stand
}


void drawCouch() {
  fill(67, 55, 44);
  rect(80, 250, 240, 110);// couch
  
    
}

class Channel {
  int R; 
  int G;
  int B;
  
  Channel(int tempR, int tempG, int tempB) {
    R = tempR;
    G = tempG;
    B = tempB;
  }

  void setR(int inputR) {
    R = inputR;
  }
  void setG(int inputG) {
    G = inputG;
  }
  void setB(int inputB) {
    B = inputB;
  }
  void drawScreen() {
    fill(R, G, B); 
    rect(30, -100, 350, 160, 5); //screen
  }
}

class Speaker {
  void drawSpeakers() {
   fill(45);
   pushMatrix();
   translate(-200,-100);
   noStroke();
   strokeWeight(5);
    rect(-50, 80, 150, 300, 5); //left speaker
    fill(216, 216, 216);
    ellipse(25, 150, 60, 60); // Tweeter
    ellipse(25, 300, 100, 100); //Woofer
    fill(20);
    ellipse(25, 300, 40, 40); // small woofer
    ellipse(25, 150, 30 ,30); //small tweeter
    popMatrix();
    
    pushMatrix();
    translate(-100,80); 
    fill(45);
    rect(20, 40, 60, 160, 5); //left speaker
    fill(216, 216, 216);
    ellipse(50, 80, 20, 20); // Tweeter
    ellipse(50, 145, 35, 35); //Woofer
    fill(20);
    ellipse(50, 145, 10, 10); // small woofer
    ellipse(50, 80, 5, 5); 
    popMatrix();
   
   
    pushMatrix();
    translate(550,-100);
    fill(45);
    rect(-50, 80, 150, 300, 5); //left speaker
    fill(216, 216, 216);
    ellipse(25, 150, 60, 60); // Tweeter
    ellipse(25, 300, 100, 100); //Woofer
    fill(20);
    ellipse(25, 300, 40, 40); // small woofer
    ellipse(25, 150, 30 ,30); //small tweeter
    popMatrix();
    
    pushMatrix();
    translate(400,80); 
    fill(45);
    rect(20, 40, 60, 160, 5); //left speaker
    fill(216, 216, 216);
    ellipse(50, 80, 20, 20); // Tweeter
    ellipse(50, 145, 35, 35); //Woofer
    fill(20);
    ellipse(50, 145, 10, 10); // small woofer
    ellipse(50, 80, 5, 5); 
    popMatrix();
  }
}  

class TV {
  Channel[] listOfChannels = new Channel[10];
  int currentChannel = 0;

  TV() {
    createChannels();
  }



  void drawTv() {
    pushMatrix();
    translate(1,100);
    fill(30);
    rect(1, -120, 400, 200, 15); // tv
    listOfChannels[currentChannel].drawScreen();
    popMatrix();
    
  //AMBAL LANTAI  
  pushMatrix();
  translate(-600,-160);
  noStroke();
  strokeWeight(1);
  scale(2.0);
  fill(72,58,28);
  quad(0, 265, 50, 400, 300, 400, 190, 265);
  popMatrix();
  
  //KARUR
  pushMatrix();
  translate(-900,200);
  noStroke();  
  fill(0);
  strokeWeight(4);                

  stroke(0);                    
  fill(36,35,35);                 
  rect(200, 0, 400, 150);     
  stroke(1);                      
  fill(350);                      
  strokeWeight(5); 
  fill(183,175,175);
  beginShape();                    
  vertex(200, 150);                
  vertex(0, 398);              
  vertex(800, 398);              
  vertex(600, 150);                 
  vertex(200, 150);               
  endShape(CLOSE);                

  ellipse(330, 150, 150, 50);      
  ellipse(490, 150, 150, 50); 
  popMatrix();
  
 // RAK BUKU
 stroke(0);
 strokeWeight(1); 
 pushMatrix();
 translate(450,-100);
  fill(99, 60, 14);
  rect(220, 100, 200, 300);

  // Rak buku bagian dalam
  fill(71, 44, 13);
  rect(230, 110, 180, 280);

  // Papan belakang rak buku
  fill(59, 34, 6);
  rect(260, 140, 120, 220);

  // Menggambar garis-garis
  line(230, 110, 260, 140);
  line(410, 110, 380, 140);
  line(230, 390, 260, 360);
  line(410, 390, 380, 360);

  // Menggambar rak
  // Rak atas
  fill(99, 60, 14);
  rect(230, 195, 180, 10);

  // Rak bawah
  fill(99, 60, 14);
  rect(230, 294, 180, 10);

  // Bagian bawah rak atas
  fill(92, 56, 13);
  beginShape();
  vertex(230, 206);
  vertex(261, 214);
  vertex(381, 214);
  vertex(410, 206);
  endShape();

  // Bagian atas rak bawah
  fill(92, 56, 13);
  beginShape();
  vertex(230, 294);
  vertex(260, 282);
  vertex(380, 282);
  vertex(410, 294);
  
  // BUKU di rak 1
  stroke(0);
  strokeWeight(2); 
  fill(162,113,113);
  rect(237,123,10,70);
  fill(74,149,110);
  rect(249,132,10,60);
  fill(74,95,149);
  rect(261,123,10,70);
  fill(193,21,21);
  rect(273,143,10,50);
  fill(255,255,77);
  rect(285,182,60,10);
  fill(72,72,68);
  rect(285,170,50,10);
  
  // Buku di rak 2
  stroke(0);
  strokeWeight(2); 
  fill(162,200,113);
  rect(237,223,10,70);
  fill(74,249,110);
  rect(249,232,10,60);
  fill(74,95,149);
  rect(261,223,20,70);
  fill(88,88,72);
  strokeWeight(1);
  ellipse(271, 280, 20 , 10); 
  stroke(0);
  strokeWeight(2);
  fill(208,209,133);
  rect(281,233,15,60);
  
  // piala
  pushMatrix();
  translate(-97,-358);
  fill(255, 255, 255, 120);
  stroke(0);
  strokeWeight(3);
  triangle(465, 520, 450, 490, 480, 490);
  triangle(465, 520, 450, 550, 480, 550);
  popMatrix();
  
  // kameera
  pushMatrix();
  translate(-100,-108);
  fill(175,175,165);  
  stroke(0);
  strokeWeight(4);
  rect(434, 364, 60, 36);
  rect(470, 350, 20, 12);
  strokeWeight(3);
  ellipse(464, 382, 20 , 20);
  fill(0);  
  ellipse(464, 382, 10, 10);
  ellipse(442, 360, 8, 3);
  popMatrix();
  popMatrix();
}
  
  void tvOnOff() { 
    if (currentChannel == 0) {
      currentChannel = 1;
    } 
    else {
      currentChannel = 0;
    }
  }
  void createChannels() {
    Channel off = new Channel(75, 75, 75);
    listOfChannels[0] = off;


    for (int i = 1; i < listOfChannels.length; i++) {
      Channel temp = new Channel((int)random(255), (int)random(255), (int)random(255));

      listOfChannels[i] = temp;
    }

  }

  void changeChannel() {
    if (currentChannel != 0) {
      currentChannel++;
      if(currentChannel == 10) {
        currentChannel = 1;  
      }
    }
  }
}


}