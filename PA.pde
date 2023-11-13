import g4p_controls.*;
import processing.sound.*;
import ddf.minim.*;
Minim minim;
AudioPlayer BGMOP, BGM01,BGM02,BGM03,bell,door_open,door_close,alarm,ringtone_hp,calling,sadending,sadending2,happyending;


color btn_hover_red = color(255,0,0);
color btn_hover_black = color(0,200);
PFont customFont;
PFont defFont; 
Script game;
void setup() {
  hint(DISABLE_OPTIMIZED_STROKE);
  fullScreen(P3D);

  //font
  customFont = createFont("./Assets/Font/Longstory-7BrOl.ttf",32);
  defFont = createFont("Arial", 16);
  game = new Script();

  //sound 
  minim = new Minim(this);
  alarm = minim.loadFile("/Assets/music/sound_effect/alarm.mp3");
  BGMOP = minim.loadFile("/Assets/music/BGM/romance.mp3");
  ringtone_hp = minim.loadFile("/Assets/music/sound_effect/ringtonehp.mp3");
  calling = minim.loadFile("/Assets/music/sound_effect/calling.mp3");
  sadending = minim.loadFile("/Assets/music/sound_effect/sadending.mp3");
  bell = minim.loadFile("/Assets/music/sound_effect/bell_gerbang.mp3");
  sadending2 = minim.loadFile("/Assets/music/BGM/sadending.mp3");
  happyending = minim.loadFile("/Assets/music/BGM/Gotoubun no Hanayome OST - The Quintessential Quintuplets.mp3");

  game.bell = bell;
  game.sadending = sadending;
  game.BGMOP = BGMOP;
  game.alarm = alarm;
  game.ringtone_hp = ringtone_hp;
  game.calling = calling;
  game.sadending2 = sadending2;
  game.happyending = happyending;
}
void draw(){
   background(0);
    game.run();
}
