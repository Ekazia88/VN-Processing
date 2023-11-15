class CreditScene {
  String[] credits;
  float creditY;
  boolean creditsDisplayed;
  boolean blinkVisible;
  int lastBlinkTime;

  CreditScene(String[] creditLines) {
    credits = creditLines;
    creditY = height; 
    creditsDisplayed = false;
    blinkVisible = true;
    lastBlinkTime = millis();
  }

  void display() {
    background(0); // Ganti dengan warna latar belakang yang diinginkan

    fill(255); // Ganti dengan warna teks yang diinginkan
    textSize(20);
    textAlign(CENTER);

    // Pindahkan teks kredit ke atas
    if (!creditsDisplayed) {
      for (int i = 0; i < credits.length; i++) {
        text(credits[i], width / 2, creditY + i * 30);
      }
      creditsDisplayed = true;
    } else {
      for (int i = 0; i < credits.length; i++) {
        text(credits[i], width / 2, creditY + (i * 30) + (credits.length * 30));
      }
    }

    // Pindahkan teks "Press any key to go back" ke atas dan lakukan efek kedip
    if (isFinished()) {
      if (millis() - lastBlinkTime > 500) {
        blinkVisible = !blinkVisible;
        lastBlinkTime = millis();
      }

      if (blinkVisible) {
        fill(255, 0, 0); // Ganti dengan warna teks yang diinginkan
        text("Press any key to go back", width - 150, height - 20);
      }
    }

    // Pindahkan teks kredit dan teks "Press any key to go back" ke atas
    creditY -= 1;
  }

  boolean isFinished() {
    return creditY + credits.length * 30 < 0;
  }
}

