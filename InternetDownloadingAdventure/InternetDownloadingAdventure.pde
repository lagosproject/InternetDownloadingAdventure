/*            TRABAJO POR HACER
 
 preparar imagenes errores
 poner pantalla azul
 Hacer juego en si
 
 */

/*Iniciacion de varibles*/

/*Variables de tipo int*/
int estado, notificacion, contador;//(estado)va a ser la variable que active diferentes partes del programa, (notificacion) va a ser la variable que indique la posicion de la notificacion
int pos = 0;//
int mensajReclamar;//variable para poner la colocacion de reclamar

/*Variables de tipo bool*/
boolean mensajePrueba, mnsjCaptcha, recaptcha, mnsjClaim;//boolean para mensaje de advertencia

/*Variables d imagen*/

PImage imgDeInicio;//imagen de la pestaña de chrome en el juego
PImage logo;//logo del juego
PImage fondo;// fondo de windows
PImage logoCorreo;// logo de correo
PImage fondoGmail;//correo gmail
PImage cargaGmail;//pantalla de carga
PImage fondoIphone;//fondo felicitación Iphone
PImage Iphone;//Iphone
PImage cliambtn;//imágen boton CLAIM
PImage captchaDesac;//imagen captcha desactivado
PImage captchaActv;//imagen del captcha activado
PImage pantallaAzul;//imagen de la pantalla azul

/*Variables imagen errores*/
PImage errorFatal;//imagen de la pantalla azul
/*
PImage pantallaAzul;//imagen de la pantalla azul
PImage pantallaAzul;//imagen de la pantalla azul
PImage pantallaAzul;//imagen de la pantalla azul
PImage pantallaAzul;//imagen de la pantalla azul
PImage pantallaAzul;//imagen de la pantalla azul
PImage pantallaAzul;//imagen de la pantalla azul
PImage pantallaAzul;//imagen de la pantalla azul
PImage pantallaAzul;//imagen de la pantalla azul
PImage pantallaAzul;//imagen de la pantalla azul
PImage pantallaAzul;//imagen de la pantalla azul*/

