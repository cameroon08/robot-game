float xpos;
float ypos;
int dim = 90;
PImage background;
Lightning lightning;
Robot robot;
Animation animation1, animation2;
platform[] test = new platform[30] ;
PImage texture;
void setup() {
  fullScreen();
  background(255, 204, 0);
  frameRate(60);
  animation1 = new Animation("Robot/Lightning", 5, 150);
  animation2 = new Animation("Lightning/Lightning",200, 70);
  ypos = height * 0.25;
  translate(width/2, height/2);
  texture = loadImage("Metal.png");
  texture.resize(dim,dim);
  for(int i=0;i<test.length;i++){
    test[i] = new platform(i*dim,height-dim,texture);
    aBullet =new Bullet();
  }
  background = loadImage("2.png");
  background.resize(1920, 1280);
  robot = new Robot(200, 900);
  lightning = new Lightning(robot);
}

void draw() { 
  image(background,0,-200);
  for(int i=0;i<test.length;i++){
    test[i].show();
    test[i].collission(lightning);
    aBullet.simulate();
    aBullet.show();
  }
  animation1.display(robot.xpos, robot.ypos);
  animation2.display(lightning.xpos, lightning.ypos);
  if(keyPressed){
    lightning.move(key);
  }
  lightning.update();
}
