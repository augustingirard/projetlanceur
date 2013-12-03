function [ force_totale ] = force_totale(q,Isp,surface_reference,V,Cx,position,temps)
% Calcule la force totale appliquée sur le lanceur à l'instant t. Renvoie
% un vecteur 3
% Arguments :
%   - q : débit de masse qui sort du moteur
%   - Isp : impulsion spécifique caractérisant le moteur
%   - surface_reference : surface de référence caractéristique du lanceur
%   - rho : masse volumique en la position du lanceur
%   - V : (vecteur 3) vitesse du lanceur dans le référentiel inertiel
%   géocentrique de référence
%   - Cx : coefficient de trainee du lanceur
%   - position : (vecteur 3) position du lanceur dans le référentiel inertiel
%   géocentrique de référence

% calcul de la masse volumique en fonction de l'altitude géodésique
rho = rho_atm_US76(position,temps);

% calcul de la somme des forces (somme de vecteurs)
force_totale = (...
    poussee(q,Isp, position,V)+ ...
    trainee(surface_reference,rho,V,Cx,position) + ...
    gravite(position) ...
    );
end