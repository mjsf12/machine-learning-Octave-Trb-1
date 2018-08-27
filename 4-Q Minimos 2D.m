clear all;
clc;
L = load("housing_1.txt");
X = L(:,1);
Z = L(:,3);
A = [X X.^0];
%plot(Y,Z,'r.'); hold on;
th = inv(A'*A)*A'*Z
Z_ap = A*th;
%plot(Y,Z_ap,'b');
% Todos os dados
F = [X Z Z_ap];
% Mostrar o Grafico 3d
X1 = linspace(0,10);
Z_reta = th(2) + th(1)*X1;
plot(X1,Z_reta); hold on;
plot(X,Z,'o');
%% Erro  Medio quadratico
e =  Z - Z_ap;
E = sum(e.^2)/length(Z)