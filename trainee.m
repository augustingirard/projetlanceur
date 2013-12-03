function [ trainee ] = trainee( surface_de_reference, masse_volumique, vitesse, Cx, position )
% Donne le vecteur trainee (vecteur 3) dans le repere inertiel de r�f�rence
% Arguments : 
%   - surface_de_reference (scalaire) du lanceur
%   - masse volumique (scalaire)
%   - vitesse (vecteur 3) dans le rep�re inertiel de r�f�rence
%   - Cx (scalaire), coefficient de trainee
%   - position (vecteur 3) dans le rep�re inertiel g�ocentrique de
%   r�f�rence
vitesse_ref_terrestre = vitesse_relative(position, vitesse);
trainee = -0.5 * masse_volumique * surface_de_reference * Cx * norm(vitesse_ref_terrestre) * vitesse_ref_terrestre;


end

