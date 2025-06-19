//Teselado utiliznado el dibujo de la de la flor 

//estas son las variables de las coordenadas que van a cambiar
int coordenadaX = 0;
int coordenadaY = 0;


void setup()
{
  size(800,800);
  coordenadaX = 0;
  coordenadaY = 0;
}

void draw()
{
  //El fondo es verde clarito
  background(#C7FFB7);
  
  noStroke();
  
  //esta es la funcion for
  //hace que se repita el dibujo de la flor horizontalmente hasta que llega al final y después repite lo mismo 100 pixeles mas abajo y asi susesivamente
  for(int i=0; i<900; i+=100)
  {
    for(int j=0; j<900; j+=100)
    {
      //Estos so los petalos
      fill(#CB523A);
      circle(i+28,j,45);
      circle(i-28,j,45);
      circle(i,j+28,45);
      circle(i,j-28,45);
      
      //Este es el centro de la flor
      fill(#F0E138);
      circle(i,j,30);
      fill(255);
      circle(i,j,15);
      
      //hojas verdes
      fill(10,255,10);
      ellipse(i+50,j+35,40,15);
      ellipse(i+50,j+50,50,20);
      ellipse(i+50,j+65,40,15);
      
      coordenadaX += 100;
      coordenadaY += 100;
    }
  }
}
