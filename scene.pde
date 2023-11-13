class scenebackground{
    ArrayList<Actors> act;
    ArrayList<PVector> pos;
    int counter = 0;
    int markTime = 0;
    String monologue;
    boolean alive = false;
    int fadeDelta = 5;
     int alpha = 255; // Nilai alpha awal (sepenuhnya terlihat)
  boolean isTransitioning = false;
    scenebackground(){
    act = new ArrayList<Actors>();
    pos = new ArrayList<PVector>();
    counter = 0;
    alive =true;
    }
    void draw(){
    }
    void addActor(Actors a,float x, float y){
        act.add(a);
        pos.add(new PVector(x, y));
    }
    void update() {
        fader();
        for (Actors actor : act) {
            actor.setAlive(true);
            if (!actor.isAlive()) {
                counter = 0;
            }
        }
  }

   void fader() {
    if (alive && alpha < 255) {
       
      alpha += fadeDelta;
      if (alpha > 255) alpha = 255;
    } else if (!alive && alpha > 0) {
      alpha -= fadeDelta;
      if (alpha < 0) alpha = 0;
    }
  }
  void run (){
    update();
    draw();
  }
}

class LoadingScreen {
  int x, y; // Koordinat loading screen
  int w, h; // Ukuran loading screen
  int loadingProgress; // Progress loading
  PFont font; // Font teks
  boolean isLoadingComplete = false; 
  LoadingScreen(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.loadingProgress = 0;
    this.font = createFont("Arial", 24); // Ganti font sesuai keinginan
  }

  void draw() {
    background(0);
    // Gambar latar belakang loading screen
    fill(0, 200);
    rect(x, y, w, h);

    // Gambar progress loading
    fill(255);
    rect(x + 10, y + h / 2 - 15, map(loadingProgress, 0, 100, 0, w - 20), 30);

    // Tampilkan teks progress
    textFont(font);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Loading: " + loadingProgress + "%", x + w / 2, y + h / 2);

    // Ini adalah contoh pengisian progress secara acak (gantilah ini sesuai dengan cara Anda mengukur progress loading)
    loadingProgress += 1;
    if (loadingProgress > 100) {
      loadingProgress = 100;
    }
  }

  boolean isLoadingComplete() {
    // Gantilah ini dengan logika sebenarnya untuk memeriksa apakah loading sudah selesai
    return loadingProgress == 100;
  }
}
class transisi {
  PGraphics bg;
  boolean transitionInProgress = true;
    int transitionFrame = 0;
    int totalTransitionFrames = 10 * 30;

    void draw(){

    }
}

class FadeTransition {
  boolean transitionInProgress = false;
  int transitionFrame = 0;
  int totalTransitionFrames;
  color fromColor;
  color toColor;
  int rectX;
  int rectY;
  int rectWidth;
  int rectHeight;

  FadeTransition(int totalFrames) {
    totalTransitionFrames = totalFrames;
    fromColor = color(0, 0); // Warna awal (transparan)
    toColor = color(0, 255); // Warna tujuan (hitam)
    rectX = 0;
    rectY = 0;
    rectWidth = width;
    rectHeight = height;
  }

  void startTransition() {
    transitionInProgress = true;
    transitionFrame = 0;
  }

  void update() {
    if (transitionInProgress) {
      color currentColor = lerpColor(fromColor, toColor, float(transitionFrame) / totalTransitionFrames);
      fill(currentColor);
      tint(255, totalTransitionFrames);
      rect(rectX, rectY, rectWidth, rectHeight);

      transitionFrame++;

      // Selesai dengan transisi setelah jumlah frame yang diperlukan
      if (transitionFrame >= totalTransitionFrames) {
        transitionInProgress = false;
      }
    }
  }

  boolean isTransitionInProgress() {
    return transitionInProgress;
  }
}

class CharacterInfo {
  char karakter;
  float x;
  float y;

  CharacterInfo(char karakter, float x, float y) {
    this.karakter = karakter;
    this.x = x;
    this.y = y;
  }
}
class LoadingPage {
   String teksTampil = "Now Loading.....";
  int indeksKarakter = 0;
  float x;
  float y;
      FadeTransition transition;
  ArrayList<CharacterInfo> characters;
  int frameMuncul = 10; // Ubah nilai ini untuk mengontrol kecepatan munculnya karakter.
  int delayAntarKarakter = 10; // Delay antara karakter dalam milidetik.
  int loopCounter = 0;
  boolean showPressAnyButton = false;
  boolean loadingSelesai = false;
  int waktuMulaiLoading;
  int delayLoading = 3000; // Delay loading dalam milidetik (5 detik).
boolean showAllCharacters = false;
boolean selesai = false;

  LoadingPage() {
    characters = new ArrayList<CharacterInfo>();
    textSize(32);
    x = width / 2;
    y = height / 2;
    frameRate(30); // Atur kecepatan bingkai ke 30 bps.
    fill(0); // Warna latar belakang hitam
    background(0); // Mengatur latar belakang hitam
    fill(255); // Warna teks putih
    waktuMulaiLoading = millis();
  }

   void update() {
    background(0);

    if (!loadingSelesai) {
      if (millis() - waktuMulaiLoading >= delayLoading) {
        loadingSelesai = true;
      }else{
      }
      return;
    }
    if (showAllCharacters == false) {
      if (indeksKarakter < teksTampil.length() && frameCount % frameMuncul == 0) {
        char karakterSaatIni = teksTampil.charAt(indeksKarakter);
        characters.add(new CharacterInfo(karakterSaatIni, x, y));
        indeksKarakter++;
        x += textWidth(karakterSaatIni);
      }

      for (CharacterInfo charInfo : characters) {
        textFont(customFont, 32);
        text(charInfo.karakter, charInfo.x, charInfo.y);
      }

      if (indeksKarakter == teksTampil.length() ) {
        indeksKarakter = 0;
        x = width / 2;
        characters.clear();
        loopCounter++;
        if (loopCounter >= 5) {
          showAllCharacters = true;
        }
      }
    } else {
      // Tampilkan semua karakter
      textFont(customFont, 32);
      text(teksTampil, width / 2, height / 2);
      textAlign(RIGHT);
      textFont(defFont,28);
      text("Press any key to start", width - 10, height - 10);
    }
  }
  void handlepress() {
        loadingSelesai = false;
        loopCounter = 0;
        waktuMulaiLoading = millis();
        showPressAnyButton = false;
        selesai = true;
  }
}
class ending {
  int alphaValue = 0;
  void draw(){
    background(0);
    textFont(customFont,30);
     textAlign(CENTER, CENTER);
     fill(255,255,255, alphaValue);
    text("THE END",width/2,height/2);
    
    if(alphaValue < 255){
      alphaValue += 2;
    }else if (alphaValue == 255) {
      text("Press esc to exit", width - 10, height - 10);
    }
  }
}