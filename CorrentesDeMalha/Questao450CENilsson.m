clear;
clc;
%%Determinação do sistema linear na forma matricial
X = [-75 35 150;4.3 -3.3 -1;85 -25 -50];
Y = [0;0;200];
I = X\Y;
i1  = I(1);
i2  = I(2);
i3  = I(3);

i_a  = i2;
i_b  = i1;
i_c  = i3;
i_d  = i1 - i2;
i_e  = i1 - i3;

V0 = 25*i_d - 10*i_a;

fprintf('\ni1....= %.2f A\n',i1);
fprintf('\ni2.....= %.2f A\n',i2);
fprintf('\ni3....= %.2f A\n',i3);
fprintf('\n\ni_a.....= %.2f A\n',i_a);
fprintf('\ni_b....= %.2f A\n',i_b);
fprintf('\ni_c.....= %.2f A\n',i_c);
fprintf('\ni_d....= %.2f A\n',i_d);
fprintf('\ni_e.....= %.2f A\n',i_e);
fprintf('\nV0.....= %.2f V\n',V0);


%%somatorio das potencias

Pot_dissipada = i_a^2 * 10 + i_b^2 * 10 + i_c^2 * 100 + i_d^2 * 25 + i_e^2 * 50;
Pot_gerada = i_b * 200 + 4.3*i_d*V0 ;
fprintf('\nPotência total dissipada = %.2f W\n',Pot_dissipada);
fprintf('\nPotência total gerada    = %.2f W\n',Pot_gerada);
 
