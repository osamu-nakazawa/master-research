import java.awt.Robot;
import java.awt.image.BufferedImage;
import java.awt.Rectangle;

import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;

Robot robot;
 
void setup() {
  size(600, 450);
  
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
  background(255);
  Rectangle r = new Rectangle(230, 157, 200, 200);
  BufferedImage img1_1 = robot.createScreenCapture(r);
  PImage img2_1 = new PImage(img1_1);
  
  Rectangle  s= new Rectangle(857,157, 200, 200);
  BufferedImage img1_2 = robot.createScreenCapture(s);
  PImage img2_2 = new PImage(img1_2);
  
  Rectangle  t= new Rectangle(543, 510, 200, 200);
  BufferedImage img1_3 = robot.createScreenCapture(t);
  PImage img2_3 = new PImage(img1_3);
  
  int i = 3;
  
  img2_1.resize(img2_1.width*i, img2_1.height*i);
  tint(255, 255, 255, 100);
  image(img2_1, 0, 0);
  
  img2_2.resize(img2_2.width*i, img2_2.height*i);
  tint(255, 255, 255, 100);
  image(img2_2, 0, 0);
  
  img2_3.resize(img2_3.width*i, img2_3.height*i);
  tint(255, 255, 255, 100);
  image(img2_3, 0, 0);
}
