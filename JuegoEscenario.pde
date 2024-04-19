private Bolsa bolsa;
private Fondo fondo;
private Sandwich sanwi;
private Nube nube;
import processing.sound.*;
SoundFile spi;
PImage ladrillo;

void setup(){
 size(500,500);
 spi= new SoundFile(this, "Spinetta-Jede.wav");
 spi.play();
 ladrillo= loadImage("ladrillo.png");
 fondo= new Fondo();
 fondo.posicion= new PVector(0,0);
 
 nube= new Nube(new PVector(width/2,(height/2-230)),new PVector(2,0));
 
 sanwi= new Sandwich();
 
 bolsa= new Bolsa();
 bolsa.setPosicion (new PVector(width/2, height-100));
 bolsa.setVelocidad (new PVector(10,0));
 
}
void draw(){ 
 tint(#F5A75E);
 fondo.dibujar();
 int linex=0;
 int distance=0;
 do{
    image(ladrillo, linex, 440);
    linex+=ladrillo.width + distance;
 }while (linex<width);
 noTint();
 nube.dibujar();
 nube.mover();
 sanwi.dibujar();
 sanwi.mover();
 bolsa.dibujar();
 
}

void keyPressed(){
 if(key=='d'){
   bolsa.mover(0);
 }
 if(key=='a'){
  bolsa.mover(1);
 }
}
