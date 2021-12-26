clear;
clc;
%%Circuitos Eletricos 1
disp('Resolucao do problema 4.29 - Nilsson')
%%Resolucao do problema 4.29 - Nilsson 

disp('Sistema linear na forma matricial:')
X = [-44 270 -21;0 -51 10;1 -7/8 -1];
Y = [4200;-800;0];
V = X\Y;

%% determinando os valores de tensão
v1 = V(1);
v2 = 20;
v3 = V(2);
v4 = V(3);
v_delta = v2 - v3;

%% determinando os valores das correntes
i1 = -v1/20;
i2 = (v2-v1)/2;
i3 = i1+i2;
i4 = (v2 - v3); 
i5 = i2+i4;
i6 = (v4-v3)/4;
i7 = (v4)/80;
i_phi = (v3)/40; 

print("Valores de tensão\n");
print("\nV1 = %.2f",v1);
print("\nV2 = %.2f",v2);
print("\nV3 = %.2f",v3);
print("\nV4 = %.2f",v4);
print("\nV_delta = %.2f",v_delta);

print("\n-----");

print("\nValores das Correntes\n");
print("\nI1 = %.2f",i1);
print("\nI2 = %.2f",i2);
print("\nI3 = %.2f",i3);
print("\nI4 = %.2f",i4);
print("\nI5 = %.2f",i5);
print("\nI6 = %.2f",i6);
print("\nI7 = %.2f",i7);
print("\nI_phi = %.2f",i_phi);


print("\n-----");

%%calculo de potencias
print("\nPotência desenvolvida pela fonte de 20V:\n")
print("P_20v = %.2f",i5*20)

Pf = i5*20 - (v1-v4)*i3 + abs(v4)*3.125*abs(v_delta);%potencia fornecida
Pc = (i1^2 * 20)+ (i2^2 * 2) +  (i4^2 *1) + (i_phi^2 * 40) + (i6^2 * 4) + (i7^2 *80) ;%potencia consumida

print("\nPf = %.2f",Pf)
print("\nPc = %.2f",Pc);

if floor(abs(Pf - Pc)) ~= 0
  print('\n\nPOTENCIA FORNECIDA DIFERENTE DA POTENCIA CONSUMIDA\n');
else
  print('\n\nPOTENCIA FORNECIDA IGUAL A POTENCIA CONSUMIDA\n');
end


