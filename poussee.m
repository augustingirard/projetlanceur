function [ poussee ] = poussee( q,Isp,position, vitesse)
% Poussée d'un moteur
% 
% Arguments :
%   q : débit de masse sortant du moteur (metre seconde-2
%   Isp : Impulsion spécifique (seconde)
%
vitesse_ref_terrestre = vitesse_relative(position, vitesse);
poussee = 9.80665 * q * Isp / norm(vitesse_ref_terrestre) * vitesse_ref_terrestre;

end

