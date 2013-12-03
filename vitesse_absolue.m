function [ vitesse_absolue ] = vitesse_absolue( position, vitesse_terrestre )
% Donne la vitesse (vecteur 3) absolue dans le repère inertiel géocentrique de
% référence
% Arguments :
%   - position (vecteur 3) : position en cartésiennes dans le repère
%   géocentrique inertiel de référence
%   - vitesse_terrestre (vecteur 3) : vitesse par rapport à la Terre exprimée
%   en cartésiennes dans un repère inertiel quelconque
% Note : une vitesse est dite absolue si elle est exprimée par rapport au
% centre du repère en question
global vitesse_rotation_terre;
omega = [ 0 , 0 , vitesse_rotation_terre];
vitesse_absolue = vitesse_terrestre + cross(omega , position);
end

