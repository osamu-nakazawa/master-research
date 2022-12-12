import java.awt.Robot;
import java.awt.image.BufferedImage;
import java.awt.Rectangle;

import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;

Robot robot;
 
void setup() {
  size(600, 600);
  
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
  int i = 3;
  int img_width=200;
  int k = 0;
  int line_wid = 1;

  background(255);
  
  Rectangle r = new Rectangle(265, 157, 200, 200);
  BufferedImage img1_1 = robot.createScreenCapture(r);

  int l = 0;
  for(k=1; k < img_width/(line_wid*3); k++){
    PImage img2_1 = new PImage(img1_1);
    img2_1 = img2_1.get(l, 0, line_wid, 200);
    img2_1.resize(img2_1.width*i, img2_1.height*i);
    image(img2_1, l*i, 0);
    l+=line_wid*i;
  }

  
  Rectangle  s= new Rectangle(820,157, 200, 200);
  BufferedImage img1_2 = robot.createScreenCapture(s);
  
  int m = line_wid;
  for(k=1; k < img_width/(line_wid*3); k++){
    PImage img2_2 = new PImage(img1_2);
    img2_2 = img2_2.get(m, 0, line_wid, 200);
    img2_2.resize(img2_2.width*i, img2_2.height*i);
    image(img2_2, m*i, 0);
    m+=line_wid*i;
  }
  
  Rectangle  t= new Rectangle(815, 470, 200, 200);
  BufferedImage img1_3 = robot.createScreenCapture(t);
  
  int n = line_wid*2;
  for(k=1; k < img_width/(line_wid*3); k++){
    PImage img2_3 = new PImage(img1_3);
    img2_3 = img2_3.get(n, 0, line_wid, 200);
    img2_3.resize(img2_3.width*i, img2_3.height*i);
    image(img2_3, n*i, 0);
    n+=line_wid*i;
  }
 
 
  


  

  
  
  

    
    
    
  /*
  img2_2.resize(img2_2.width*i, img2_2.height*i);
  image(img2_2, 0, 0);
  
  img2_3.resize(img2_3.width*i, img2_3.height*i);
  image(img2_3, 0, 0);
  */
}
