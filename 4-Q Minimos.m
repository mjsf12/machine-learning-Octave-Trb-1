clear all;
clc;
L = load("housing_1.txt");
X = L(:,1);
Y = L(:,2);
Z = L(:,3);
A = [X Y X.^0];
%plot(Y,Z,'r.'); hold on;
th = inv(A'*A)*A'*Z
Z_ap = A*th;
%plot(Y,Z_ap,'b');
% Todos os dados
F = [X Y Z Z_ap];
% Mostrar o Grafico 3d
X1 = linspace(0,10);
Y1 = linspace(0,10);
[ XX, YY ] = meshgrid(X1,Y1);
Z_plano = th(3) + th(2)*YY +th(1)*XX;
figure;
hold on;
mesh(XX,YY,Z_plano);
plot3(X,Y,Z,'o');

%% Erro  Medio quadratico
e =  Z - Z_ap;
E = sum(e.^2)/length(Z)