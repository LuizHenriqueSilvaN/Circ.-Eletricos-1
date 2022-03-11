clear;
clc;
fprintf('\nResolução da questão 1 da lista 3 de circuitos elétricos 1\n\n')
%Resolução da questão 1 da lista 3 de circuitos elétricos 1
% valores determinados pelo problema:
% i_L1(0) = i_L2(0) = i_L3(0) =  0
% valores da indutâncias
% Determinação dos valores de x, y  e z, final da matricula + 1:
M = [8 1 4]; 
x = M(1)+1;
y = M(2)+1;
z = M(3)+1;

L1 = 4.*10.^-3; 
L2 = 1.*10.^-3;
L3 = 5.*10.^-3;
%variaveis simbólicas
syms t ;

v1 = -0.05.*x.*exp(-x.*t);
v2 = -0.02.*y.*exp(-y.*t).*cos(20.*t);
v3 = 0.01.*z.*exp(-z.*t);

%determinação das tensões em cada Indutor
vL1 = -v1 + (L1/(L3+L2)).*v2 - v3;
vL2 = 0 + v2 - v3;
vL3 = -v1 - (L3/(L1+L3)).*v2;

%Determinação da corrente em cada indutor

int_vL1 = int(vL1,[0 t]);
int_vL2 = int(vL2,[0 t]);
int_vL3 = int(vL3,[0 t]);

%%%%%Letra A%%%%%%%%%
fprintf('\nLetra A: Correntes nos indutores L1, L2 e L3\n')
iL1 = (L1.^-1).*int_vL1;
iL2 = (L2.^-1).*int_vL2;
iL3 = (L3.^-1).*int_vL3;


%%%%%Letra B%%%%%%%%%
fprintf('\n\nLetra B: Potência nos indutores L1, L2 e L3\n')
pL1 = vL1.*iL1;
pL2 = vL2.*iL2;
pL3 = vL3.*iL3;

%%%%%Letra C%%%%%%%%%
fprintf('\n\nLetra C: Potência Máxima nos indutores L1, L2 e L3\n')
diff_pL1 = diff(pL1);
diff_pL2 = diff(pL2);
diff_pL3 = diff(pL3);
f = fsolve(diff_pL1,0.1)


% pMaxL1 = 
% pMaxL2 = 
% pMaxL3 = 

%%plot das correntes 
t = 0:0.005:2;
iL1aux = (5.*exp(-5.*t))/2 - (25.*exp(-9.*t))/2 + (10*exp(-2.*t).*(cos(20.*t) - 10.*sin(20.*t)))/303 + 3020/303;
iL2aux = 10.*exp(-5.*t) + (20.*exp(-2.*t).*(cos(20.*t) - 10.*sin(20.*t)))/101 - 1030/101;
iL3aux = 9110/909 - (20.*exp(-2.*t).*(cos(20.*t) - 10.*sin(20.*t)))/909 - 10.*exp(-9.*t);

subplot(331)
p1 = plot(t,iL1aux,'red');
title( 'Corrente no Indutor 1' )
xlabel( 't(s)' )
ylabel( 'iL1(t) [A]' )
p1.LineWidth = 1.5;
subplot(332)
p2 = plot(t,iL2aux,'blue');
title( 'Corrente no Indutor 2' )
xlabel( 't(s)' )
ylabel( 'iL2(t) [A]' )
p2.LineWidth = 1.5;
subplot(333)
p3 = plot(t,iL3aux,'green');
title( 'Corrente no Indutor 3' )
xlabel( 't(s)' )
ylabel( 'iL3(t) [A]' )
p3.LineWidth = 1.5;

%plot das tensões
v1 = -0.05.*x.*exp(-x.*t);
v2 = -0.02.*y.*exp(-y.*t).*cos(20.*t);
v3 = 0.01.*z.*exp(-z.*t);
vL1aux = -v1 + (L1/(L3+L2)).*v2 - v3;
vL2aux = 0 + v2 - v3;
vL3aux = -v1 - (L3/(L1+L3)).*v2;

subplot(334)
p1 = plot(t,vL1aux,'red');
title( 'Tensão no Indutor 1' )
xlabel( 't(s)' )
ylabel( 'VL1(t) [V]' )
p1.LineWidth = 1.5;
subplot(335)
p2 = plot(t,vL2aux,'blue');
title( 'Tensão no Indutor 2' )
xlabel( 't(s)' )
ylabel( 'VL2(t) [V]' )
p2.LineWidth = 1.5;
subplot(336)
p3 = plot(t,vL3aux,'green');
title( 'Tensão no Indutor 3' )
xlabel( 't(s)' )
ylabel( 'VL3(t) [V]' )
p3.LineWidth = 1.5;

%plot das potencias
pL1aux = -(exp(-5.*t)/20 - (9.*exp(-9.*t))/20 + (2.*cos(20.*t).*exp(-2.*t))/75).*((5.*exp(-5.*t))/2 - (25.*exp(-9.*t))/2 + (10.*exp(-2.*t).*(cos(20.*t) - 10.*sin(20.*t)))/303 + 3020/303);
pL2aux = -(exp(-5.*t)/20 + (cos(20.*t).*exp(-2.*t))/25).*(10.*exp(-5.*t) + (20.*exp(-2.*t).*(cos(20.*t) - 10.*sin(20.*t)))/101 - 1030/101);
pL3aux = -((9.*exp(-9.*t))/20 + (cos(20.*t).*exp(-2.*t))/45).*(10.*exp(-9.*t) + (20.*exp(-2.*t).*(cos(20.*t) - 10.*sin(20.*t)))/909 - 9110/909);

subplot(337)
p1 = plot(t,pL1aux,'red');
title( 'Potência no Indutor 1' )
xlabel( 't(s)' )
ylabel( 'pL1(t) [W]' )
p1.LineWidth = 1.5;
subplot(338)
p2 = plot(t,pL2aux,'blue');
title( 'Potência no Indutor 2' )
xlabel( 't(s)' )
ylabel( 'pL2(t) [W]' )
p2.LineWidth = 1.5;
subplot(339)
p3 = plot(t,pL3aux,'green');
title( 'Potência no Indutor 3' )
xlabel( 't(s)' )
ylabel( 'pL3(t) [W]' )
p3.LineWidth = 1.5;

