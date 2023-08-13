//https://youtu.be/2fT6pg4mpvM

int c = 15;
int estado;
boolean dentroboton1, dentroboton2;
PImage [] imagen = new PImage [c];
String [] textos = new String [c];

void setup () {
  
  size (600, 600);
  
  estado = 0;
  
  //botones 
  
  dentroboton1 = mouseX > 400 && mouseX < 500 && mouseY > 400 &&  mouseY< 440;
  dentroboton2 = mouseX > 200 && mouseX < 300 && mouseY > 400 &&  mouseY< 440;

  // imágenes
  for (int i = 0; i < c; i++ ) {
    imagen[i] = loadImage ("imagen" + i + ".jpg");
  }
  
  // textos
  textSize(15);
  textos [0] = "Orgullo y Prejucio \n Escrita por: Jane Austen";  
  textos [1] = "Hace mucho tiempo, en una zona rural de Inglaterra, \n dos caballeros solteros de la clase alta llegaron al pueblo. " ;
  textos [2] = "Allí vivia la familia Bennet, con 5 hermosas hijas. \n La madre al enterarse de la noticia de estos caballeros \n ve la oportunidad de casarlas con alguno de ellos, por lo que le pide a su \n esposo las presente ante ellos. " ;
  textos [3] = "Al dia siguiente se realiza un baile, donde el padre pudo invitar \n a estos caballeros y ellos asistieron y se presentaron frente a todos.";
  textos [4] = "A lo largo del baile, una de las hermanas llama la atención de uno de ellos \n pero la protagonista Jane, es insultada por su simplesa por el protagonista, Darcy.";
  textos [5] = "Jane se aleja y se va del baile, ofendida por sus palabras, \n decide ignorarlo.";
  textos [6] = "Pasan los dias y Jane reflexiona sobre las palabras que escucho y \n piensa que quizas nunca podra conseguir esposo.";
  textos [7] = "La situación hace que caiga en un pozo depresivo y se suicida.";
  textos [8] = "Pasan los dias y Darcy se da cuenta que talvez si estaba algo interesado por Jane por lo que, decide buscarla e intentar que se enamore de él \n en algun otro baile o paseos por los campos.";
  textos [9] = "Jane ante sus intentos por conquistarla, comiena a enamorarse de él." ;
  textos [10] = "Darcy decide dar un paso más e intenta pedir la mano de Jane a su padre." ;
  textos [11] = "Su padre acepta y entrega a Jane para que se case con Darcy." ;
  textos [12] = "El padre de Jane se niega al compromiso y le pide a su hija que \n se aleje de él lo antes posible.";
  textos [13] = "Jane reconsidera sus sentimientos y se pone deacuerdo con su padre y promete olvidarse de él.";
  textos [14] = "Creditos: \n\n Nombre: Rocio Alderete Ramos \n Legajo: 93053/4 \n Autor: Jane Austen ";
}

