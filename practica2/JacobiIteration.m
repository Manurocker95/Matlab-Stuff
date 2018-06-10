function [ xik ] = JacobiIteration( A, b,xik_1)
%UNTITLED6 Summary of this function goes here
%Practica 2 Resolución Numérica de Sistemas Lineales
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 


    %b=[12,2,1,3]'
    %A=[5,2,-1,1 ; 1,7,3,-1 ; -1,4,9,2 ; 1,-1,1,4]
    %xik_1=zeros(1,4)
    xik=zeros(1,length(xik_1));
    
    
    for i=1:length(xik)
        xik(i)=b(i);
        for j=1:length(xik)
            if i ~= j %isequaln(i,j)
                xik(i)=xik(i)-xik_1(j)*A(i,j);
            end
        end
        xik(i)=xik(i)/A(i,i);
    end

    %xik = xik./diag(A)';
    
    
end

