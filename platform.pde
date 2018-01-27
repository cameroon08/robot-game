class platform{
  float xpos, ypos;
  PImage texture;
  float dim = 90;
  platform(float xpos,float ypos, PImage texture){
    this.xpos = xpos;
    this.ypos = ypos;
    this.texture = texture;
  }
  void show(){
    image(texture, xpos, ypos);
  }
  void collission(Lightning lightning){
    if(lightning.currentRobot.y2 >= ypos && lightning.currentRobot.x2 >=xpos && lightning.currentRobot.xpos < xpos + dim){
      lightning.onGround = true;
    }
  }
}