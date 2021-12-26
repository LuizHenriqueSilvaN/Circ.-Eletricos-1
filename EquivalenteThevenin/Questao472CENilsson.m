clear;
clc;

%%Determinação do sistema linear na forma matricial
X = [5 -4 -60;-5 16 65;0 -4 15];
Y = [0;0;400];
v = X\Y;
v1  = v(1);
v2  = v(2);
v3  = v(3);

disp('CORRENTES NOS RAMOS:');
i1 = (40-v3)/2000;
i2 = (v3 -v2)/5000;
i3 = (v2)/50000;
i4 = (v2 - v1)/10000;
i5 = (v1)/40000;
i_delta = (v3)/20000;
fprintf('i1......= %.2f A',i1);
fprintf('\ni2......= %.2f A',i2);
fprintf('\ni3......= %.2f A',i3);
fprintf('\ni4......= %.2f A',i4);
fprintf('\ni5......= %.2f A',i5);
fprintf('\ni_delta.= %.2f A\n\n',i_delta)


disp('DDP NOS PONTOS *a* E *b*');
V_th = i5*40000;
disp('Logo:');
fprintf('V_th = %.2f V\n',V_th);

%%Determinação do sistema linear na forma matricial para encontra I_cc
X = [22 -20 0;-20 75 -50;-300 250 60];
Y = [0.04;0;0];
I = X\Y;
i1  = I(1);
i2  = I(2);
icc = I(3);
R_th = V_th/icc;
disp('Logo:');
fprintf('i_cc = %.2f A\n',icc);
fprintf('R_th = %.2f Ohm\n',R_th);
