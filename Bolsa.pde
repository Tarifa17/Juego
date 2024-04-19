class Bolsa{
 private PVector posicion;
 private PImage imagen;
 private PVector velocidad;

public Bolsa(){
  imagen= loadImage("Bolsa.png");
}

public void dibujar(){
  imageMode(CENTER);
 image(imagen, posicion.x, posicion.y, 80,80); 
}
public void mover(int direccion){
  if(direccion==0){
    this.posicion.x+=this.velocidad.x;
}
  if(direccion==1){
    this.posicion.x-=this.velocidad.x;
  }
}
public PVector getPosicion(){
 return this.posicion; 
}
public void setPosicion(PVector posicion){
 this.posicion=posicion; 
}
public PVector getVelocidad(){
 return this.velocidad; 
}
public void setVelocidad(PVector velocidad){
 this.velocidad=velocidad; 
}
}
