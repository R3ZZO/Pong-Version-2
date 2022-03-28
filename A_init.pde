///// Variables globales concernant la balle :
int ball_x , ball_y; // coordonnées
int ball_size; // diamètre
int ball_speed; // vitesse = distance en pixels parcourue en une frame
int ball_direction_x , ball_direction_y; // Alterneront entre 1 et -1
int score;
int score2;
int scoreWin;
boolean gameStatus;

// Pas encore utilisé :
boolean ball_is_moving; // servira à attendre une touche de clavier pour (re)lancer le mouvement de la balle


///// Variables globales concernant le premier pad :
int filet_x;
int filet_y;
int filet_width;
int filet_height;

int pad_x , pad_y; // coordonnées
int pad_width , pad_height; // dimensions
int pad_speed; // vitesse = distance en pixels parcourue en une frame
boolean pad_up , pad_down; // reflèteront l'état des touches haut / bas
boolean pad2_up , pad2_down; // reflèteront l'état des touches haut / bas

int pad2_x , pad2_y; // coordonnées
int pad2_width , pad2_height; // dimensions
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

boolean previous_frame_intersect_x , previous_frame_intersect_y;
boolean previous_frame_intersect2_x , previous_frame_intersect2_y;

String messageWin = "Bravo Joueur 1 à gagner";
String messageWin2 = "Bravo Joueur 2 à gagner";

///////////////////////////////////////////////////////////////////////////////////////////////////////////////



  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  int ball_left_edge_x = ball_x - ball_size / 2;
 int ball_right_edge_x = ball_x + ball_size / 2;
 int ball_top_edge_y = ball_y - ball_size / 2;
 int ball_bottom_edge_y = ball_y + ball_size / 2;
 
 int pad_left_edge_x = pad_x - pad_width / 2;
 int pad_right_edge_x = pad_x + pad_width / 2;
 int pad_top_edge_y = pad_y - pad_height / 2;
 int pad_bottom_edge_y = pad_y + pad_height / 2;
 
  int pad2_left_edge_x = pad2_x - pad2_width / 2;
 int pad2_right_edge_x = pad2_x + pad2_width / 2;
 int pad2_top_edge_y = pad2_y - pad2_height / 2;
 int pad2_bottom_edge_y = pad2_y + pad2_height / 2;
 
 boolean pad_left_edge_intersect = ball_right_edge_x >= pad_left_edge_x;
 boolean pad_right_edge_intersect = ball_left_edge_x <= pad_right_edge_x;
 boolean pad_top_edge_intersect = ball_bottom_edge_y >= pad_top_edge_y;
 boolean pad_bottom_edge_intersect = ball_top_edge_y <= pad_bottom_edge_y;
 
  boolean pad2_left_edge_intersect = ball_right_edge_x >= pad2_left_edge_x;
 boolean pad2_right_edge_intersect = ball_left_edge_x <= pad2_right_edge_x;
 boolean pad2_top_edge_intersect = ball_bottom_edge_y >= pad2_top_edge_y;
 boolean pad2_bottom_edge_intersect = ball_top_edge_y <= pad2_bottom_edge_y;
 
 boolean intersect_x = pad_left_edge_intersect && pad_right_edge_intersect;
 boolean intersect_y = pad_top_edge_intersect && pad_bottom_edge_intersect;
 
 boolean intersect2_x = pad2_left_edge_intersect && pad2_right_edge_intersect;
 boolean intersect2_y = pad2_top_edge_intersect && pad2_bottom_edge_intersect;
 
 String message = "Score:" + score;
String message2 = "Score:" + score2;
