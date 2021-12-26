clear;
clc;
%%Circuitos Eletricos 1
disp('Resolucao do problema 4.15 - Nilsson')
%%Resolucao do problema 4.15 - Nilsson 

%%sistema linear na forma matricial:
X = [(-1/15 -1/31.25 -1/25) 1/25 0;1/25 (-1/25 -1/50) 1/50;0 1 -2];
Y = [-6;3;50];
V = X\Y;

%% determinando os valores de tensão
v1 = V(1);
v2 = V(2);
v3 = V(3);
%% determinando os valores das correntes
i1  = (30-v1)/15;
i2  = v1/31.25;
i3  = (v1-v2)/25;
i4  = (v2-v3)/50;
i5 = v3/50;

printf("Valores de tensão\n");
printf("\nV1 = %.2f",v1);
printf("\nV2 = %.2f",v2);
printf("\nV3 = %.2f",v3);

printf("\n-----");
printf("\nValores das Correntes\n");
printf("\nI1 = %.2f",i1);
printf("\nI2 = %.2f",i2);
printf("\nI3 = %.2f",i3);
printf("\nI4 = %.2f",i4);
printf("\nI5 = %.2f",i5);

printf("\n-----");

%%calculo de potencias
Pf = 30*i1 + 4*(v1-v2) + 1*(v2-v3);%potencia fornecida
Pc = (i1^2) * 15 + (i2^2) * 31.25 + (i3^2) * 25 + (i4^2) * 50 + (i5^2) * 50;%potencia consumida


printf("\nPf = %.2f",Pf)
printf("\nPc = %.2f",Pc)

if floor(abs(Pf - Pc)) ~= 0
  printf('\n\nPOTENCIA FORNECIDA DIFERENTE DA POTENCIA CONSUMIDA\n')
else
  printf('\n\nPOTENCIA FORNECIDA IGUAL A POTENCIA CONSUMIDA\n')
end