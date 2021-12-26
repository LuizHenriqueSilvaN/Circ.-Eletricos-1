clear;
clc;
%%Determinação do sistema linear na forma matricial
X = [6 5;64 20];
Y = [50;0];
I = X\Y;
i_alpha = I(1);
i_beta  = I(2);
i_gama  = 1.7*2*(-i_alpha);
i_delta = I(2);
v_delta  = i_alpha*2;

fprintf('\ni_alpha....= %.2f A\n',i_alpha);
fprintf('\ni_beta.....= %.2f A\n',i_beta);
fprintf('\ni_gama.....= %.2f A\n',i_gama);
fprintf('\nV_delta....= %.2f v\n',v_delta);

%%somatorio das potencias
P_50v= -50*i_alpha;
P_9idelta = i_delta*9*(i_alpha - i_beta);
P_1_7V1=-(i_beta - i_gama)*20* 1.7 * v_delta;  

fprintf('\nP_50v .....= %.2f W\n',P_50v);
fprintf('\nP_9idelta..= %.2f W\n',P_9idelta);
fprintf('\nP_1_7V1....= %.2f W\n',P_1_7V1);


