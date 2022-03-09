void mouseReleased() {
if (mode==INTRO){
  mode=PLAY;
}else if (mode==PLAY){
  mode=GAMEOVER;
}void mouseReleased() {
  if (mode==INTRO) {
    mode=PLAY;
  } else if (mode==PLAY) {
    mode=GAMEOVER;
  } else if (mode==GAMEOVER) {
    mode=INTRO;
  }
}
}
