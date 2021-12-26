clear;
clc;
%%Circuitos Eletricos 1
disp('Resolucao do problema 4.12 - Nilsson')
%%Resolucao do problema 4.12 - Nilsson 

%%sistema linear na forma matricial:
X = [29 -1;1 -17];
Y = [2880;-240];
V = X\Y;

%% determinando os valores de tensão
v1 = V(1);
v2 = V(2);

%% determinando os valores das correntes
i1  = 144-v1;
i2  = v1/10;
i3  = (v1-v2)/80;
i4  = v2/5;
i5 = 3;

printf("Valores de tensão\n");
printf("\nV1 = %.2f",v1);
printf("\nV2 = %.2f",v2);

printf("\n-----");
printf("\nValores das Correntes\n");
printf("\nI1 = %.2f",i1);
printf("\nI2 = %.2f",i2);
printf("\nI3 = %.2f",i3);
printf("\nI4 = %.2f",i4);
printf("\nI5 = %.2f",i5);

printf("\n-----");

%%calculo de potencias
Pf = (144*i1) + (3*v2);%potencia fornecida
Pc = (i1^2 * 4) + (i2^2 * 10) + (i3^2 * 80) + (i4^2 * 5);%potencia consumida

printf("\nPf = %.2f",Pf)
printf("\nPc = %.2f",Pc)

if floor(abs(Pf - Pc)) ~= 0
  printf('\n\nPOTENCIA FORNECIDA DIFERENTE DA POTENCIA CONSUMIDA\n')
else
  printf('\n\nPOTENCIA FORNECIDA IGUAL A POTENCIA CONSUMIDA\n')
end