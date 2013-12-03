function [ force_totale ] = force_totale(q,Isp,surface_reference,V,Cx,position,temps)
% Calcule la force totale appliqu�e sur le lanceur � l'instant t. Renvoie
% un vecteur 3
% Arguments :
%   - q : d�bit de masse qui sort du moteur
%   - Isp : impulsion sp�cifique caract�risant le moteur
%   - surface_reference : surface de r�f�rence caract�ristique du lanceur
%   - rho : masse volumique en la position du lanceur
%   - V : (vecteur 3) vitesse du lanceur dans le r�f�rentiel inertiel
%   g�ocentrique de r�f�rence
%   - Cx : coefficient de trainee du lanceur
%   - position : (vecteur 3) position du lanceur dans le r�f�rentiel inertiel
%   g�ocentrique de r�f�rence

% calcul de la masse volumique en fonction de l'altitude g�od�sique
rho = rho_atm_US76(position,temps);

% calcul de la somme des forces (somme de vecteurs)
force_totale = (...
    poussee(q,Isp, position,V)+ ...
    trainee(surface_reference,rho,V,Cx,position) + ...
    gravite(position) ...
    );
end