clear;
clc;

%%Determinação do sistema linear na forma matricial
X = [48 -40;1 -5];
Y = [300;11.25];
I = X\Y;
i1  = I(1);
i2  = I(2);

disp('CORRENTES NAS MALHAS');
fprintf('i1....= %.2f A',i1);
fprintf('\ni2.....= %.2f A\n',i2);

disp('DDP NOS PONTOS *a* E *b*');
v1 = 8 * i1;
v2 = 10 *i2;
V_th = v1 +v2;
fprintf('V1....= %.2f V',v1);
fprintf('\nV2.....= %.2f V\n\n',v2);
disp('Logo:');
fprintf('V_th = %.2f V\n',V_th);

%%Determinação do sistema linear na forma matricial para encontra I_cc
X = [48 -40 -8;-40 200 -10;-8 -10 18];
Y = [300;-450;0];
I = X\Y;
i1  = I(1);
i2  = I(2);
icc = I(3);
R_th = V_th/icc;
disp('Logo:');
fprintf('i_cc = %.2f A\n',icc);
fprintf('R_th = %.2f Ohm\n',R_th);

