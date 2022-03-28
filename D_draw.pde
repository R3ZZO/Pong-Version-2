if (score == scoreWin){ 
  gameStatus = false;
  }
  
else if (score2 == scoreWin){
  gameStatus = false;
  }
  


} 
else {
  if (score == scoreWin){ 
 
  background(0,0,0);
    text(messageWin, width/4 , height/2);
  }
  
else if (score2 == scoreWin){
  background(0,0,0);
 text(messageWin2, width*3/4 , height/2);
  }
}


  background(0,0,0); // remplit la fenêtre de noir (et efface l'ancien état des éléments dessinés)
  
  fill(255,255,255); // établit que ce qui sera dessiné par la suite sera de fond blanc
  noStroke(); // désactive le contour de ce qui sera dessiné par la suite

  ellipse(ball_x , ball_y , ball_size, ball_size); // dessine la balle selon ses nouvelles cooronnées
  
  rectMode(CENTER); // établit que pour les rectangles dessinés par la suite, les coordonnées x/y correspondront au centre, et non au coin supérieur gauche
  
  rect(pad_x , pad_y , pad_width , pad_height); // dessine le pad 1 selon ses nouvelles coordonnées
  rect(pad2_x , pad2_y , pad2_width , pad2_height);
  stroke(255,255,255);
  rect(filet_x , filet_y , filet_width , filet_height);




textSize(40);
textAlign(CENTER,CENTER); // Pour un comportement proche de rectMode(CENTER) pour les rectangles (vis-à vis des coordonnées x et y)

text(message, width/4 , height/10);
text(message2, width*3/4 , height/10);
