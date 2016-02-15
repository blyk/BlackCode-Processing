// Programme d'exemple de la librairie javacvPro
// par X. HINAULT - octobre 2011
// Tous droits réservés - Licence GPLv3

// Exemple fonction copyToGray()

import monclubelec.javacvPro.*; // importe la librairie javacvPro

PImage img;

String url="http://www.mon-club-elec.fr/mes_images/online/lena.jpg"; // String contenant l'adresse internet de l'image à utiliser

OpenCV opencv; // déclare un objet OpenCV principal

void setup(){ // fonction d'initialisation exécutée 1 fois au démarrage

        //-- charge image utilisée ---
        img=loadImage(url,"jpg"); // crée un PImage contenant le fichier à partir adresse web

        //--- initialise OpenCV ---
        opencv = new OpenCV(this); // initialise objet OpenCV à partir du parent This
        opencv.allocate(img.width, img.height); // initialise les buffers OpenCv à la taille de l'image

        opencv.copyToGray(img); // charge le PImage dans le buffer OpenCV
        //--- la fonction supporte un nombre de canal différent entre le buffer mono-canal et l'image de départ
        
        //--- initialise fenêtre Processing
        size (opencv.width(), opencv.height()); // crée une fenêtre Processing de la 2xtaille du buffer principal OpenCV
        //size (img.width, img.height); // alternative en se basant sur l'image d'origine

        //--- affiche image ---        
        image(opencv.getBufferGray(),0,0); // affiche le buffer principal OpenCV dans la fenêtre Processing


       noLoop(); // stop programme      

}


void  draw() { // fonction exécutée en boucle

}
