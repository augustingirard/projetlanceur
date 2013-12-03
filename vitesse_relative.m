function [v] = vitesse_relative(position, vitesse_absolue)
% Donne la vitesse (vecteur 3) par rapport � la Terre dans un rep�re
% inertiel quelconque
% Arguments :
%   - position (vecteur 3) : position en cart�siennes dans un rep�re
%   g�ocentrique inertiel
%   - vitesse_absolue (vecteur 3) : vitesse en cart�siennes dans un rep�re
%   inertiel quelconque
global vitesse_rotation_terre;
omega = [ 0 ; 0 ; vitesse_rotation_terre];
v = vitesse_absolue - cross(omega , position);
end