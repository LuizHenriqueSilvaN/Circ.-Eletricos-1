clear;
clc;

%%Determinação do sistema linear na forma matricial
X = [30 -5 -25;-30 25 95;0 -1 1];
Y = [9;0;1.8];
I = X\Y;
i1  = I(1);
i2  = I(2);
i3  = I(3);

disp('CORRENTES NAS MALHAS');
fprintf('i1....= %.2f A',i1);
fprintf('\ni2.....= %.2f A\n',i2);
fprintf('i3.....= %.2f A\n',i3);

disp('DDP NOS PONTOS *a* E *b*');
V_th = i3*60;
disp('Logo:');
fprintf('V_th = %.2f V\n',V_th);


icc = i2+1.8;
R_th = V_th/icc;
disp('Logo:');
fprintf('i_cc = %.2f A\n',icc);
fprintf('R_th = %.2f Ohm\n',R_th);


