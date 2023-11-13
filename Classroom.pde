

class classroom extends scenebackground{
  int chairHeight;
  classroom(){
    super();
    chairHeight = (int) ((1.0 / 15) * height);
  }
  void draw() {
    
    // angleMode(DEGREES);
    float a = atan2(mouseY - (135.0 / 400) * height, mouseX - (147.0 / 400) * width);

    background(#E5DEDE);
    bagianbelakang(a);
    //bagianbelakang
    noStroke();
    fill(#797877);
    stroke(0);
    quad(
      (3.0 / 4) * width,
      (1.0 / 3) * height,
      0,
      (1.0 / 4) * height,
      0,
      (18.0 / 30) * height,
      (3.0 / 4) * width,
      (3.0 / 5) * height
    );

    line((3.0 / 4) * width, (3.0 / 10) * height, 0, (1.0 / 6) * height);
    line((3.0 / 4) * width, (3.0 / 10) * height, width, (1.0 / 4) * height);
    line((3.0 / 4) * width, (3.0 / 10) * height, (3.0 / 4) * width, (2.0 / 3) * height);
    line((3.0 / 4) * width, (1.0 / 3) * height, 0, (1.0 / 4) * height);
    fill(120);
    quad(
      (1.0 / 3) * width,
      (28.9 / 100) * height,
      (1.0 / 3) * width,
      (11.0 / 20) * height,
      (12.0 / 30) * width,
      (11.0 / 20) * height,
      (12.0 / 30) * width,
      (29.6 / 100) * height
    );
    //endbagianbelakang

    //kursi
    kursi1();
    pushMatrix();
    translate(width / 2, height / 2);
    float k = 0;
    for (float i = 0; i < (6.0 / 40) * height; i += (1.0 / 40) * height) {
      fill(#502F05);

      triangle(
        (-1.0 / 7) * width + i + 1.5 * k,
        (1.0 / 50) * height + i + k,
        (-1.0 / 7) * width + (1.0 / 160) * width + i + 1.5 * k,
        (1.0 / 50) * height + 1.7 * chairHeight + i + k,
        (-1.0 / 7) * width - (1.0 / 160) * width + i + 1.5 * k,
        (1.0 / 50) * height + 1.5 * chairHeight + i + k
      );
      fill(#502F05);
      quad(
        (-1.0 / 6) * width + i + 1.5 * k,
        (1.0 / 60) * height + i + k,
        (-1.0 / 6) * width + i + 1.5 * k,
        (1.0 / 60) * height + chairHeight + i + k,
        (1.0 / 6) * width + i + 2 * k,
        chairHeight + i + k,
        (1.0 / 6) * width + i + 2 * k,
        0 + i + k
      );

      k += i * 0.2;
    }
    popMatrix();
    //end kursi

    //kursi2
    kursi2();
    pushMatrix();
    translate((1.0 / 30) * width, (16.0 / 30) * height);
    float l = 0;
    for (float i = 0; i < (6.0 / 40) * height; i += (1.0 / 40) * height) {
      quad(
        (-1.0 / 6) * width + i + 1.5 * l,
        (1.0 / 50) * height + i + l,
        (-1.0 / 6) * width + i + 1.5 * l,
        (1.0 / 50) * height + chairHeight + i + l,
        (1.0 / 6) * width + i + 1.5 * l,
        chairHeight + i + l,
        (1.0 / 6) * width + i + 1.5 * l,
        0 + i + l
      );

      l += i * 0.2;
    }
    popMatrix();

  //jam
    jam(a);
    pushMatrix();
    fill(#B7B3B3);
    translate((147.0 / 400) * width, (135.0 / 400) * height);
    ellipse(0, 0, 20, 20);
    rotate(a);
    line(0, 0, 6, 0);
    rotate(12 * a);
    rect(0, 0, 10, 0);
    popMatrix();
    //endjam
    
    // Jendela di sisi kiri
    jendela();
    pushMatrix();
    translate((23.0 / 30) * width, (10.0 / 30) * height);
    fill(157, 204, 224);
    stroke(255);
    quad(50, 87.5, 250, 50, 250, 250, 50, 212.5);
    
    stroke(255);
    strokeWeight(5);
    line(137.5, 87.5 - (87.5 * 75 / 400), 137.5, 212.5 + (87.5 * 75 / 400));
    line(50, 150, 250, 150);
    popMatrix();
    //endjendela
    
  }

  void bagianbelakang(float a){
    noStroke();
    fill(#797877);
    stroke(0);
    quad(
      (3.0 / 4) * width,
      (1.0 / 3) * height,
      0,
      (1.0 / 4) * height,
      0,
      (18.0 / 30) * height,
      (3.0 / 4) * width,
      (3.0 / 5) * height
    );

    line((3.0 / 4) * width, (3.0 / 10) * height, 0, (1.0 / 6) * height);
    line((3.0 / 4) * width, (3.0 / 10) * height, width, (1.0 / 4) * height);
    line((3.0 / 4) * width, (3.0 / 10) * height, (3.0 / 4) * width, (2.0 / 3) * height);
    line((3.0 / 4) * width, (1.0 / 3) * height, 0, (1.0 / 4) * height);
    fill(120);
    quad(
      (1.0 / 3) * width,
      (28.9 / 100) * height,
      (1.0 / 3) * width,
      (11.0 / 20) * height,
      (12.0 / 30) * width,
      (11.0 / 20) * height,
      (12.0 / 30) * width,
      (29.6 / 100) * height
    );
  }
  void kursi1(){
    pushMatrix();
    translate(width / 2, height / 2);
    float k = 0;
    for (float i = 0; i < (6.0 / 40) * height; i += (1.0 / 40) * height) {
      fill(#502F05);

      triangle(
        (-1.0 / 7) * width + i + 1.5 * k,
        (1.0 / 50) * height + i + k,
        (-1.0 / 7) * width + (1.0 / 160) * width + i + 1.5 * k,
        (1.0 / 50) * height + 1.7 * chairHeight + i + k,
        (-1.0 / 7) * width - (1.0 / 160) * width + i + 1.5 * k,
        (1.0 / 50) * height + 1.5 * chairHeight + i + k
      );
      fill(#502F05);
      quad(
        (-1.0 / 6) * width + i + 1.5 * k,
        (1.0 / 60) * height + i + k,
        (-1.0 / 6) * width + i + 1.5 * k,
        (1.0 / 60) * height + chairHeight + i + k,
        (1.0 / 6) * width + i + 2 * k,
        chairHeight + i + k,
        (1.0 / 6) * width + i + 2 * k,
        0 + i + k
      );

      k += i * 0.2;
    }
    popMatrix();
  }

  void kursi2(){
    pushMatrix();
    translate((1.0 / 30) * width, (16.0 / 30) * height);
    float l = 0;
    for (float i = 0; i < (6.0 / 40) * height; i += (1.0 / 40) * height) {
      quad(
        (-1.0 / 6) * width + i + 1.5 * l,
        (1.0 / 50) * height + i + l,
        (-1.0 / 6) * width + i + 1.5 * l,
        (1.0 / 50) * height + chairHeight + i + l,
        (1.0 / 6) * width + i + 1.5 * l,
        chairHeight + i + l,
        (1.0 / 6) * width + i + 1.5 * l,
        0 + i + l
      );

      l += i * 0.2;
    }
    popMatrix();
  }

  void jam(float a){
    pushMatrix();
    fill(#B7B3B3);
    translate((147.0 / 400) * width, (135.0 / 400) * height);
    ellipse(0, 0, 20, 20);
    rotate(a);
    line(0, 0, 6, 0);
    rotate(12 * a);
    rect(0, 0, 10, 0);
    popMatrix();
  }

  void jendela(){
    pushMatrix();
    translate((23.0 / 30) * width, (10.0 / 30) * height);
    fill(157, 204, 224);
    stroke(255);
    quad(50, 87.5, 250, 50, 250, 250, 50, 212.5);
    
    stroke(255);
    strokeWeight(5);
    line(137.5, 87.5 - (87.5 * 75 / 400), 137.5, 212.5 + (87.5 * 75 / 400));
    line(50, 150, 250, 150);
    popMatrix();
  }
}