function [ xik ] = GaussSeidelIteration( A, b, xik_1 )
%UNTITLED8 Summary of this function goes here

%Practica 2 Resolución Numérica de Sistemas Lineales
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 


% x sub i ^k lo creamos como un vector de ceros para ir rellenando después
    xik=zeros(1,length(xik_1));
       
    for i=1:length(xik)
        xik(i)=b(i);
        for j=1:i-1
            xik(i)=xik(i)-xik(j)*A(i,j);
        end
        %temp=i+1:length(xik)
        for j=i+1:length(xik)
            xik(i)=xik(i)-xik_1(j)*A(i,j);
        end
        xik(i)=xik(i)/A(i,i);
    end

    %xik = xik./diag(A)';

end

