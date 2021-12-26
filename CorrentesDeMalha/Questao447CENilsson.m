clear;
clc;
%%Determinação do sistema linear na forma matricial
X = [5 15;1 -1];
Y = [33;-3];
I = X\Y;
i_alpha = I(1);
i_beta  = I(2);


fprintf('\ni_alpha....= %.2f A\n',i_alpha);
fprintf('\ni_beta.....= %.2f A\n',i_beta);


%%somatorio das potencias


Pot_dissipada = 3*i_alpha^2 + 9*i_beta^2 + 6*i_beta^2 + 2*i_alpha^2 + (-18*i_alpha);
fprintf('\nPotência total dissipada = %.2f W\n',Pot_dissipada);
 


