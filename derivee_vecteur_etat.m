function [ X_point ] = derivee_vecteur_etat( temps, X )
% derivee du vecteur d'etat
%
% Argument
%   - X : vecteur d'�tat (vecteur 7)
%   - U : vecteur de commande

% extraction des �l�ments du vecteur d'�tat
position = X(1:3)
vitesse = X(4:6)
m = X(7)

% cr�ation du vecteur X_point
X_point = [0;0;0;0;0;0;0];

% extraction des �l�ments du vecteur de commande
q = 100;
Isp = 300;
surface_reference = 1;
Cx = 0.2;

% calcul de la d�riv�e du vecteur d'�tat
X_point(1:3) = vitesse;
X_point(4:6) = 1/m * force_totale(q,Isp,surface_reference,vitesse,Cx,position,temps);
X_point(7) = -q

end

