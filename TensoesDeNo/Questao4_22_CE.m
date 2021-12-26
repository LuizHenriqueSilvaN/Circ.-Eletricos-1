clear;
clc;
%%Circuitos Eletricos 1
printf('Resolucao do problema 4.20 - Nilsson\n\n');
%%Resolucao do problema 4.20 - Nilsson 
%%sistema linear na forma matricial:
X = [1 0 -1;-28 15 -41/6;1/5 -11/35 1/70];
Y = [80;0;0];
V = X\Y;

%% determinando os valores de tensão
v1 = V(1);
v2 = V(2);
v3 = V(3);

%% determinando os valores das correntes
i_zero  = v2/10;
%i1  = v1/15;
i2  = (v1 - v2)/5;
i3  = v1/5;
i4  = (v2 - v3)/70; 
i5  = -v3/12;

printf("Valores de tensão\n");
printf("\nV1 = %.2f",v1);
printf("\nV2 = %.2f",v2);
printf("\nV3 = %.2f",v3);
printf("\n-----");
printf("\nValores das Correntes\n");
printf("\nI_zero = %.2f",i_zero);
%printf("\nI1 = %.2f",i1);
printf("\nI2 = %.2f",i2);
printf("\nI3 = %.2f",i3);
printf("\nI4 = %.2f",i4);
printf("\nI5 = %.2f",i5);


printf("\n-----");

%%calculo de potencias
printf("\nPotências");
Pf = (i4+i5)*80;%potencia fornecida
Pc = (i_zero^2 * 10)+ i2^2 * 5 + i3^2 * 5 + i4^2 *70 + i5^2 * 12 ;%potencia consumida

printf("\nPf = %.2f",Pf)
printf("\nPc = %.2f",Pc)

if floor(abs(Pf - Pc)) ~= 0
  printf('\n\nPOTENCIA FORNECIDA DIFERENTE DA POTENCIA CONSUMIDA\n')
else
  printf('\n\nPOTENCIA FORNECIDA IGUAL A POTENCIA CONSUMIDA\n')
end