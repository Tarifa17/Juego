class Sandwich{
 public PVector posicion;
 public PImage imagen;
 public PVector velocidad;
 boolean rebote= true;
 int variable=0;
  
public Sandwich(){
  imagen= loadImage("Sandwich.png");
  posicion = new PVector(width / 2, height / 2);
  velocidad = new PVector(3, 0);
}
/**public Sandwich(PVector posicion, PVector velocidad){
    this.posicion= posicion;
    this.velocidad= velocidad;
    this.imagen= loadImage("Sandwich.png");
  }*/
public void dibujar(){
  imageMode(CENTER);
  image(imagen,posicion.x,posicion.y,60,60);
}
public void mover(){
  if(rebote){
    posicion.x+=velocidad.x;
    
  if(posicion.x>=width){
    rebote=false;
  }
  }else{
   posicion.x-= velocidad.x;
  if(posicion.x<=0){
   rebote=true; 
  }
  }
}
}
