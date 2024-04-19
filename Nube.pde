class Nube{
 private PVector posicion;
 private PImage imagen;
 private PVector velocidad;
 
 public Nube(){
  imagen= loadImage("Brisa.png"); 
 }
 
 public Nube(PVector posicion, PVector velocidad){
  this.posicion=posicion;
  this.velocidad=velocidad;
  this.imagen= loadImage("Brisa.png");
 }
 
 public void dibujar(){
  image(imagen,posicion.x,posicion.y,60,60); 
 }
 
 public void mover(){
  if(this.posicion.x<=width+10){
   this.posicion.x+=this.velocidad.x; 
  }else{
   this.posicion.x=-50; 
  }
 }
 
}
