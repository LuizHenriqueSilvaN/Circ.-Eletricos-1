clear;
clc;
%%Circuitos Eletricos 1
disp('Resolucao do problema 4.41 - Nilsson')
%%Resolucao do problema 4.41 - Nilsson 

disp('Sistema linear na forma matricial:')
X = [64 -40;-20 25];
Y = [432;-212];
I = X\Y;

%% determinando os valores de Correntes nas malhas
i_alpha = I(1);
i_beta = I(2);
i_gama = 12; 

%% determinando os valores das correntes nos ramos
i1 = i_alpha;
i2 = i_alpha-i_beta;
i3 = i_beta;
i4 = i_beta-i_gama; 
i5 = i_alpha-i_gama;
i6 = -i_gama;


fprintf("\n-----");

fprintf("\nValores das Correntes\n");
fprintf("\nI1 = %.2f",i1);
fprintf("\nI2 = %.2f",i2);
fprintf("\nI3 = %.2f",i3);
fprintf("\nI4 = %.2f",i4);
fprintf("\nI5 = %.2f",i5);
fprintf("\nI6 = %.2f",i6);

fprintf("\n-----");

%%calculo de potencias

Pf = i1*600 - i3*400 + (220.28)*i_gama;%potencia fornecida
Pc = (i1^2 * 10)+ (i2^2 * 40) +  (i3^2 * 8) +(i4^2 *2) + (i5^2 * 14) ;%potencia consumida

fprintf("\nPf = %.2f",Pf)
fprintf("\nPc = %.2f",Pc)

if floor(abs(Pf - Pc)) ~= 0
  fprintf('\n\nPOTENCIA FORNECIDA DIFERENTE DA POTENCIA CONSUMIDA\n')
else
  fprintf('\n\nPOTENCIA FORNECIDA IGUAL A POTENCIA CONSUMIDA\n')
end