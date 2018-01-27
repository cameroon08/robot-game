class Robot{
  float xpos, ypos;
  float x2, y2;
  Robot(float xpos, float ypos){
    this.xpos = xpos;
    this.ypos = ypos;
    x2 = this.xpos + 150;
    y2 = this.ypos + 150;
  }
}