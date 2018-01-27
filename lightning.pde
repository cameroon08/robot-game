class Lightning{
  Robot currentRobot;
  float xpos, ypos;
  float gravity = 10;
  PVector speed = new PVector(0,0);
  boolean onGround = true;
  Lightning(Robot currentRobot){
    this.currentRobot = currentRobot;
    xpos = currentRobot.xpos + 50;
    ypos = currentRobot.ypos - 20;
  }
  
  void move(char direction){
    switch(direction){
      case 'd':
      case 'D':
        speed.x = 10;
        break;
      case 'a':
      case 'A':
        speed.x -= 10;
        break;
      case 'w':
      case 'W':
        if(onGround){
          speed.y = 50;
          onGround = false;
        }
    }
  }
  void update(){
    xpos += speed.x;
    currentRobot.xpos += speed.x;
    speed.x = 0;
    if(!onGround){
      ypos -= speed.y;
      currentRobot.ypos -= speed.y;
      speed.y-=gravity;
    }
  }
}