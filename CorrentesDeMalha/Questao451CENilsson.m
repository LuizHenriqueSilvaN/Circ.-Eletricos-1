clear;
clc;

%%Determinação do sistema linear na forma matricial
X = [50 35 -45;4 -1 0;-10 -20 45];
Y = [1050;90;0];
I = X\Y;
i1  = 30;
i2  = I(1);
i3  = I(2);
i4  = I(3);

%%Corrente nos ramos
i_a  = i1 - i2;
i_b  = i4 - i2;
i_c  = i4 - i3;
i_d  = i3;
i_e  = i_c + i_d;

%%Tensão nas fonte de corrente
V_30a = 40*i_a;
V_3ia = 40*i_a + 10*i_b;

%%show
disp('CORRENTES NAS MALHAS');
fprintf('i1....= %.2f A',i1);
fprintf('\ni2.....= %.2f A',i2);
fprintf('\ni3....= %.2f A',i3);
fprintf('\ni4....= %.2f A\n\n',i4);
disp('CORRENTES NOS RAMOS');
fprintf('i_a.....= %.2f A',i_a);
fprintf('\ni_b....= %.2f A',i_b);
fprintf('\ni_c.....= %.2f A',i_c);
fprintf('\ni_d....= %.2f A',i_d);
fprintf('\ni_e.....= %.2f A\n\n',i_e);
disp('TENSÕES NAS FONTES DE CORRENTE');
fprintf('V_30a.....= %.2f V',V_30a);
fprintf('\nV_3ia.....= %.2f V\n\n',V_3ia);


%%somatorio das potencias
P_30a = -V_30a *(i1);
P_3ia = V_3ia * (3*i_a);
P_15id= 15*i_d*i_e;
P_150 = 150*i_d; 
disp('POTENCIA DE CADA FONTE');
fprintf('P_30a = %.2f W',P_30a);
fprintf('\nP_3ia = %.2f W',P_3ia);
fprintf('\nP_15id = %.2f W',P_15id);
fprintf('\nP_150 = %.2f W\n',P_150);


Pot_dissipada = i_a^2 * 40 + i_b^2 * 10 + i_c^2 * 35;
Pot_gerada =P_30a + P_3ia + P_15id + P_150 ;
fprintf('\nPotência total dissipada = %.2f W\n',Pot_dissipada);
fprintf('\nPotência total gerada    = %.2f W\n',Pot_gerada);
 
