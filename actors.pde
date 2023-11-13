class Actors {
    PVector pos;
    PGraphics pg;
    PImage img;
    String url;
    String name = "";
    String clothes = "";
    String ekspression = "";
    int counter = 0;
    color fontcolor;
    boolean alive;
    boolean hasSpoken = false;
    Actors(String _name,String _clothes,String _ekspression,color _fontColor){
        name = _name;
        clothes = _clothes;
        ekspression = _ekspression;
        fontcolor = _fontColor;
        url = "./Assets/Chara/" + _name + "/" + _name + "_"+ _clothes +"_"+ _ekspression +".png";
        img  = loadImage(url);
        pos = new PVector(width/2, height/2);
        pg = createGraphics(img.width, img.height, P2D);
        alive = true;
    }
    void setAlive(boolean status) {
        alive = status;
    }
     boolean hasSpoken() {
        return hasSpoken;
    }

    void setSpoken(boolean value) {
        hasSpoken = value;
    }
    void draw(){
        pg.beginDraw();
        pg.clear();
        pg.imageMode(CORNER);
        pg.image(img, 0, 0);
        pg.endDraw();
        imageMode(CENTER);
        image(pg, pos.x, pos.y);
    }
    boolean isAlive() {
        return alive;
    }
    void update(){
    }
    void run(){
        draw();
    }
        
}
    