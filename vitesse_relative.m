function [v] = vitesse_relative(position, vitesse_absolue)
% Donne la vitesse (vecteur 3) par rapport à la Terre dans un repère
% inertiel quelconque
% Arguments :
%   - position (vecteur 3) : position en cartésiennes dans un repère
%   géocentrique inertiel
%   - vitesse_absolue (vecteur 3) : vitesse en cartésiennes dans un repère
%   inertiel quelconque
global vitesse_rotation_terre;
omega = [ 0 ; 0 ; vitesse_rotation_terre];
v = vitesse_absolue - cross(omega , position);
end