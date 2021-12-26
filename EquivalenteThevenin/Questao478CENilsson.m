clear;
clc;

%%Determinação do sistema linear na forma matricial
X = [-127/50 5/2;6/125 -8/25];
Y = [0;0];
v = X\Y;
v1  = v(1);
v2  = v(2);

disp('CORRENTES NOS RAMOS:');
i1 = (-v2)/50;
i2 = ((v2/5)+(13*v1)/250);
i3 = (v2-v1)/10;
ix = (v1)/25;
fprintf('i1......= %.2f A',i1);
fprintf('\ni2......= %.2f A',i2);
fprintf('\ni3......= %.2f A',i3);
fprintf('\nix......= %.2f A\n\n',ix);



disp('DDP NOS PONTOS *a* E *b*');
V_th = v1;
disp('Logo:');
fprintf('V_th = %.2f V\n',V_th);

%%Determinação do sistema linear na forma matricial para encontra I_cc
X = [55 -11 0;-5 36.5 -25;0 -25 37];
Y = [0;0;0];
I = X\Y;
i1  = I(1);
ix  = I(2);
icc = I(3);
R_th = V_th/icc;
disp('Logo:');
fprintf('i_cc = %.2f A\n',icc);
fprintf('R_th = %.2f Ohm\n',R_th);
