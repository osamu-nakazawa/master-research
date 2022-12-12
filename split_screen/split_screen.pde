import java.awt.Robot;
import java.awt.image.BufferedImage;
import java.awt.Rectangle;

import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;

Robot robot;
 
void setup() {
  size(594, 450);
  
  //window size able to move
  frame.setResizable(true);
  frame.addComponentListener(new ComponentAdapter() {
    public void componentResized(ComponentEvent e) {
      if (e.getSource()==frame) {
        redraw();
      }
    }
  }
  );
  
  try {
    robot = new Robot();
  } 
  catch (Exception e) {
    println(e.getMessage());
  }
}
 
void draw() {
  background(2198);
  Rectangle r = new Rectangle(875, 590, 66, 50);
  BufferedImage img1_1 = robot.createScreenCapture(r);
  PImage img2_1 = new PImage(img1_1);
  
  Rectangle  s= new Rectangle(360, 220, 66, 50);
  BufferedImage img1_2 = robot.createScreenCapture(s);
  PImage img2_2 = new PImage(img1_2);
  
  Rectangle  t= new Rectangle(845, 530, 66, 50);
  BufferedImage img1_3 = robot.createScreenCapture(t);
  PImage img2_3 = new PImage(img1_3);
  
  Rectangle u = new Rectangle(300, 200, 66, 50);
  BufferedImage img1_4 = robot.createScreenCapture(u);
  PImage img2_4 = new PImage(img1_4);
  
  Rectangle  v= new Rectangle(905,220, 66, 50);
  BufferedImage img1_5 = robot.createScreenCapture(v);
  PImage img2_5 = new PImage(img1_5);
  
  Rectangle  w= new Rectangle(845, 220, 66, 50);
  BufferedImage img1_6 = robot.createScreenCapture(w);
  PImage img2_6 = new PImage(img1_6);
  
  Rectangle x = new Rectangle(875, 280, 66, 50);
  BufferedImage img1_7 = robot.createScreenCapture(x);
  PImage img2_7 = new PImage(img1_7);
  
  Rectangle  y= new Rectangle(905, 530, 66, 50);
  BufferedImage img1_8 = robot.createScreenCapture(y);
  PImage img2_8 = new PImage(img1_8);
  
  Rectangle  z= new Rectangle(330, 280, 66, 50);
  BufferedImage img1_9 = robot.createScreenCapture(z);
  PImage img2_9 = new PImage(img1_9);
  
  int i = 3;
  
  img2_1.resize(img2_1.width*i, img2_1.height*i);
  image(img2_1, 0, 0);
  
  img2_2.resize(img2_2.width*i, img2_2.height*i);
  image(img2_2, 198, 0);
  
  img2_3.resize(img2_3.width*i, img2_3.height*i);
  image(img2_3, 396, 0);
  
  img2_4.resize(img2_4.width*i, img2_4.height*i);
  image(img2_4, 0, 150);
  
  img2_5.resize(img2_5.width*i, img2_5.height*i);
  image(img2_5, 198, 150);
  
  img2_6.resize(img2_6.width*i, img2_6.height*i);
  image(img2_6, 396, 150);
  
  img2_7.resize(img2_7.width*i, img2_7.height*i);
  image(img2_7, 0, 300);
  
  img2_8.resize(img2_8.width*i, img2_8.height*i);
  image(img2_8, 198, 300);
  
  img2_9.resize(img2_9.width*i, img2_9.height*i);
  image(img2_9, 396, 300);
}
