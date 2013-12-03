function [ vitesse_absolue ] = vitesse_absolue( position, vitesse_terrestre )
% Donne la vitesse (vecteur 3) absolue dans le rep�re inertiel g�ocentrique de
% r�f�rence
% Arguments :
%   - position (vecteur 3) : position en cart�siennes dans le rep�re
%   g�ocentrique inertiel de r�f�rence
%   - vitesse_terrestre (vecteur 3) : vitesse par rapport � la Terre exprim�e
%   en cart�siennes dans un rep�re inertiel quelconque
% Note : une vitesse est dite absolue si elle est exprim�e par rapport au
% centre du rep�re en question
global vitesse_rotation_terre;
omega = [ 0 , 0 , vitesse_rotation_terre];
vitesse_absolue = vitesse_terrestre + cross(omega , position);
end

