

class FrontSchool extends scenebackground{
PImage tree, pohon;
int hourFontSize = 25;
int minuteFontSize = 15;
    FrontSchool(){
        super();
        tree=loadImage("/Assets/items/tree.png");
        pohon=loadImage("/Assets/items/pohon.png");
    }
  void draw() {
    drawSky();
    drawBuildings();
    drawWindows();
    drawClock();
    drawBalcony();
    drawPillars();
    drawImages();
    drawDoors();
    drawHandles();
    drawFences();
    drawsun();
    drawClock();  // Pindahkan drawClock ke sini untuk menghindari kesalahan
  }
  void drawSky() {
    stroke(155, 190, 200);
    for (int x = 0; x <= 380; x++) {
      line(0, x, width, x);
    }
  }

  void drawsun(){
    // matahari
    fill(255, 255, 0);
    noStroke();
    ellipse(1253, 72, 100, 100);
  }

  void drawBuildings() {
    noStroke();
    // Gedung 1
    fill(218, 232, 231);
    rect(103, 164, 174, 217);

    // Gedung 2
    fill(218, 232, 231);
    rect(276, 98, 188, 283);

    // Gedung 4
    fill(218, 232, 231);
    rect(655, 98, 188, 283);

    // Gedung 5
    fill(218, 232, 231);
    rect(843, 164, 174, 217);

    // Gedung 3
    fill(242, 236, 190);
    rect(465, 38, 190, 345);
    fill(225, 199, 143);
    rect(640, 38, 15, 346);
    rect(465, 38, 15, 345);
  }
  void drawWindows(){
    stroke(5);
    //jendela kiri gedung 1
    fill (#E8F0EF);
    rect(124, 197, 50, 40);

    //jendela kiri gedung 1
    fill (#E8F0EF);
    rect(125, 262, 50, 40);

    //jendela kiri gedung 1
    fill (#E8F0EF);
    rect(200, 196, 50, 40);

    //jendela kanan gedung 1
    fill (#E8F0EF);
    rect(126, 335, 50, 40);
    //jendela kanan gedung 1
    fill (#E8F0EF);
    rect(202, 263, 50, 40);
    //jendela kanan gedung 1
    fill (#E8F0EF);
    rect(202, 335, 50, 40);

    //jendela kiri gedung 2
    fill (#E8F0EF);
    rect(315, 120, 50, 40);

    //jendela kiri gedung 2
    fill (#E8F0EF);
    rect(315, 186, 50, 40);


    //jendela kiri gedung 2
    fill (#E8F0EF);
    rect(315, 246, 50, 40);

    //jendela kiri gedung 2
    fill (#E8F0EF);
    rect(315, 312, 50, 40);

    //jendela kanan gedung 2
    fill (#E8F0EF);
    rect(402, 120, 50, 40);

    //jendela kanan gedung 2
    fill (#E8F0EF);
    rect(402, 186, 50, 40);

    //jendela kanan gedung 2
    fill (#E8F0EF);
    rect(402, 246, 50, 40);

    //jendela kanan gedung 2
    fill (#E8F0EF);
    rect(402, 312, 50, 40);



    //jendela kiri gedung 4
    fill (#E8F0EF);
    rect(666, 322, 50, 40);

    //jendela kiri gedung 4
    fill (#E8F0EF);
    rect(666, 255, 50, 40);

    //jendela kiri gedung 4
    fill (#E8F0EF);
    rect(666, 190, 50, 40);

    //jendela kiri gedung 4
    fill (#E8F0EF);
    rect(666, 120, 50, 40);


    //jendela kanan gedung 4
    fill (#E8F0EF);
    rect(761, 322, 50, 40);

    //jendela kanan gedung 4
    fill (#E8F0EF);
    rect(761, 255, 50, 40);

    //jendela kanan gedung 4
    fill (#E8F0EF);
    rect(761, 191, 50, 40);

    //jendela kanan gedung 4
    fill (#E8F0EF);
    rect(761, 121, 50, 40);


    //jendela kiri gedung 5
    fill (#E8F0EF);
    rect(857, 197, 50, 40);

    //jendela kiri gedung 5
    fill (#E8F0EF);
    rect(858, 262, 50, 40);

    //jendela kiri gedung 5
    fill (#E8F0EF);
    rect(859, 325, 50, 40);

    //jendela kiri gedung 5
    fill (#E8F0EF);
    rect(934, 196, 50, 40);

    //jendela kanan gedung 5
    fill (#E8F0EF);
    rect(933, 325, 50, 40);
    //jendela kanan gedung 5
    fill (#E8F0EF);
    rect(933, 260, 50, 40);
  }  

  void drawClock() {
    int h = hour();
    int m = minute();
    int s = second();

    fill(#D6C7AE);
    rect(504, 47, 106, 40);
    fill(0);
    textSize(hourFontSize);
    text(nf(h, 2) + ":" + nf(m, 2) + ":" + nf(s, 2), 515, 76);
  }

  void drawBalcony() {
    //balkon
    fill(#D7E5CA);
    rect(419, 179, 280, 10);
    fill(225, 199, 143);
    rect(666, 189, 23, 222);
    rect(431, 189, 23, 222);
    rect(412, 162, 295, 18);
  }

  void drawPillars() {
    fill (#E8F0EF);
    rect(267, 96, 14, 284);
    rect(266, 88, 199, 9);
    rect(102, 162, 14, 219);
    rect(88, 154, 180, 9);
    rect(655, 88, 189, 9);
    rect(828, 97, 14, 267);
    rect(1011, 163, 14, 219);
    rect(843, 155, 191, 9);
    
  }

  void drawImages() {
    image(tree, 45, 328);
    image(tree, 137, 373);
    image(tree, 264, 375);
    image(pohon, 740, 334);
    image(pohon, 816, 357);
    image(pohon, 928, 312);
    image(pohon, 958, 373);
  }
  void drawDoors() {
    // doors
    stroke(30);
    fill(#D7E5CA);
    rect(498, 227, 63, 154);
    rect(564, 227, 63, 154);
    noStroke();
  }

  void drawHandles() {
    fill(180);
    ellipse(574, 302, 8, 8);
    ellipse(546, 302, 8, 8);

    // pagar besi
    fill(147,147,147);
    rect(506, 555, 50, 10);
    rect(556, 555, 10, 690-555);
    rect(506, 690, 50, -10);
  }

  void drawFences() {
    // Pagar Bata1
    stroke(2);
    fill(229, 175, 146);
    rect(506, 527, -572, 162);
    fill(215, 227, 227);
    rect(524, 499, -562, 31);
    
    // Gambar garis horizontal untuk bagian pertama (Pagar Bata1)
    for (int y = 530; y <= 690; y += 20) {
      line(0, y, 505, y);
    }
    
    // Gambar garis vertikal untuk bagian pertama (Pagar Bata1)
    for (int x = 0; x <= 505; x += 40) {
      line(x, 530, x, 690);
    }

    // Periksa apakah Anda ingin menggambar bagian kedua (Pagar Bata kanan)
    boolean gambarPagarKanan = true; // Ganti dengan kondisi yang sesuai
    
    if (gambarPagarKanan) {
      stroke(2);
      fill(229, 175, 146);
      rect(1369, 527, -573, 162);
      fill(215, 227, 242);
      rect(1369, 499, -595, 31);
      fill(215, 227, 227);
      rect(524, 499, -553, 31);
    
      // Gambar garis horizontal untuk bagian kedua (Pagar Bata kanan)
      for (int y = 530; y <= 690; y += 20) {
        line(797, y, 1369, y);
      }
      
      // Gambar garis vertikal untuk bagian kedua (Pagar Bata kanan)
      for (int x = 796; x <= 1361; x += 40) {
        line(x, 530, x, 690);
      }
    }
  }
}