void draw () {
  
  println(estado);

  switch(estado) {
  case 0: 
    pushStyle();
    image (imagen[0], 0, 0, 600, 600);
    pushStyle();
    textSize(25);
    fill(88, 137, 94);
    text( textos[0], 20, 50 );
    popStyle();
    botones1( color(255), color (88, 137, 94), 400, 400, 100, 40, "Comenzar", 415, 425 );
    popStyle();

    break;
  case 1: 
    pushStyle();
    image(imagen[1], 0, 0, 600, 600);
    text( textos[1], 100, 45 );
    botones1( color(255), color (88, 137, 94), 400, 400, 100, 40, "Siguiente", 415, 425 );
    popStyle();

    break;
  case 2:
    pushStyle();
    image(imagen[2], 0, 0, 600, 600 );
    text( textos[2], 20, 45);
    botones1( color(255), color (88, 137, 94), 400, 400, 100, 40, "Siguiente", 415, 425 );
    popStyle();

    break;
  case 3:
    pushStyle();

    image(imagen[3], 0, 0, 600, 600 );
    text( textos[3], 20, 75);
    botones1( color(255), color (88, 137, 94), 400, 400, 100, 40, "Siguiente", 415, 425 );
    popStyle();

    break;
  case 4:
    pushStyle();

    image(imagen[4], 0, 0, 600, 600 );
    text( textos[4], 10, 25, 400, 200);
    botones1 (color(255), color (88, 137, 94), 400, 400, 100, 40, "Siguiente", 415, 425 );
    popStyle();

    break;
  case 5:
    pushStyle();

    image(imagen[5], 0, 0, 600, 600 );
    text( textos[5], 20, 50 );
    botones2 (color (255), color (88, 137, 94), 200, 400, 100, 40, "Opción 1", 220, 425 );
    botones1 (color(255), color (88, 137, 94), 400, 400, 100, 40, "Opción 2", 417, 425 );
    popStyle();


    break;
  case 6:
    pushStyle();

    image(imagen[6], 0, 0, 600, 600);
    text( textos[6], 20, 50 );
    botones1 (color(255), color (88, 137, 94), 400, 400, 100, 40, "Siguiente", 415, 425 );
    popStyle();


    break;
    // aca comienza la experiencia 2
  case 7:
    pushStyle();
    image(imagen[7], 0, 0, 600, 600);
    text( textos[7], 20, 50 );
    botones1 (color(255), color (88, 137, 94), 400, 400, 100, 40, "Reiniciar", 418, 425 );
    botones2 (color (255), color (88, 137, 94), 200, 400, 100, 40, "Créditos", 220, 425 );
    popStyle();

    break;
  case 8:
    pushStyle();

    image(imagen[8], 0, 0, 600, 600 );
    text( textos[8], 20, 30, 550, 100);
    botones1 (color(255), color (88, 137, 94), 400, 400, 100, 40, "Siguiente", 415, 425 );
    popStyle();

    break;
  case 9:
    pushStyle();

    image(imagen[9], 0, 0, 600, 600 );
    text( textos[9], 10, 50 );
    botones1 (color (255), color (88, 137, 94), 400, 400, 100, 40, "Siguiente", 418, 424 );
    popStyle();

    break;

  case 10:
    pushStyle();

    image(imagen[10], 0, 0, 700, 600);
    text( textos[10], 10, 50 );
    botones1 (color(255), color (88, 137, 94), 400, 400, 100, 40, "Opción 2", 415, 425);
    botones2 (color(255), color (88, 137, 94), 200, 400, 100, 40, "Opción 1", 215, 425);

    popStyle();


    break;
    // aca comienza la segunda experiencia 
  case 11:
    pushStyle();

    image(imagen[11], 0, 0, 600, 600);
    text( textos[11], 50, 50);
    botones1 (color(255), color (88, 137, 94), 400, 400, 100, 40, "Reiniciar", 418, 425 );
    botones2 (color (255), color (88, 137, 94), 200, 400, 100, 40, "Créditos", 215, 425 );  
    popStyle();

    break;
  case 12:
    pushStyle();

    image(imagen[12], 0, 0, 600, 600);
    text( textos[12], 20, 50 );
    botones1 (color(255), color (88, 137, 94), 400, 400, 100, 40, "Siguiente", 415, 425 );
    popStyle();

    break;
  case 13:
    pushStyle();

    image(imagen[13], 0, 0, 600, 600);
    text( textos[13], 20, 50);
    
    botones1 (color(255), color (88, 137, 94), 400, 400, 100, 40, "Reiniciar", 418, 425 );
    botones2 (color(255), color (88, 137, 94), 200, 400, 100, 40, "Créditos", 220, 425 );

    popStyle();

    break;

  case 14: 

    pushStyle();
    image(imagen[14], 0, 0, 600, 600);
    text( textos[14], 100, 50 );
    botones2 (color(255), color (88, 137, 94), 200, 400, 100, 40, "Reiniciar", 218, 425 );
    popStyle();
  }
}

