function [h_g, lambda, phi_g] = coordonnees_geodesiques(position, temps)
% Cette fonction calcule les coordonnées géodésique d'un point sous forme
% d'un vecteur [h_g lambda phi_g] :h_g est l'altitude géodésique, lambda la
% longitude, et phi_g la latitude géodésique
% Arguments :
%   - position (vecteur 3) : X Y Z
%   - temps (scalaire) : temps, permet de passer de la latitude terrestre à la
%   latitude dans le repère inertiel
precision = 0.00001; % précision de la méthode d'itération. Exemple 0.00001

global rayon_equatorial ;
global rayon_polaire;
global vitesse_rotation_terre ;
p = norm(position(1:2), 2);

% calcul de la longitude lambda

if position(2)>0
    lambda_inertiel = acos(position(1)/p);
else
    lambda_inertiel = -acos(position(1)/p);
end
lambda = lambda_inertiel - vitesse_rotation_terre * temps;

% calcul de l'altitude geodesique h_g et de la latitude deodesique phi_g
% par recurence

e2 = 1- (rayon_polaire/rayon_equatorial)^2; % carré de l'aplatissement terrestre
r = norm(position, 2);

N = rayon_equatorial;
h_g = r - sqrt(rayon_polaire * rayon_equatorial);
phi_g = atan( position(3)/p*(N+h_g)/(N*(1-e2)+h_g));
phi_g_precedent = 0;

while abs(phi_g - phi_g_precedent) > precision,
    phi_g_precedent = phi_g;
    N = rayon_equatorial / sqrt(1-e2*(sin(phi_g))^2);
    h_g = p / cos(phi_g) - N;
    phi_g = atan( position(3)/p*(N+h_g)/(N*(1-e2)+h_g));
end

end