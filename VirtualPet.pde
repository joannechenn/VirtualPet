//arduino sample program
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(400, 400);
  arduino = new Arduino(this, Arduino.list()[1], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);
  int y = arduino.analogRead(5);
  System.out.println(y);
  
   //background sky & grass
   background(153, 204, 255);
   fill(102, 255, 102);
   noStroke();
   rect(0, 250, 400, 150);
        
   //tail
   strokeWeight(2);
   stroke(249, 162, 94, 255);
   fill(249, 162, 94, 255);
   beginShape();
   vertex(268, 230.5);
   vertex(369, 225);
   vertex(357, 270);
   vertex(268, 257);
   endShape(CLOSE);
   strokeWeight(1);
   stroke(233, 126, 31, 255);
   fill(249, 162, 94, 255);
   curve(268, 232, 268, 230, 370, 225, 370, 292);
   curve(315, 235, 370, 225, 357, 270, 305, 255);
   line(268, 257, 357, 270);
   stroke(249, 162, 94, 255);
   curve(299, 259, 268, 257, 357, 270, 363, 287);
   
   //right eye
   stroke(1, 0, 0, 255);
   fill(258, 255, 255);
   ellipse(55, 227, 38, 27); 
   fill(106, 50, 29, 255);
   ellipse(49, 227, 14, 12);
   fill(255, 255, 255);
   ellipse(47, 226, 3.25, 3.25);
   
   //front right leg
   stroke(0, 178, 177, 255);
   fill(0, 178, 177, 255);
   beginShape();
   vertex(104, 281);
   vertex(104, 308);
   vertex(94, 303);
   vertex(88, 281);
   endShape(CLOSE);
   beginShape();
   vertex(98, 303);
   vertex(89, 306);
   vertex(96, 312);
   vertex(104, 308);
   endShape(CLOSE); 
   stroke(0, 0, 0);
   line(104, 281, 104, 308);
   curve(102, 291, 88, 281, 94, 303, 102, 293);
   curve(93, 320, 89, 306, 98, 303, 94, 320);
   curve(130, 293, 89, 306, 96, 312, 130, 293);
   curve(99, 298, 96, 312, 104, 308, 100, 298);

   //body
   fill(0, 178, 177, 255);
   rect(58, 200, 210, 80);
   
   //left eye
   fill(255, 255, 255);
   ellipse(108, 232, 38, 27);
   fill(106, 50, 29, 255);
   ellipse(112, 230, 19, 14);
   fill(255, 255, 255);
   ellipse(116, 230, 4, 4);
   
   //back left foot/flipper
   strokeWeight(1.25);
   stroke(252, 177, 52, 255);
   fill(252, 177, 52, 255);
   beginShape();
   vertex(268, 309);
   vertex(274, 317);
   vertex(250, 325);
   endShape(CLOSE);
   beginShape();
   vertex(268, 309);
   vertex(250, 325);
   vertex(245, 319);
   endShape(CLOSE);
   beginShape();
   vertex(268, 309);
   vertex(245, 319);
   vertex(247, 314);
   endShape(CLOSE);
   stroke(224, 121, 30, 255);
   strokeWeight(1);
   curve(248, 326, 268, 309, 274, 317, 248, 323);
   curve(255, 302, 274, 317, 250, 325, 266, 299);
   curve(272, 308, 245, 319, 249, 323, 272, 310);
   curve(276, 317, 245, 319, 247, 314, 276, 316);
   curve(250, 318, 247, 314, 256, 311, 253, 318);
   
   //back left leg
   fill(0, 178, 177, 255);
   stroke(0, 178, 177, 255);
   beginShape();
   vertex(236, 257);
   vertex(268, 281);
   vertex(268, 313);
   vertex(260, 313);
   endShape(CLOSE);
   stroke(0, 0, 0);
   line(268, 281, 268, 313);
   curve(265, 288, 236, 257, 260, 313, 298, 305);
   curve(262, 305, 260, 313, 268, 313, 266, 305);
   
   //triangle part of beak
   noStroke();
   fill(252, 177, 52, 255);
   beginShape();
   vertex(72, 250);
   vertex(69, 281);
   vertex(111, 276);
   endShape(CLOSE);
   stroke(222, 123, 28, 255);
   line(72, 250, 69, 281);
   line(72, 250, 111, 276);
   
   //top park of beak
   strokeWeight(2);
   stroke(252, 177, 52, 255);
   beginShape();
   vertex(77, 271);
   vertex(36, 274);
   vertex(36, 281);
   vertex(75, 278);
   endShape(CLOSE);
   
   //bottom part of beak
   strokeWeight(1.5);
   stroke(252, 177, 52, 255);
   beginShape();
   vertex(63, 282);
   vertex(110.25, 275);
   vertex(110, 282);
   endShape(CLOSE);

   //beak outlining
   stroke(222, 123, 28, 255);
   strokeWeight(1);
   curve(63, 300, 77, 271, 36, 274, 54, 300);
   curve(68, 278, 36, 274, 36, 281, 76, 280);
   curve(47, 265, 36, 281, 75, 278, 60, 265);
   curve(83, 283, 75, 278, 97, 276, 88, 283);
   curve(95, 272, 111, 276, 110, 282, 95, 275);
   curve(88, 263, 63, 282, 110, 282, 98, 263);
   
   //front left leg
   stroke(0, 178, 177, 255);
   fill(0, 178, 177, 255);
   beginShape();
   vertex(147, 274);
   vertex(147, 315);
   vertex(136, 308);
   vertex(127, 274);
   endShape(CLOSE);
   beginShape();
   vertex(140, 310);
   vertex(130, 312);
   vertex(130, 318);
   vertex(147, 315);
   endShape(CLOSE);
   stroke(0, 0, 0);
   line(147, 274, 147, 315);
   curve(148, 286, 127, 274, 136, 309, 148, 296);
   curve(133, 325, 130, 312, 140, 310, 136, 325);
   curve(150, 316, 130, 312, 130, 318, 150, 317);
   curve(140, 300, 130, 318, 147, 315, 144, 300);
   
   //hairs
   stroke(0, 0, 0);
   noFill();
   curve(55, 196, 86, 206, 80, 177, 55, 186);
   curve(15, 200, 86, 206, 55, 170, 15, 198);
   curve(25, 210, 86, 206, 54, 186, 25, 210);
   
   //back right foot/flipper
   strokeWeight(1.25);
   stroke(252, 177, 52, 255);
   fill(252, 177, 52, 255);
   translate(-51, -12);
   beginShape();
   vertex(268, 309);
   vertex(274, 317);
   vertex(250, 325);
   endShape(CLOSE);
   beginShape();
   vertex(268, 309);
   vertex(250, 325);
   vertex(245, 319);
   endShape(CLOSE);
   beginShape();
   vertex(268, 309);
   vertex(245, 319);
   vertex(247, 314);
   endShape(CLOSE);
   stroke(224, 121, 30, 255);
   strokeWeight(1);
   curve(248, 326, 268, 309, 274, 317, 248, 323);
   curve(255, 302, 274, 317, 250, 325, 266, 299);
   curve(272, 308, 245, 319, 249, 323, 272, 310);
   curve(276, 317, 245, 319, 247, 314, 276, 316);
   curve(250, 318, 247, 314, 256, 311, 253, 318);
     
   //back right leg
   translate(51, 12);
   fill(0, 178, 177, 255);
   stroke(0, 178, 177, 255);
   beginShape();
   vertex(202, 280);
   vertex(220, 280);
   vertex(216, 302);
   vertex(208, 302);
   endShape(CLOSE);
   stroke(1, 0, 0, 255);
   line(220, 281, 216, 302); 
   curve(217, 282, 202, 281, 208, 302, 220, 284);
   curve(208, 283, 208, 302, 216, 302, 212, 283);
   line(220, 280, 202, 280);

}