void setup() {
  /*Valores iniciales*/
  background(#FFFFFF);//color del fondo

  size(1120, 596);//tamaño de la ventana

  /*Cargar imágenes*/
  imgDeInicio = loadImage("pantallazoinicial.png");
  logo = loadImage("logo.png");
  fondo = loadImage("fondo de pantalla.jpg");
  logoCorreo = loadImage("logogmail.png");
  fondoGmail = loadImage("pantallagmail.png");
  cargaGmail = loadImage("gmailcarga.png");
  fondoIphone = loadImage("ventana abierta.png");
  Iphone = loadImage("Iphone.png");
  cliambtn = loadImage("claimbutton.png");
  captchaDesac = loadImage("recaptchaporaceptar.png");
  captchaActv = loadImage("recapatchaaceptado.jpg");
  pantallaAzul = loadImage("pantallaazul.png");
  errorFatal = loadImage("errorfatal.png");

  estado = 0;//indica en que estado va a comenzar el proyecto
  notificacion = 1120;//posicion de la ventana de nbotifcacion inicial
  contador = 0; //temporizador utilizado más tarde
  mensajReclamar = 120;

  mensajePrueba=false;
  recaptcha=false;
  mnsjCaptcha=false;
  mnsjClaim=false;
}


void draw() {//loop para animaciones

  // println(contador);
  println("mouseX:"+mouseX);
  println("mouseY:"+mouseY);

  if (estado == -1) {//creditos

    inicio();//función para poner el logo y los números aleatorios de fondo

    fill(#00FF1B);//colorear
    textSize(80);//tamaño
    text("Creado por:", 320, 280);//texto

    fill(#00FF1B);
    textSize(80);
    text("Pablo", 320, 360);

    fill(#00FF1B);
    textSize(80);
    text("Fernández", 320, 440);

    fill(#00FF1B);
    textSize(80);
    text("Lagos", 320, 520);
  }

  if (estado == 0) { //menú

    inicio();

    fill(#00FF1B);
    textSize(80);
    text("PLAY", 460, 280);//texto-boton jugar
    textFont(loadFont("Consolas-80.vlw"));//fuente del texto

    fill(#00FF1B);
    textSize(80);
    text("CREDITS", 400, 440);//texto-boton creditos
    textFont(loadFont("Consolas-80.vlw"));

    if (mouseX>460 && mouseX<646 && mouseY>223 && mouseY<284) {//boton jugar(hay que indicar una region)

      stroke(#00FF1B);//color del borde
      strokeWeight(6);//tamañio del borde
      line(456, 290, 634, 290);//(linea)objeto para que se vea que el boton esta selecccionado
    } 

    if (mouseX>400 && mouseX<704 && mouseY>385 && mouseY<443) {//boton creditos

      stroke(#00FF1B);
      strokeWeight(6);
      line(400, 448, 704, 448);//(linea)objeto para que se vea que el boton esta selecccionado
    }
  }

  if (estado==1) {//pantalla de bienvenida

    background(#030303);

    fill(#00FF1B);
    textSize(40);
    text("Bienvenido a Internet Downloading Adventure", 20, 40);

    if (contador<100) {

      contador+=1;
    } else if (contador<200) {

      contador+=1;

      fill(#00FF1B);
      textSize(40);
      text("Preparado para una nueva experiencia", 20, 80);

      fill(#00FF1B);
      textSize(40);
      text("aracade", 20, 120);//texto-boton creditos
    } else {

      contador = 0;
      estado = 2;// paso al siguiente estado
    }
  }

  if (estado==2) {//pantalla de espera de bienvenida para luego pasar al siguiente estado

    background(#030303); 

    fill(#00FF1B);
    textSize(40);
    text("Bienvenido a Internet Downloading Adventure", 20, 40);

    fill(#00FF1B);
    textSize(40);
    text("Preparado para una nueva experiencia", 20, 80);

    fill(#00FF1B);
    textSize(40);
    text("aracade", 20, 120);//texto-boton creditos

    fill(#00FF1B);
    textSize(40);
    text("Haz click para continuar", 20, 560);
  }

  if (estado==3) {//escritorio del ordenador

    image(fondo, 0, 0); //fondo del escritorio

    if (notificacion >810) {//cuadrado que hace de notificacion

      notificacion-=5;

      noStroke(); //sin borde
      fill(#050505);
      rect(notificacion, 450, 400, 100);//cuadrado que hace de notificacion

      delay(20);
    } else {

      estado = 4;
    }
  }

  if (estado==4) {//escritorio del ordenador con notificacion para pasar al siguiente estado

    image(fondo, 0, 0); 

    noStroke(); 
    fill(#050505);
    rect(notificacion, 450, 400, 100);

    if (mouseX>810 && mouseX<1120 && mouseY>450 && mouseY<550) {

      noStroke(); 
      fill(255, 255, 255, 40);
      rect(notificacion, 450, 400, 100);
    }

    fill(#FFFFFF);
    textSize(17);
    text("Has recibido un mensaje", notificacion+20, 475);

    image(logoCorreo, notificacion+20, 490);
  }

  if (estado==5) {//pantalla de carga gmail

    image(cargaGmail, 0, 0);

    if (contador<200) {

      contador+=1;
    } else {

      contador=0;
      estado=6;
    }
  }

  if (estado==6) {//correo del amigo

    image(fondoGmail, 0, 0);

    if (mensajePrueba == true) {
      if (contador<50) {

        contador+=1;

        fill(#050505);
        textSize(17);
        text("Prueba otra cosa", 510, 20);
      } else {

        mensajePrueba=false;
        contador = 0;
      }
    }
  }

  if (estado == 7) {//pantalla descarga musica

    image(imgDeInicio, 0, 0);

    if (recaptcha == false) {
      image(captchaDesac, 432, 400);
      if (mensajePrueba == true) {
        if (contador<50) {

          contador+=1;

          fill(#050505);
          textSize(17);
          text("Prueba otra cosa", 510, 20);
        } else {

          mensajePrueba=false;
          contador = 0;
        }
      }
      if (mnsjCaptcha == true) {
        if (contador<50) {

          contador+=1;

          fill(#FFFFFF);
          textSize(17);
          text("Demuestra que no eres un robot", 432, 383);
        } else {

          mnsjCaptcha=false;
          contador = 0;
        }
      }
    }
    if (recaptcha == true) {
      image(captchaActv, 432, 400);
      if (mouseX>412 && mouseX<707 && mouseY>230 && mouseY<270) {

        fill(250, 0, 0, 40);
        noStroke();    
        rect(412, 230, 295, 40);
      }
    }
  }

  if (estado == 8) {//pantalla felicitacion IphoneX
    image(fondoIphone, 0, 0);
    if (contador<50) {

      contador+=1;

      fill(250, 0, 0);
      textSize(50);
      text("Felicidades, usted ha ganado", 170, mensajReclamar);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));
    } else  if (contador<100) {

      contador+=1;

      fill(250, 0, 0);
      textSize(50);
      text("Felicidades, usted ha ganado", 170, mensajReclamar);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));

      fill(250, 0, 0);
      textSize(50);
      text("un Iphone X.", 170, mensajReclamar+50);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));
    } else if (contador<150) {

      contador+=1;

      fill(250, 0, 0);
      textSize(50);
      text("Felicidades, usted ha ganado", 170, mensajReclamar);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));

      fill(250, 0, 0);
      textSize(50);
      text("un Iphone X.", 170, mensajReclamar+50);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));

      fill(250, 0, 0);
      textSize(50);
      text("Clickea el botón para", 170, mensajReclamar+100);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));
    } else if (contador<200) {

      contador+=1;

      fill(250, 0, 0);
      textSize(50);
      text("Felicidades, usted ha ganado", 170, mensajReclamar);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));

      fill(250, 0, 0);
      textSize(50);
      text("un Iphone X.", 170, mensajReclamar+50);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));

      fill(250, 0, 0);
      textSize(50);
      text("Clickea el botón para", 170, mensajReclamar+100);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));

      fill(250, 0, 0);
      textSize(70);
      text("¡RECLAMARLO!", 170, mensajReclamar+180);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));
    } else if (contador<250) {

      contador+=1;

      fill(250, 0, 0);
      textSize(50);
      text("Felicidades, usted ha ganado", 170, mensajReclamar);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));

      fill(250, 0, 0);
      textSize(50);
      text("un Iphone X.", 170, mensajReclamar+50);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));

      fill(250, 0, 0);
      textSize(50);
      text("Clickea el botón para", 170, mensajReclamar+100);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));

      fill(250, 0, 0);
      textSize(70);
      text("¡RECLAMARLO!", 170, mensajReclamar+180);
      textFont(loadFont("ACaslonPro-Regular-48.vlw"));

      image(Iphone, 170, mensajReclamar+180);
    } else {
      contador = 0;
      estado = 9;
    }
  }

  if (estado == 9) {

    image(fondoIphone, 0, 0);

    fill(250, 0, 0);
    textSize(50);
    text("Felicidades, usted ha ganado", 170, mensajReclamar);
    textFont(loadFont("ACaslonPro-Regular-48.vlw"));

    fill(250, 0, 0);
    textSize(50);
    text("un Iphone X.", 170, mensajReclamar+50);
    textFont(loadFont("ACaslonPro-Regular-48.vlw"));

    fill(250, 0, 0);
    textSize(50);
    text("Clickea el botón para", 170, mensajReclamar+100);
    textFont(loadFont("ACaslonPro-Regular-48.vlw"));

    fill(250, 0, 0);
    textSize(70);
    text("¡RECLAMARLO!", 170, mensajReclamar+180);
    textFont(loadFont("ACaslonPro-Regular-48.vlw"));

    image(Iphone, 170, mensajReclamar+180);

    image(cliambtn, 600, 350);

    if (mnsjClaim == true) {
      if (contador<50) {

        contador+=1;

        fill(#050505);
        textSize(17);
        text("Oh, un regalo, vamos a reclamarlo", 450, 20);
      } else {

        mnsjClaim=false;
        contador = 0;
      }
    }
  }

  if (estado==10) {

    image(fondo, 0, 0);
  }
}

