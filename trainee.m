function [ trainee ] = trainee( surface_de_reference, masse_volumique, vitesse, Cx, position )
% Donne le vecteur trainee (vecteur 3) dans le repere inertiel de référence
% Arguments : 
%   - surface_de_reference (scalaire) du lanceur
%   - masse volumique (scalaire)
%   - vitesse (vecteur 3) dans le repère inertiel de référence
%   - Cx (scalaire), coefficient de trainee
%   - position (vecteur 3) dans le repère inertiel géocentrique de
%   référence
vitesse_ref_terrestre = vitesse_relative(position, vitesse);
trainee = -0.5 * masse_volumique * surface_de_reference * Cx * norm(vitesse_ref_terrestre) * vitesse_ref_terrestre;


end

