class Fondo{
  private PVector posicion;
  private PImage imagen;
  
  public Fondo(){
    imagen= loadImage("Super.png");
  }
  
  public void dibujar(){
    imageMode(CORNER);
   image(imagen,posicion.x,posicion.y,500,500); 
  }
}