void mouseClicked() {

  if (estado == -1) {
    estado = 0;
    delay(1000);
  }

  if (estado == 0) {

    if (mouseX>460 && mouseX<646 && mouseY>223 && mouseY<284) {

      estado = 1;
      background(#030303);
      delay(1000);
    }
    if (mouseX>400 && mouseX<704 && mouseY>385 && mouseY<443) {

      estado = -1;
      background(#030303);
      delay(1000);
    }
  }

  if (estado == 2) {

    estado = 3;
    delay(1000);
  }

  if (estado==4) {

    if (mouseX>810 && mouseX<1120 && mouseY>450 && mouseY<550) {

      estado=5;
    }
  }

  if (estado==6) {

    if (mouseX>358 && mouseX<426 && mouseY>364 && mouseY<379) {
      mensajePrueba=false;
      estado=7;
    } else {

      contador=0;
      mensajePrueba=true;
    }
  }

  if (estado == 7) {
    if (recaptcha == true) {
      if (mouseX>412 && mouseX<707 && mouseY>230 && mouseY<270) {

        estado = 8;
      }
    }
    if (recaptcha == false) {
      if (mouseX>444 && mouseX<468 && mouseY>422 && mouseY<444) {

        recaptcha = true;
      } else  if (mouseX>0 && mouseX<width && mouseY>0 && mouseY<58) {
        mensajePrueba=true;
      } else {
        mnsjCaptcha=true;
      }
    }
  }
  if (estado == 9) {
    if (mouseX>603 && mouseX<839 && mouseY>374 && mouseY<454) {
      estado = 10;
    } else {
      mnsjClaim=true;
    }
  }
}
