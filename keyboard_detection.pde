
void keyPressed() { 
  
  if (score == scoreWin){ 
    score = 0;
    score2 = 0;
    gameStatus = true;
  }
  
else if (score2 == scoreWin){
    score = 0;
    score2 = 0;
    gameStatus = true;
  }
  
  
  // fonction exécutée en boucle (indépendamment de draw() et moins souvent) tant qu'une touche de clavier est pressée
  
  // dans cette fonction on a accès à une variable keyCode - un code correspondant à la touche pressée
  // via println(keyCode) ici, on observe dans la console que :
  // Flèche haut : 38
  // Flèche bas : 40
  
  if (keyCode == 90) {
  
    pad_up = true;
    pad_down = false;
    ball_is_moving = true;
  
  } else if (keyCode == 83) {
  
    pad_down = true;
    pad_up = false;
    ball_is_moving = true;
    
  }
  


if (keyCode == 38) {
  
    pad2_up = true;
    pad2_down = false;
    ball_is_moving = true;
  
  } else if (keyCode == 40) {
  
    pad2_down = true;
    pad2_up = false;
    ball_is_moving = true;
    
  }
  
}



void keyReleased() { // fonction exécutée lorsqu'une touche de clavier est relachée

  // keyCode est accessible ici comme dans keyPressed(), et concerne la touche relachée

  if (keyCode == 90) {
  
     pad_up = false;
   
  
  } else if (keyCode == 83) {
  
     pad_down = false;
     
  
  }



  if (keyCode == 38) {
  
     pad2_up = false;
   
  
  } else if (keyCode == 40) {
  
     pad2_down = false;
     
  
  }

}
