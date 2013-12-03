% projet lanceur
% Xavier SCHIETTECATTE - Augustin GIRARD
clear all;
format long;
modele_terre;

S_N = 1 ; % section de sortie de la tuyère
p_a = 10^5; % pression en sortie de tuyère

% définition des paramètres initiaux p
position = [0;6380000;0]; % position initiale
vitesse_initiale = [0;0;0]; %vitesse initiale
masse_initiale = 700000; % masse initiale
p = [position(1);position(2);position(3);...
    vitesse_initiale(1);vitesse_initiale(2);vitesse_initiale(3);...
    masse_initiale];

% solution
[TT,XX] = ode45(@derivee_vecteur_etat,[0 2000],p);
figure(1);
plot(TT,XX(:,1:3));
legend('positionX','positionY','positionZ');
figure(2);
plot(TT,XX(:,4:6));
legend('vitesseX','vitesseY','vitesseZ');
figure(3);
plot(TT,XX(:,7));
legend('masse');