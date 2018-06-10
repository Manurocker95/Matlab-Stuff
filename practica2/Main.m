%% Practica 2 Resolución Numérica de Sistemas Lineales
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 

%% Ejercicio 1 

% Tolerancia
tolerency = 0.001;
% vector b 
% ' pone el vector en traspuesta
b=[7.85 -19.3 71.4]';
%Matriz A
% ; separa por filas la matriz
A=[3 -0.1 -0.2; 0.1 7 -0.3; 0.3 -0.2 10];
% X sub i K -1 es un vector con tantos ceros como b
xik_1=zeros(1,length(b));
% Aplicamos Gauss-Seidel 
xi_GauseSeidel_Exercise1=GaussSeidelCompound(A,b,xik_1,2,tolerency)
% Aplicamos Jacobi ( Matriz, Vector b, Vector xsubi ^k-1 (valores
% anteriores), iteraciones y tolerancia)
xi_Jacobi_Exercise1=JacobiCompound(A,b,xik_1,2,tolerency)

%% Ejercicio 2
% vector b 
b=[12,2,1,3]';
%Matriz A
A=[5,2,-1,1 ; 1,7,3,-1 ; -1,4,9,2 ; 1,-1,1,4];
% X sub i K -1 es un vector con tantos ceros como b
xik_1=zeros(1,length(b));
% Aplicamos Gauss-Seidel 
xi_GauseSeidel_Exercise2=GaussSeidelCompound(A,b,xik_1,1,0.001)
% Aplicamos Jacobi 
xi_Jacobi_Exercise2=JacobiCompound(A,b,xik_1,1,0.001)



