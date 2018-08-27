clear all;
clc;
%% Carregar os dados
L = load("housing_1.txt"); 
X = L(:,1);
X1 = L(:,2);
Y = L(:,3);
Apr = 0.01;
th = [0 ;0;0]; %% W inicial
A = [X X1 X.^0]; %% A 
E0 =0
out = 0
%% Loop da interação
for i = 1:100000
  Y_S=A*th;
  Y_out = Y_S - Y;
  C_som = sum(Y_out);
  B_som = sum(Y_out.*X1);
  A_som = sum(Y_out.*X);
  NA = [A_som  B_som  C_som];
  NA = NA./length(Y);
  NA = NA*Apr;
  th = th - NA';
endfor
%ver no console
O = [Y Y_S]
th
e =  Y - Y_S;
E = sum(e.^2)/length(X) 
X11=X1;%fix feio
% Mostrar o Grafico 3d
X1 = linspace(0,7);
Y1 = linspace(0,7);
[ XX, YY ] = meshgrid(X1,Y1);
Z_plano = th(3) + th(2)*YY +th(1)*XX;
figure;
hold on;
mesh(XX,YY,Z_plano);
plot3(X,X11,Y,'o');
