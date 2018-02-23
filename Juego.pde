int pantalla=0;
int jugador1=0;
int jugador2=0;
int turno=0;
int x,y;
float angle=0.0;

Dragon Pokemon;
Dragon DChino;
Dragon Escarapatus;
Dragon FuriaNocturna;
Dragon Leviatan;

Dragon j1;
Dragon j2;

void setup(){
  size(900,600);
  
  Pokemon=new Dragon("Charizard",30,250,1);
  DChino=new Dragon("Mushu",25,250,2);
  Escarapatus=new Dragon("Shadow",40,250,3);
  FuriaNocturna=new Dragon("Toothless",50,250,4);
  Leviatan=new Dragon("Volvagia",40,250,5);
  
}

void draw(){
  
  background(#645151);
  
  switch(pantalla){
    case 0:
      presentacion();
      break;
    case 1:
      presentacion1();
      break;
    case 2:
      titulo();
      break;
    case 3:
      personajes1();
      break;
    case 4:
      personajes2();
      break;
    case 5:
      juego();
      break;
    case 6:
      resultado();
      break;
  }
}

void presentacion(){
  
  float sinval=sin(angle);
  float gray=map(sinval,-1,1,0,200);
  background(gray);
  angle+=.1;
  
  textSize(30);
  fill(#F2EBED);
  text("Los dragones son seres majuestosos que han existido",50,100);
  text("desde hace miles de años, cada uno de ellos",90,140);
  text("cumplen diversas tareas en diferentes mundos",75,180);
  text("o dimensiones, ya sea por mucho o poco tiempo",70,220);
  textSize(20);
  text("presiona Q para continuar",100,550);
  if(key=='q'||key=='Q'){
    pantalla=1;
  }
  textSize(20);
  text("presiona E para omitir",600,550);
  if(key=='e'||key=='E'){
    pantalla=2;
  }
}

void presentacion1(){
  
  float sinval=sin(angle);
  float gray=map(sinval,-1,1,0,170);
  background(gray);
  angle+=.1;
  
  textSize(30);
  fill(#F2EBED);
  text("Pero existe un santuario llamado Hydra donde",50,100);
  text("todos los dragones se reune para fortalecer",90,140);
  text("y descansar sus cuerpos. Ademas de que en este",75,180);
  text("lugar las bestias pueden probar quien es el mas",70,220);
  text("fuerte de todas las razas mediante batallas",70,260);
  textSize(20);
  text("presiona R para continuar",600,550);
  if(key=='r'||key=='R'){
    pantalla=2;
  }
}

void titulo(){
  
    background(#228689);
  noStroke();
  fill(#9D0207);
  ellipse(200,200,400,400);
  
  noStroke();
  fill(142, 142, 152);
  beginShape();
    vertex(0, 245);
    vertex(25.1, 243.2);
    vertex(26.1, 209.6);
    vertex(50.6, 208.6);
    vertex(49.6, 173.9);
    vertex(79.2, 172.8);
    vertex(80.2, 188.1);
    vertex(130.3, 188.3);
    vertex(130, 205);
    vertex(167, 205);
    vertex(167, 234);
    vertex(197, 234);
    vertex(197, 258);
    vertex(225, 258);
    vertex(224, 281);
    vertex(251, 281);
    vertex(251, 302);
    vertex(294, 302);
    vertex(294, 263);
    vertex(317, 263);
    vertex(316, 238);
    vertex(338, 238);
    vertex(337, 203);
    vertex(393, 202);
    vertex(394, 221);
    vertex(427, 221);
    vertex(427, 243);
    vertex(480, 243);
    vertex(480, 269);
    vertex(525, 269);
    vertex(525, 214);
    vertex(556, 214);
    vertex(554, 188);
    vertex(582, 188);
    vertex(581, 164);
    vertex(608, 164);
    vertex(610, 212);
    vertex(661, 211);
    vertex(661, 232);
    vertex(694, 232);
    vertex(694, 251);
    vertex(727, 251);
    vertex(727, 272);
    vertex(762, 272);
    vertex(761, 227);
    vertex(785, 227);
    vertex(784, 200);
    vertex(838, 200);
    vertex(838, 238);
    vertex(868, 238);
    vertex(868, 255);
    vertex(900, 255);
    vertex(900, 600);
    vertex(0, 600);
    vertex(0, 339);
  endShape(CLOSE);
  fill(114, 109, 118);
  beginShape();
    vertex(0, 600);
    vertex(0, 344);
    vertex(24, 344);
    vertex(23, 323);
    vertex(50, 324);
    vertex(50, 303);
    vertex(84, 303);
    vertex(84, 279);
    vertex(170, 279);
    vertex(170, 293);
    vertex(201, 293);
    vertex(201, 271);
    vertex(224, 271);
    vertex(224, 246);
    vertex(246, 246);
    vertex(246, 227);
    vertex(297, 227);
    vertex(298, 249);
    vertex(318, 249);
    vertex(318, 267);
    vertex(356, 267);
    vertex(356, 290);
    vertex(398, 291);
    vertex(399, 315);
    vertex(434, 315);
    vertex(433, 290);
    vertex(466, 289);
    vertex(466, 258);
    vertex(505, 259);
    vertex(506, 314);
    vertex(559, 314);
    vertex(559, 330);
    vertex(588, 330);
    vertex(589, 355);
    vertex(627, 355);
    vertex(626, 312);
    vertex(662, 312);
    vertex(660, 283);
    vertex(687, 283);
    vertex(688, 304);
    vertex(750, 304);
    vertex(752, 337);
    vertex(807, 338);
    vertex(804, 287);
    vertex(850, 287);
    vertex(850, 310);
    vertex(878, 310);
    vertex(878, 325);
    vertex(900, 325);
    vertex(900, 600);
  endShape(CLOSE);
  fill(48, 54, 57);
  beginShape();
    vertex(0, 371);
    vertex(47, 371);
    vertex(47, 387);
    vertex(81, 388);
    vertex(81, 423);
    vertex(134, 423);
    vertex(134, 396);
    vertex(165, 395);
    vertex(165, 368);
    vertex(206, 369);
    vertex(205, 394);
    vertex(227, 393);
    vertex(227, 413);
    vertex(261, 414);
    vertex(261, 436);
    vertex(278, 436);
    vertex(277, 452);
    vertex(303, 452);
    vertex(302, 410);
    vertex(328, 410);
    vertex(328, 384);
    vertex(350, 384);
    vertex(350, 358);
    vertex(416, 357);
    vertex(416, 383);
    vertex(471, 382);
    vertex(471, 400);
    vertex(494, 399);
    vertex(495, 425);
    vertex(528, 425);
    vertex(528, 455);
    vertex(561, 455);
    vertex(560, 398);
    vertex(581, 399);
    vertex(581, 378);
    vertex(617, 378);
    vertex(617, 348);
    vertex(663, 348);
    vertex(664, 369);
    vertex(708, 369);
    vertex(707, 405);
    vertex(749, 405);
    vertex(749, 436);
    vertex(810, 436);
    vertex(810, 462);
    vertex(865, 463);
    vertex(864, 405);
    vertex(900, 405);
    vertex(900, 600);
    vertex(0, 600);
  endShape(CLOSE);
 
  fill(#900024);
  textSize(60);
  textAlign(CENTER);
  text("Drage krig",450,300);
  textSize(25);
  text("presiona P para comenzar",450,500);
  if(key=='p'||key=='P'){
    pantalla=3;
  }
}

void personajes1(){
  
  background(#B7453F);
  
  fill(0);
  textSize(23);
  text("Selecciona a tu personaje jugador1!",300,40);
  text("Presiona:  A.Charizard  S.Mushu  D.Shadow  F.Toothless  G.Volvagia",400,80);
  
  Pokemon.display();
  DChino.display();
  Escarapatus.display();
  FuriaNocturna.display();
  Leviatan.display();
  
  if(keyPressed){
   if(key=='a'||key=='A'){
     jugador1=1;
     j1=Pokemon;
     pantalla=4;
   }
   if(key=='s'||key=='S'){
     jugador1=2;
     j1=DChino;
     pantalla=4;
   }
   if(key=='d'||key=='D'){
     jugador1=3;
     j1=Escarapatus;
     pantalla=4;
   }
   if(key=='f'||key=='F'){
     jugador1=4;
     j1=FuriaNocturna;
     pantalla=4;
   }
   if(key=='g'||key=='G'){
     jugador1=5;
     j1=Leviatan;
     pantalla=4;
   }
  }
}
  
  void personajes2(){
    
  background(#B7453F);  
  
  fill(0);
  textSize(23);
  text("Selecciona a tu personaje jugador2!",400,40);
  text("Presiona:  Z.Charizard  X.Mushu  C.Shadow  V.Toothless  B.Volvagia",400,80);
  
  Pokemon.display();
  DChino.display();
  Escarapatus.display();
  FuriaNocturna.display();
  Leviatan.display();
  
  if(keyPressed){
   if(key=='z'||key=='Z'){
     jugador2=1;
     j2=Pokemon;
     pantalla=5;
   }
   if(key=='x'||key=='X'){
     jugador2=2;
     j2=DChino;
     pantalla=5;
   }
   if(key=='c'||key=='C'){
     jugador2=3;
     j2=Escarapatus;
     pantalla=5;
   }
   if(key=='v'||key=='V'){
     jugador2=4;
     j2=FuriaNocturna;
     pantalla=5;
   }
   if(key=='b'||key=='B'){
     jugador2=5;
     j2=Leviatan;
     pantalla=5;
   }
  }
  
}

void juego(){
  
  if(jugador1>0 && jugador2>0){
    pantalla=5;
  }
  
  fill(#5F9DB4);
  rect(0,0,900,600);
  
  fill(#3E8934);
  rect(0,400,900,200);
    
  fill(255,0,0);
  rect(55,40,250,20);
  rect(600,40,250,20);
  
  fill(#42EA11);
  rect(55,40,j1.defensa,20);
  rect(600,40,j2.defensa,20);
  
  fill(0);
  textSize(20);
  text("Ataca con W",100,550);
  
  fill(0);
  textSize(20);
  text("Ataca con O",700,550);
  
  if(jugador1==1 && jugador2==2){
    
    translate(x+50,y+100);
    Pokemon.display();
    
    translate(x+200,y+5);
    DChino.display();
  }
  if(jugador1==1 && jugador2==3){
    
    translate(x+50,y+100);
    Pokemon.display();
    
    translate(x-40,y);
    Escarapatus.display();
  }
  if(jugador1==1 && jugador2==4){
    
    translate(x+50,y+100);
    Pokemon.display();
    
    translate(x+350,y-270);
    FuriaNocturna.display();
  }
  if(jugador1==1 && jugador2==5){
    
    translate(x+50,y+100);
    Pokemon.display();
    
    translate(x,y-250);
    Leviatan.display();
  }
  if(jugador1==1 && jugador2==1){
    
    translate(x+50,y+100);
    Pokemon.display();
    
    translate(x+430,y);
    Pokemon.display();
  }
  if(jugador1==2 && jugador2==1){
    
    translate(x-250,y+130);
    DChino.display();
    
    translate(x+750,y);
    Pokemon.display();
  }
  if(jugador1==2 && jugador2==2){
    
    translate(x-250,y+130);
    DChino.display();
    
    translate(x+500,y+5);
    DChino.display();
  }
  if(jugador1==2 && jugador2==3){
    
    translate(x-250,y+130);
    DChino.display();
    
    translate(x+200,y);
    Escarapatus.display();
  }
  if(jugador1==2 && jugador2==4){
    
    translate(x-250,y+130);
    DChino.display();
    
    translate(x+650,y-250);
    FuriaNocturna.display();
  }
  if(jugador1==2 && jugador2==5){
    
    translate(x-250,y+130);
    DChino.display();
    
    translate(x+300,y-250);
    Leviatan.display();
  }
  if(jugador1==3 && jugador2==5){
    
    translate(x-500,y+130);
    Escarapatus.display();
    
    translate(x+600,y-250);
    Leviatan.display();
  }
  if(jugador1==3 && jugador2==1){
    
    translate(x-500,y+130);
    Escarapatus.display();
    
    translate(x+1000,y);
    Pokemon.display();
  }
  if(jugador1==3 && jugador2==2){
    
    translate(x-500,y+130);
    Escarapatus.display();
    
    translate(x+750,y+5);
    DChino.display();
  }
  if(jugador1==3 && jugador2==3){
    
    translate(x-500,y+130);
    Escarapatus.display();
    
    translate(x+500,y);
    Escarapatus.display();
  }
  if(jugador1==3 && jugador2==4){
    
    translate(x-500,y+130);
    Escarapatus.display();
    
    translate(x+930,y-250);
    FuriaNocturna.display();
  }
  if(jugador1==4 && jugador2==4){
    
    translate(x-100,y-100);
    FuriaNocturna.display();
    
    translate(x+530,y);
    FuriaNocturna.display();
  }
  if(jugador1==4 && jugador2==1){
    
    translate(x-100,y-100);
    FuriaNocturna.display();
    
    translate(x+600,y+250);
    Pokemon.display();
  }
  if(jugador1==4 && jugador2==2){
    
    translate(x-100,y-100);
    FuriaNocturna.display();
    
    translate(x+380,y+250);
    DChino.display();
  }
  if(jugador1==4 && jugador2==3){
    
    translate(x-100,y-100);
    FuriaNocturna.display();
    
    translate(x+120,y+250);
    Escarapatus.display();
  }
  if(jugador1==4 && jugador2==5){
    
    translate(x-100,y-100);
    FuriaNocturna.display();
    
    translate(x+200,y);
    Leviatan.display();
  }
  if(jugador1==5 && jugador2==5){
    
    translate(x-430,y-100);
    Leviatan.display();
    
    translate(x+510,y);
    Leviatan.display();
  }
  if(jugador1==5 && jugador2==1){
    
    translate(x-430,y-100);
    Leviatan.display();
    
    translate(x+960,y+225);
    Pokemon.display();
  }
  if(jugador1==5 && jugador2==2){
    
    translate(x-430,y-100);
    Leviatan.display();
    
    translate(x+700,y+250);
    DChino.display();
  }
  if(jugador1==5 && jugador2==3){
    
    translate(x-430,y-100);
    Leviatan.display();
    
    translate(x+450,y+250);
    Escarapatus.display();
  }
  if(jugador1==5 && jugador2==4){
    
    translate(x-430,y-100);
    Leviatan.display();
    
    translate(x+850,y);
    FuriaNocturna.display();
  }
  
    //w y o
    if(turno==0){
      if(key=='w' || key=='W'){
        j2.defensa=j2.defensa-j1.ataque;
        turno=1;
      }
    }
    if(turno==1){
      if(key=='o' || key=='O'){
        j1.defensa=j1.defensa-j2.ataque;
        turno=0;
      }
    }
    
    
    if(j1.defensa<=0 || j2.defensa<=0){
      pantalla=6;
    }
}
  

void resultado(){
  
  background(#B7453F);
  
  fill(0);
  textAlign(CENTER);
  textSize(50);
  text("GANADOR",450,150);
  
  if(j1.defensa>j2.defensa){
    fill(#E80C00);
    textSize(30);
    textAlign(CENTER);
    text("¡Eres el vencedor primer jugador!",450,300);
  }else if(j2.defensa>j1.defensa){
    fill(#E80C00);
    textSize(30);
    textAlign(CENTER);
    text("¡Eres el vencedor segundo jugador!",450,300);
  }
  
  fill(0);
  textAlign(CENTER);
  textSize(20);
  text("Presione ENTER para volver a jugar",450,550);
  
  if(keyPressed){
    if(key==ENTER){
      j1.defensa=250;
      j2.defensa=250;
      turno=0;
      pantalla=2;
    }
  }
}

class Dragon{
  
  String nombre;
  int ataque, defensa;
  int tierra;
  
  Dragon(String nombre_, int ataque_, int defensa_,int tierra_){
    nombre=nombre_;
    ataque=ataque_;
    defensa=defensa_;
    tierra=tierra_;
  }
  
  void display(){
    switch(tierra){
      case 1:
        Charizard();
        break;
      case 2:
        Mushu();
        break;
      case 3:
        Shadow();
        break;
      case 4:
        Toothless();
        break;
      case 5:
        Volvagia();
        break;
      default:
        break;
    } 
  } 
}