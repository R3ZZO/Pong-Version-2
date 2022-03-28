 if(ball_is_moving == false){
  ball_speed = 0;
  } else if (ball_is_moving == true){
  ball_speed = 15;
  }
  
  
  if (ball_y - ball_size / 2 <= 0 || ball_y + ball_size / 2 >= height) {
    ball_direction_y *= -1;
  }
  
   // Collision balle / bord droit fenêtre (temporaire)
  if (ball_x + ball_size / 2 >= width) {
    ball_direction_x *= -1; // On peut faire alterner la valeur entre 1 et -1, en la multipliant par -1
  }
  


   // Dépassement balle / bord gauche fenêtre (il faudra adapter ce fonctionnement au bord droit également une fois le pad 2 fonctionnel)
  if (ball_x + ball_size / 2 <= 0) {
  
    // La balle est replacée au centre
    ball_x = width / 2;
    ball_y = height / 2;
    ball_is_moving = false;
    score2 ++;
  
  }
  
    if (ball_x + ball_size / 2 >= 1280) {
  
    // La balle est replacée au centre
    ball_x = width / 2;
    ball_y = height / 2;
    ball_is_moving = false;
    score ++;
  
  }
  

  
  

  if (previous_frame_intersect_x && !previous_frame_intersect_y && intersect_y) {
   ball_direction_y *= -1;
 }
 
 // Pour que le rebond se fasse sur l'axe horizontal :
 // - Une intersection sur l'axe vertical devait déjà être vraie sur la précédente frame
 // - Sur l'axe horizontal il faut au contraire qu'elle ne devienne vraie que sur la frame actuelle
 if (previous_frame_intersect_y && !previous_frame_intersect_x && intersect_x) {
   ball_direction_x *= -1;
 }
  
  // Ne pas oublier de mettre à jour nos "sauvegardes" de scénarios, qui seront testées à nouveau pour la frame suivante
  previous_frame_intersect_x = intersect_x;
  previous_frame_intersect_y = intersect_y;
 
 
 
   if (previous_frame_intersect2_x && !previous_frame_intersect2_y && intersect2_y) {
   ball_direction_y *= -1;
 }
 
 // Pour que le rebond se fasse sur l'axe horizontal :
 // - Une intersection sur l'axe vertical devait déjà être vraie sur la précédente frame
 // - Sur l'axe horizontal il faut au contraire qu'elle ne devienne vraie que sur la frame actuelle
 if (previous_frame_intersect2_y && !previous_frame_intersect2_x && intersect2_x) {
   ball_direction_x *= -1;
 }
  
  // Ne pas oublier de mettre à jour nos "sauvegardes" de scénarios, qui seront testées à nouveau pour la frame suivante
  previous_frame_intersect2_x = intersect2_x;
  previous_frame_intersect2_y = intersect2_y;
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
   
  // Calcul de la nouvelle position de la balle
  ball_x += ball_speed * ball_direction_x;
  ball_y += ball_speed * ball_direction_y;
  
  // Calcul de la nouvelle position du pad 1
  if (pad_up) { // ou : if (pad_up == true) - c'est le cas lorsque la touche haut est pressée
  
    // si pad ne touche pas bord haut fenêtre, déplacement vers le haut
    if (pad_y - pad_height / 2 > 0) { 
      pad_y -= pad_speed;
    }
  
  } else if (pad_down) { // ou : if (pad_down == true) - c'est le cas lorsque la touche bas est pressée
  
    // si pad ne touche pas bord bas fenêtre, déplacement vers le bas
    if (pad_y + pad_height / 2 < height) {
      pad_y += pad_speed;
    }
  
  }
  
  if (pad2_up) { // ou : if (pad_up == true) - c'est le cas lorsque la touche haut est pressée
  
    // si pad ne touche pas bord haut fenêtre, déplacement vers le haut
    if (pad2_y - pad2_height / 2 > 0) { 
      pad2_y -= pad_speed;
    }
  
  } else if (pad2_down) { // ou : if (pad_down == true) - c'est le cas lorsque la touche bas est pressée
  
    // si pad ne touche pas bord bas fenêtre, déplacement vers le bas
    if (pad2_y + pad2_height / 2 < height) {
      pad2_y += pad_speed;
    }
  
  }
