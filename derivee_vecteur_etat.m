function [ X_point ] = derivee_vecteur_etat( temps, X )
% derivee du vecteur d'etat
%
% Argument
%   - X : vecteur d'état (vecteur 7)
%   - U : vecteur de commande

% extraction des éléments du vecteur d'état
position = X(1:3)
vitesse = X(4:6)
m = X(7)

% création du vecteur X_point
X_point = [0;0;0;0;0;0;0];

% extraction des éléments du vecteur de commande
q = 100;
Isp = 300;
surface_reference = 1;
Cx = 0.2;

% calcul de la dérivée du vecteur d'état
X_point(1:3) = vitesse;
X_point(4:6) = 1/m * force_totale(q,Isp,surface_reference,vitesse,Cx,position,temps);
X_point(7) = -q

end

