clear all;
clc;
%% Carregar o banco
L = load("housing_2.data");
a = L(:,1);
b = L(:,2);
c = L(:,3);
d = L(:,4);
e = L(:,5);
f = L(:,6);
g = L(:,7);
h = L(:,8);
i = L(:,9);
j = L(:,10);
l = L(:,11);
m = L(:,12);
n = L(:,13);
Z = L(:,14)
% Todas as variaveis para comparação
A_a = [a b c d e f g h i j l m n];
A = [A_a a.^0];
%plot(Y,Z,'r.'); hold on;
th = pinv(A)*Z
Z_ap = A*th;
%plot(Y,Z_ap,'b');
Q = [Z Z_ap];

%% Erro  Medio quadratico
e =  Z - Z_ap;
E = sum(e.^2)/length(Z) 

%% Somente Duas Variaveis crim  dis
A = [a h a.^0];
th = pinv(A)*Z
Z_ap = A*th;

%%% Erro  Medio quadratico
e =  Z - Z_ap;
E = sum(e.^2)/length(Z) 

%% Tres Variaveis  crim  dis rad
A = [a h i a.^0];
th = pinv(A)*Z
Z_ap = A*th;

%%% Erro  Medio quadratico
e =  Z - Z_ap;
E = sum(e.^2)/length(Z) 

%% Quatro Variaveis crim  dis rad age
A = [a h i g a.^0];
th = pinv(A)*Z
Z_ap = A*th;

%%% Erro  Medio quadratico
e =  Z - Z_ap;
E = sum(e.^2)/length(Z) 


%% Cinco Variaveis crim dis rad age tax
A = [a h i g j a.^0];
th = pinv(A)*Z
Z_ap = A*th;

%%% Erro  Medio quadratico
e =  Z - Z_ap;
E = sum(e.^2)/length(Z) 


%% Cinco Variaveis crim dis rad age tax
A = [a h i g j a.^0];
th = pinv(A)*Z
Z_ap = A*th;

%%% Erro  Medio quadratico
e =  Z - Z_ap;
E = sum(e.^2)/length(Z) 


%% Cinco Variaveis crim dis rad age tax
A = [f h a.^0];
th = pinv(A)*Z
Z_ap = A*th;

%%% Erro  Medio quadratico
e =  Z - Z_ap;
E = sum(e.^2)/length(Z) 
%%%Resultado
%E =  21.895
%E =  70.654
%E =  68.804
%E =  64.022
%E =  58.617