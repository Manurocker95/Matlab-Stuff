function [ Integral ] = milne( f,a,b)
%milne This function applies the milne method to the function f in the intervalel (a,b)
%Practica 1 Integraci�n Num�rica
%Micah Paul Davis, Manuel Rodr�guez Matesanz and Andr�s Casado Elvira
%Enero de 2018 


x= linspace(a,b,5); %n=5  equal distant values between a and b.

ci=[7,32,12,32,7];
values=arrayfun(f,x);
Integral=(b-a)/90 * sum(ci.*values);  %  .* = producto elemento a elemento
end