//función con parámetro que retorna valor (botón reinicio)

boolean botonReinicio(int posX, int posY, int ancho, int alto){
  
  return mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto;
}

void mousePressed ( ) {

  if (estado == 0 && mouseX > 400 && mouseX < 500 && mouseY > 400 &&  mouseY< 440) {
    dentroboton1 = true;
    estado = 1;
    
  } else if ( estado == 1 && mouseX > 400 && mouseX < 500 && mouseY > 400 && mouseY< 440) {
    dentroboton1 = true;
    estado = 2;
    
  } else if (estado == 2 && mouseX > 400 && mouseX < 500 && mouseY > 400 &&  mouseY< 440) {
    dentroboton1 = true;
    estado = 3;
    
  } else if ( estado == 3 && mouseX > 400 && mouseX < 500 && mouseY > 400 && mouseY< 440) {
    dentroboton1 = true;
    estado = 4;
    
  } else if (estado == 4 && mouseX > 400 && mouseX < 500 && mouseY > 400 &&  mouseY< 440) {
    dentroboton1 = true;
    estado = 5;
    
  } else if ( estado == 5 && mouseX > 400 && mouseX < 500 && mouseY > 400 && mouseY< 440) {
    dentroboton1 = true;
    estado = 6;
    
  } else if (estado == 5 &&  mouseX > 200 && mouseX < 500 && mouseY > 400 && mouseY< 440) {

    dentroboton2 = true;
    estado = 8;
    
  } else if  (estado == 6 && mouseX > 400 && mouseX < 500 && mouseY > 400 &&  mouseY< 440) {
    dentroboton1 = true;
    estado = 7; // segunda coordenada
    
  } else if ( estado == 7 && mouseX > 200 && mouseX < 300 && mouseY > 400 && mouseY< 440) {
    dentroboton2 = true;
    estado = 14;
    
  } else if ( estado == 7){
    
    if(botonReinicio(400, 400, 100, 40)){
      
     dentroboton1 = true; 
     estado = 0;
   
    }
  
  } else if (estado ==8 && mouseX > 400 && mouseX < 500 && mouseY > 400 && mouseY< 440 ) {

    dentroboton1 = true;
    estado = 9;
  } else if (estado == 9 && mouseX > 400 && mouseX < 500 && mouseY > 400 && mouseY< 440) {

    dentroboton1 = true;
    estado = 10;
    
  } else if (estado == 10 && mouseX > 400 && mouseX < 500 && mouseY > 400 && mouseY< 440 ) {
    dentroboton1 = true;
    estado = 12;
    
  } else if (estado == 10 && mouseX > 200 && mouseX < 300 && mouseY > 400 && mouseY< 440 ) {
    dentroboton2 = true;
    estado = 11;
    
  } else if(estado == 11 && mouseX > 200 && mouseX < 300 && mouseY > 400 && mouseY< 440 ){
    dentroboton2 = true;
    estado = 14;
    
  }else if ( estado == 11){
    
    if(botonReinicio(400, 400, 100, 40)){
     dentroboton1 = true;
     estado = 0;
   
    }
  
  } else if(estado == 12 && mouseX > 400 && mouseX < 500 && mouseY > 400 && mouseY< 440){
    dentroboton1 = true;
    estado = 13;
    
  } else if(estado == 13 && mouseX > 200 && mouseX < 300 && mouseY > 400 && mouseY< 440 ){
    dentroboton2 = true;
    estado = 14;
    
  }
  
  else if ( estado == 13){
    
    if(botonReinicio(400, 400, 100, 40)){
      
     dentroboton1 = true;
     estado = 0;
    

    }
  }else if( estado == 14) {
      
    if(botonReinicio(200, 400, 100, 40)){
      
    estado = 0;
     dentroboton2 = true;
  
  }
  }
  
}
