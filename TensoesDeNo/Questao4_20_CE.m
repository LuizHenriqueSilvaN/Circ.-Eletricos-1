clear;
clc;
%%Circuitos Eletricos 1
disp('Resolucao do problema 4.20 - Nilsson')
%%Resolucao do problema 4.20 - Nilsson 

%%sistema linear na forma matricial:
X = [4 -3;5 -10];
Y = [75;0];
V = X\Y;

%% determinando os valores de tensão
v1 = V(1);
v2 = V(2);

%% determinando os valores das correntes
i_delta  = (v1-v2)/5;
i1  = v1/15;
i2  = v2/30;
i3  = v2/10;
i4  = v1/30; 

printf("Valores de tensão\n");
printf("\nV1 = %.2f",v1);
printf("\nV2 = %.2f",v2);

printf("\n-----");
printf("\nValores das Correntes\n");
printf("\nI_delta = %.2f",i_delta);
printf("\nI1 = %.2f",i1);
printf("\nI2 = %.2f",i2);
printf("\nI3 = %.2f",i3);
printf("\nI4 = %.2f",i4);


printf("\n-----");

%%calculo de potencias
Pf = v1*5 + (5*i_delta);%potencia fornecida
Pc = (i_delta^2 * 5)+(i1^2 * 15) + i2^2 * 30 + i3^2 * 10 + i4^2 *30 ;%potencia consumida


printf("\nPf = %.2f",Pf)
printf("\nPc = %.2f",Pc)

if floor(abs(Pf - Pc))~= 0
  printf('\n\nPOTENCIA FORNECIDA DIFERENTE DA POTENCIA CONSUMIDA\n')
else
  printf('\n\nPOTENCIA FORNECIDA IGUAL A POTENCIA CONSUMIDA\n')
end