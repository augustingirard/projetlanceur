function [position] = coordonnees_cartesiennes(h_g, lambda, phi_g, time)
% Cette fonction calcule les coordonn�es cart�siennes d'un point sous forme
% d'un vecteur [X Y Z]
% Arguments :
%   - h_g (scalaire) : altitude g�od�sique
%   - lambda (scalaire) : longitude
%   - phi_g (scalaire) : latitude g�od�sique
%   - time (scalaire) : temps, permet de passer de la latitude terrestre � la
%   latitude dans le rep�re inertiel

global rayon_equatorial ;
global rayon_polaire;
global vitesse_rotation_terre ;
e2 = 1- (rayon_polaire/rayon_equatorial)^2; % carr� de l'aplatissement terrestre

lambda_inertiel = lambda + vitesse_rotation_terre * time;
N = rayon_equatorial / sqrt(1-e2*(sin(phi_g))^2);

position(1) = (N + h_g) * cos(phi_g) * cos (lambda_inertiel);
position(2) = (N + h_g) * cos(phi_g) * sin (lambda_inertiel);
position(3) = (N*(1-e2) + h_g) * sin(phi_g);
end