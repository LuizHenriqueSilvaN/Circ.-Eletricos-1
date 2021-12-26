clear;
clc;
%%Circuitos Eletricos 1
disp('Resolucao do problema 4.11 - Nilsson')
%%Resolucao do problema 4.11 - Nilsson 

%%sistema linear na forma matricial:
X = [(1+1/6 +1/24) (-1/6) (-1/24);-1/6 (1/6 + 0.5 + 1/12) -1/12;-1/24  -1/12 (1+1/12 + 1/24)];
Y = [125;0;-125];
V = X\Y;

%% determinando os valores de tensão
v1 = V(1);
v2 = V(2);
v3 = V(3);
%% determinando os valores das correntes
i1  = 125 - v1;
i2  = v2/2;
i3  = 125 + v3;
i4  = (v1-v2)/6;
i5  = (v2-v3)/12;
i6  = (v1-v3)/24;

printf("Valores de tensão\n");
printf("\nV1 = %.2f",v1);
printf("\nV2 = %.2f",v2);
printf("\nV2 = %.2f",v3);
printf("\n-----");
printf("\nValores das Correntes\n");
printf("\nI1 = %.2f",i1);
printf("\nI2 = %.2f",i2);
printf("\nI3 = %.2f",i3);
printf("\nI4 = %.2f",i4);
printf("\nI5 = %.2f",i5);
printf("\nI6 = %.2f",i6);
printf("\n-----");

%%calculo de potencias

Pf = 125*i1 + 125*i3;%potencia fornecida
Pc = i1^2 * 1 + i2^2 * 2 + i3^2 * 1 + i4^2 * 6 + i5^2 * 12 + i6^2*24;%potencia consumida

printf("\nPf = %.2f",Pf)
printf("\nPc = %.2f",Pc)

if floor(abs(Pf - Pc)) ~= 0
  printf('\n\nPOTENCIA FORNECIDA DIFERENTE DA POTENCIA CONSUMIDA')
else
  printf('\n\nPOTENCIA FORNECIDA IGUAL A POTENCIA CONSUMIDA')
end