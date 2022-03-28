  gameStatus = true;
  scoreWin = 3;
  frameRate(30); // Forcer la fréquence à 30 images / secondes
  
   
  ///// Initialisation de la balle :
  
  ball_x = width / 2; // centrée en largeur
  ball_y = height / 2; // centrée en hauteur
  
  ball_size = 40;
  ball_speed = 15;
  
  ball_direction_x = 1; // -1 : gauche | 1 : droite
  ball_direction_y = 1; // -1 : haut | 1 : droite

  ball_is_moving = false; 
  
  filet_x = width/2;
  filet_y = height/2;
  filet_width = 10;
  filet_height = height;
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

  
   previous_frame_intersect_x = false;
  previous_frame_intersect_y = false;
  
     previous_frame_intersect2_x = false;
  previous_frame_intersect2_y = false;
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

  
  ///// Initialisation du pad de gauche :
    
  pad_x = 20;
  pad_y = height / 2; // centré en hauteur
  
  pad_width = 10;
  pad_height = 150;
  
    ///// Initialisation du pad de droite :
  
  pad2_x = width - 20;
  pad2_y = height / 2; // centré en hauteur
  
  pad2_width = 10;
  pad2_height = 150;
  
  pad_speed = 20;

  pad_up = false; // deviendra true lorsque touche haut pressée | false lorsque relachée
  pad_down = false; // deviendra true lorsque touche bas pressée | false lorsque relachée
  
  pad2_up = false; // deviendra true lorsque touche haut pressée | false lorsque relachée
  pad2_down = false; // deviendra true lorsque touche bas pressée | false lorsque relachée
  
} // Fin setup()
