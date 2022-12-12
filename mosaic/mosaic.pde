import java.awt.Robot;
import java.awt.image.BufferedImage;
import java.awt.Rectangle;

import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;

Robot robot;

int[] a,b,c,d;



 
void setup() {
a = new int[150];
b = new int[150];
c = new int[150];
d = new int[150];
for (int x=0 ; x<150; x++){
    a[x] = int(random(21));
    b[x] = int(random(21));
    c[x] = int(random(21));
    d[x] = int(random(21));
}

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
  int pixel_wid = 10;
  int img_wid=200;

  background(255);
  
  Rectangle t= new Rectangle(815, 470, 200, 200);
  BufferedImage img1_3 = robot.createScreenCapture(t);
    PImage img2_3 = new PImage(img1_3);
    img2_3.resize(img2_3.width*i, img2_3.height*i);
    image(img2_3, 0, 0);
  
  Rectangle r = new Rectangle(265, 157, 200, 200);
  BufferedImage img1_1 = robot.createScreenCapture(r);
  
  for(int k=1; k < 150; k++){
    PImage img2_1 = new PImage(img1_1);
    
    
    img2_1 = img2_1.get(a[k]*pixel_wid, b[k]*pixel_wid, pixel_wid, pixel_wid);
    img2_1.resize(img2_1.width*i, img2_1.height*i);
    image(img2_1, a[k]*pixel_wid*i, b[k]*pixel_wid*i);
    
  }
 
 
  Rectangle  s= new Rectangle(820,157, 200, 200);
  BufferedImage img1_2 = robot.createScreenCapture(s);
  
  for(int k=1; k < 150; k++){
    PImage img2_2 = new PImage(img1_2);
    
    
    img2_2 = img2_2.get(c[k]*pixel_wid, d[k]*pixel_wid, pixel_wid, pixel_wid);
    img2_2.resize(img2_2.width*i, img2_2.height*i);
    image(img2_2, c[k]*pixel_wid*i, d[k]*pixel_wid*i);
    
  }
  
  
  
 
}
  



 

