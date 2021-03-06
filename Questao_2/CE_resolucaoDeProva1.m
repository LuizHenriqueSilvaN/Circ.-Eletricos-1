clear;
clc;

%%Questão 2 

x = [(9+(9*sqrt(2))) (2*sqrt(3)) 0 (56-(2*sqrt(3))-(9*sqrt(2)));1 -1 0 0;-2 0 1 -2;(-9*sqrt(2)) (-2*sqrt(3)) -5 (9*sqrt(2)+2*sqrt(3)-13)];
y = [0;-0.25;0;-10];
I = x\y;

i_alpha = I(1);
i_beta  = I(2);
i_gama  = I(3);
i_delta = I(4);



disp('>>>>Letra a<<<<');
disp('CORRENTES DE MALHA');
fprintf('\ni_alpha = %.2f A\ni_beta = %.2f A\ni_gama = %.2f A\ni_delta = %.2f A\n\n',i_alpha , i_beta, i_gama,i_delta);

disp('Logo as correntes i_a e i_b, são:');
i_a =  i_alpha;
i_b = (i_gama - i_beta);
fprintf('i_a = %.2f A', i_a);
fprintf('\ni_b = %.2f A\n\n',i_b );


disp('As correntes i_x e i_y identificadas nos ramos, são:');
i_x = (i_alpha -i_delta);
i_y = (i_beta - i_delta);
fprintf('i_x = %.2f A',i_x  );
fprintf('\ni_y = %.2f A\n\n',i_y );

disp('>>>>Letra b<<<<');
disp('Valor da tensão V_s sobre a fonte de corrente dependente:');
V_s = -15*i_gama - 5*(i_gama - i_delta) - 2*i_y;
V_x = -18*i_delta;
V_alpha = 3*V_x - 9*i_alpha + sqrt(2)*9*i_x;
fprintf('V_s = %.2f V\n\nV_x = %.2f V\nV_alpha = %.2f V\n\n', V_s,V_x,V_alpha);

p_3vx = 3*V_x*i_alpha; 
p_valpha = V_alpha*0.25;
p_2iy = 2*i_y*(i_gama - i_beta);
p_2ix = V_s*i_gama;
p_10 = 10*i_delta;


disp('>>>>Letra c<<<<');
disp('Potencias nas fontes');
fprintf('p_3vx = %.2f W -> Fornecendo',p_3vx  );
fprintf('\np_valpha= %.2f W -> Fornecendo',p_valpha );
fprintf('\np_2iy = %.2f W -> Fornecendo',p_2iy  );
fprintf('\np_2ix = %.2f W -> Consumindo',p_2ix );
fprintf('\np_10 = %.2f W -> Consumindo\n',p_10 );

disp('Potencias Fornecida');
p_f =    p_3vx + p_valpha + p_2iy - p_10 - p_2ix;
fprintf('p_f = %.2f W\n',p_f);

disp('Potencias dissipada');
p_dis = 9 * i_a^2 +  sqrt(2)*9*i_x^2 + 2*i_beta^2 + 2*sqrt(3)*i_y^2 + 15*i_gama^2 + 5*(i_gama-i_delta)^2 + 18*i_delta^2;
fprintf('p_dis = %.2f W',p_dis);


fprintf('\n\nPotêcia Fornecida - Potência Consumida = %.2f W\n\n',abs(abs(p_f)-abs(p_dis)));






