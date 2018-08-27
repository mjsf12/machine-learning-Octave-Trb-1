clear all;
clc;
%% Carregar os dados
L = load("housing_1.txt"); 
X = L(:,1);
Y = L(:,3);
Apr = 0.01;
th = [0 ;0]; %% W inicial
A = [X  X.^0]; %% A 
E0 =0
out = 0
%% Loop da interação
for i = 1:100000
  Y_S=A*th;
  Y_out = Y_S - Y;
  C_som = sum(Y_out);
  A_som = sum(Y_out.*X);
  NA = [A_som  C_som];
  NA = NA./length(Y);
  NA = NA*Apr;
  th = th - NA';
endfor
%ver no console
th
e =  Y - Y_S;
E = sum(e.^2)/length(X) 
% Mostrar o Grafico 3d
X11 = linspace(0,7);
y = th(2) +th(1)*X11;
plot(X11,y,'r'); hold on;
plot(X,Y,'o')
