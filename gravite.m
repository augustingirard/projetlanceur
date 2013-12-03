function [g] = gravite(position)
% Donne le champ gravitationel (vecteur) en un point, dans le repère
% géocentrique inertiel de référence.
% Arguments :
%   - position : vecteur position en cartésiennes X Y Z dans le repère
%   géocentrique inertiel de référence
global mu;
global CJ;
r = norm(position,2);
A = mu + 3 * CJ / r^2 * (1 - 5 * position(3) * position(3) /r / r);
g = [-position(1) / r^3 * A; ...
    - position(2) / r^3 * A ; ...
    -position(3) / r^3 * A - 6 * CJ * position(3) / r^5];
end
